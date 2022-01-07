; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_simple_txnext.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_simple_txnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { %struct.j1939_priv* }
%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@J1939_SIMPLE_ECHO_TIMEOUT_MS = common dso_local global i32 0, align 4
@J1939_ERRQUEUE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_session*)* @j1939_simple_txnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_simple_txnext(%struct.j1939_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.j1939_session*, align 8
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.j1939_session* %0, %struct.j1939_session** %3, align 8
  %8 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %9 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %8, i32 0, i32 0
  %10 = load %struct.j1939_priv*, %struct.j1939_priv** %9, align 8
  store %struct.j1939_priv* %10, %struct.j1939_priv** %4, align 8
  %11 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %12 = call %struct.sk_buff* @j1939_session_skb_find(%struct.j1939_session* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @can_skb_set_owner(%struct.sk_buff* %26, i32 %29)
  %31 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %32 = load i32, i32* @J1939_SIMPLE_ECHO_TIMEOUT_MS, align 4
  %33 = call i32 @j1939_tp_set_rxtimeout(%struct.j1939_session* %31, i32 %32)
  %34 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @j1939_send_one(%struct.j1939_priv* %34, %struct.sk_buff* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %25
  %42 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %43 = load i32, i32* @J1939_ERRQUEUE_SCHED, align 4
  %44 = call i32 @j1939_sk_errqueue(%struct.j1939_session* %42, i32 %43)
  %45 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %46 = call i32 @j1939_sk_queue_activate_next(%struct.j1939_session* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %39, %22, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @j1939_session_skb_find(%struct.j1939_session*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @can_skb_set_owner(%struct.sk_buff*, i32) #1

declare dso_local i32 @j1939_tp_set_rxtimeout(%struct.j1939_session*, i32) #1

declare dso_local i32 @j1939_send_one(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i32 @j1939_sk_errqueue(%struct.j1939_session*, i32) #1

declare dso_local i32 @j1939_sk_queue_activate_next(%struct.j1939_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
