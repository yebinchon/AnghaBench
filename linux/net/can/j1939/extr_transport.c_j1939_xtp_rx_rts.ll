; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_rx_rts.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_rx_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i64* }
%struct.j1939_sk_buff_cb = type { i32 }
%struct.j1939_session = type { i32, i64 }

@J1939_TP_CMD_BAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_priv*, %struct.sk_buff*, i32)* @j1939_xtp_rx_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_xtp_rx_rts(%struct.j1939_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.j1939_sk_buff_cb*, align 8
  %8 = alloca %struct.j1939_session*, align 8
  %9 = alloca i64, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %10)
  store %struct.j1939_sk_buff_cb* %11, %struct.j1939_sk_buff_cb** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %18 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %19 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.j1939_session* @j1939_session_get_by_addr(%struct.j1939_priv* %17, i32* %19, i32 0, i32 %20)
  store %struct.j1939_session* %21, %struct.j1939_session** %8, align 8
  %22 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %23 = icmp ne %struct.j1939_session* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %67

28:                                               ; preds = %24
  %29 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.j1939_session* @j1939_xtp_rx_rts_session_new(%struct.j1939_priv* %29, %struct.sk_buff* %30)
  store %struct.j1939_session* %31, %struct.j1939_session** %8, align 8
  %32 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %33 = icmp ne %struct.j1939_session* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %67

35:                                               ; preds = %28
  br label %45

36:                                               ; preds = %3
  %37 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @j1939_xtp_rx_rts_session_active(%struct.j1939_session* %37, %struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %43 = call i32 @j1939_session_put(%struct.j1939_session* %42)
  br label %67

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %48 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %50 = call i32 @j1939_tp_set_rxtimeout(%struct.j1939_session* %49, i32 1250)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @J1939_TP_CMD_BAM, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %56 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %61 = call i32 @j1939_session_txtimer_cancel(%struct.j1939_session* %60)
  %62 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %63 = call i32 @j1939_tp_schedule_txtimer(%struct.j1939_session* %62, i32 0)
  br label %64

64:                                               ; preds = %59, %54, %45
  %65 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %66 = call i32 @j1939_session_put(%struct.j1939_session* %65)
  br label %67

67:                                               ; preds = %64, %41, %34, %27
  ret void
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local %struct.j1939_session* @j1939_session_get_by_addr(%struct.j1939_priv*, i32*, i32, i32) #1

declare dso_local %struct.j1939_session* @j1939_xtp_rx_rts_session_new(%struct.j1939_priv*, %struct.sk_buff*) #1

declare dso_local i64 @j1939_xtp_rx_rts_session_active(%struct.j1939_session*, %struct.sk_buff*) #1

declare dso_local i32 @j1939_session_put(%struct.j1939_session*) #1

declare dso_local i32 @j1939_tp_set_rxtimeout(%struct.j1939_session*, i32) #1

declare dso_local i32 @j1939_session_txtimer_cancel(%struct.j1939_session*) #1

declare dso_local i32 @j1939_tp_schedule_txtimer(%struct.j1939_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
