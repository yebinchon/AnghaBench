; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_requested_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_requested_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RXRPC_RXTX_BUFF_SIZE = common dso_local global i32 0, align 4
@rxrpc_rtt_rx_requested_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32, i64, i64)* @rxrpc_input_requested_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_requested_ack(%struct.rxrpc_call* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rxrpc_skb_priv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %43, %4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @RXRPC_RXTX_BUFF_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 0
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %22
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %43

28:                                               ; preds = %17
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = call i32 (...) @smp_rmb()
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %33)
  store %struct.rxrpc_skb_priv* %34, %struct.rxrpc_skb_priv** %9, align 8
  %35 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %9, align 8
  %36 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %43

42:                                               ; preds = %28
  br label %47

43:                                               ; preds = %41, %27
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %13

46:                                               ; preds = %13
  br label %55

47:                                               ; preds = %42
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %49 = load i32, i32* @rxrpc_rtt_rx_requested_ack, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @rxrpc_peer_add_rtt(%struct.rxrpc_call* %48, i32 %49, i64 %50, i64 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_peer_add_rtt(%struct.rxrpc_call*, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
