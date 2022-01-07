; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_rx_cts.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_rx_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { i32 }
%struct.j1939_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_priv*, %struct.sk_buff*, i32)* @j1939_xtp_rx_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_xtp_rx_cts(%struct.j1939_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.j1939_sk_buff_cb*, align 8
  %8 = alloca %struct.j1939_session*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %9)
  store %struct.j1939_sk_buff_cb* %10, %struct.j1939_sk_buff_cb** %7, align 8
  %11 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %12 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %7, align 8
  %13 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.j1939_session* @j1939_session_get_by_addr(%struct.j1939_priv* %11, i32* %13, i32 1, i32 %14)
  store %struct.j1939_session* %15, %struct.j1939_session** %8, align 8
  %16 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %17 = icmp ne %struct.j1939_session* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @j1939_xtp_rx_cts_one(%struct.j1939_session* %20, %struct.sk_buff* %21)
  %23 = load %struct.j1939_session*, %struct.j1939_session** %8, align 8
  %24 = call i32 @j1939_session_put(%struct.j1939_session* %23)
  br label %25

25:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local %struct.j1939_session* @j1939_session_get_by_addr(%struct.j1939_priv*, i32*, i32, i32) #1

declare dso_local i32 @j1939_xtp_rx_cts_one(%struct.j1939_session*, %struct.sk_buff*) #1

declare dso_local i32 @j1939_session_put(%struct.j1939_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
