; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RX_CALL_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Rx ABORT %%%u { %x }\00", align 1
@RXRPC_CALL_REMOTELY_ABORTED = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*)* @rxrpc_input_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_abort(%struct.rxrpc_call* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rxrpc_skb_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %8)
  store %struct.rxrpc_skb_priv* %9, %struct.rxrpc_skb_priv** %5, align 8
  %10 = load i32, i32* @RX_CALL_DEAD, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i64 @skb_copy_bits(%struct.sk_buff* %17, i32 4, i32* %6, i32 4)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %16, %2
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %25 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @trace_rxrpc_rx_abort(%struct.rxrpc_call* %24, i32 %28, i32 %29)
  %31 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @_proto(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %38 = load i32, i32* @RXRPC_CALL_REMOTELY_ABORTED, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ECONNABORTED, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i64 @rxrpc_set_call_completion(%struct.rxrpc_call* %37, i32 %38, i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %46 = call i32 @rxrpc_notify_socket(%struct.rxrpc_call* %45)
  br label %47

47:                                               ; preds = %44, %23
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @trace_rxrpc_rx_abort(%struct.rxrpc_call*, i32, i32) #1

declare dso_local i32 @_proto(i8*, i32, i32) #1

declare dso_local i64 @rxrpc_set_call_completion(%struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @rxrpc_notify_socket(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
