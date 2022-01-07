; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c___br_handle_local_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c___br_handle_local_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_bridge_port = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BR_LEARNING = common dso_local global i32 0, align 4
@BROPT_NO_LL_LEARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @__br_handle_local_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__br_handle_local_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.net_bridge_port* @br_port_get_rcu(i32 %7)
  store %struct.net_bridge_port* %8, %struct.net_bridge_port** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BR_LEARNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %17 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BROPT_NO_LL_LEARN, align 4
  %20 = call i32 @br_opt_get(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call i64 @br_should_learn(%struct.net_bridge_port* %23, %struct.sk_buff* %24, i32* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @br_fdb_update(i32 %30, %struct.net_bridge_port* %31, i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %27, %22, %15, %1
  ret void
}

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(i32) #1

declare dso_local i32 @br_opt_get(i32, i32) #1

declare dso_local i64 @br_should_learn(%struct.net_bridge_port*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @br_fdb_update(i32, %struct.net_bridge_port*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
