; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.l2tp_tunnel = type { i32 }

@L2TP_MSG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: received %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2tp_udp_encap_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.l2tp_tunnel* @rcu_dereference_sk_user_data(%struct.sock* %7)
  store %struct.l2tp_tunnel* %8, %struct.l2tp_tunnel** %6, align 8
  %9 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %10 = icmp eq %struct.l2tp_tunnel* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %14 = load i32, i32* @L2TP_MSG_DATA, align 4
  %15 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %16 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @l2tp_dbg(%struct.l2tp_tunnel* %13, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i64 @l2tp_udp_recv_core(%struct.l2tp_tunnel* %22, %struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %28

27:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %26, %11
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.l2tp_tunnel* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @l2tp_dbg(%struct.l2tp_tunnel*, i32, i8*, i32, i32) #1

declare dso_local i64 @l2tp_udp_recv_core(%struct.l2tp_tunnel*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
