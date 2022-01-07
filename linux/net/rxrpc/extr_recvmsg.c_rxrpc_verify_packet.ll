; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_verify_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_verify_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, i32)* }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@RXRPC_RX_ANNO_SUBPACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i64, i32, i32)* @rxrpc_verify_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_verify_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxrpc_skb_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %16)
  store %struct.rxrpc_skb_priv* %17, %struct.rxrpc_skb_priv** %11, align 8
  %18 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %19 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %23 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @RXRPC_RX_ANNO_SUBPACKET, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %14, align 8
  %29 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %14, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %5
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub i32 %34, 2
  %36 = call i64 @skb_copy_bits(%struct.sk_buff* %33, i32 %35, i32* %15, i32 2)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @ntohs(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %40, %5
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %50 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, i32)*, i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, i32)** %52, align 8
  %54 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 %53(%struct.rxrpc_call* %54, %struct.sk_buff* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  ret i32 %60
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
