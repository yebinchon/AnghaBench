; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_maybe_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_maybe_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }

@BR_MCAST_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_bridge_port* (%struct.net_bridge_port*, %struct.net_bridge_port*, %struct.sk_buff*, i32)* @maybe_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_bridge_port* @maybe_deliver(%struct.net_bridge_port* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = call i32 @br_multicast_igmp_type(%struct.sk_buff* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i32 @should_deliver(%struct.net_bridge_port* %14, %struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  store %struct.net_bridge_port* %19, %struct.net_bridge_port** %5, align 8
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %22 = icmp ne %struct.net_bridge_port* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %35

24:                                               ; preds = %20
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @deliver_clone(%struct.net_bridge_port* %25, %struct.sk_buff* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.net_bridge_port* @ERR_PTR(i32 %32)
  store %struct.net_bridge_port* %33, %struct.net_bridge_port** %5, align 8
  br label %45

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @BR_MCAST_DIR_TX, align 4
  %43 = call i32 @br_multicast_count(i32 %38, %struct.net_bridge_port* %39, %struct.sk_buff* %40, i32 %41, i32 %42)
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  store %struct.net_bridge_port* %44, %struct.net_bridge_port** %5, align 8
  br label %45

45:                                               ; preds = %35, %31, %18
  %46 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  ret %struct.net_bridge_port* %46
}

declare dso_local i32 @br_multicast_igmp_type(%struct.sk_buff*) #1

declare dso_local i32 @should_deliver(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @deliver_clone(%struct.net_bridge_port*, %struct.sk_buff*, i32) #1

declare dso_local %struct.net_bridge_port* @ERR_PTR(i32) #1

declare dso_local i32 @br_multicast_count(i32, %struct.net_bridge_port*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
