; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_locate_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_locate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*)* }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { i32, i32 }

@RXRPC_RX_ANNO_SUBPACKET = common dso_local global i32 0, align 4
@RXRPC_JUMBO_SUBPKTLEN = common dso_local global i32 0, align 4
@RXRPC_JUMBO_DATALEN = common dso_local global i32 0, align 4
@RXRPC_SKB_INCL_LAST = common dso_local global i32 0, align 4
@RXRPC_RX_ANNO_VERIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*, i32*, i32*)* @rxrpc_locate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_locate_data(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.rxrpc_skb_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %21)
  store %struct.rxrpc_skb_priv* %22, %struct.rxrpc_skb_priv** %14, align 8
  store i32 4, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* @RXRPC_RX_ANNO_SUBPACKET, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = load i32, i32* @RXRPC_JUMBO_SUBPKTLEN, align 4
  %30 = mul i32 %28, %29
  %31 = load i32, i32* %15, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %14, align 8
  %40 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp ult i32 %38, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %6
  %45 = load i32, i32* @RXRPC_JUMBO_DATALEN, align 4
  store i32 %45, i32* %16, align 4
  br label %55

46:                                               ; preds = %6
  %47 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %14, align 8
  %48 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RXRPC_SKB_INCL_LAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %17, align 4
  br label %54

54:                                               ; preds = %53, %46
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @RXRPC_RX_ANNO_VERIFIED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @rxrpc_verify_packet(%struct.rxrpc_call* %61, %struct.sk_buff* %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %7, align 4
  br label %93

71:                                               ; preds = %60
  %72 = load i32, i32* @RXRPC_RX_ANNO_VERIFIED, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %55
  %77 = load i32, i32* %15, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32*, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %84 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*)*, i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32*, i32*)** %86, align 8
  %88 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 %87(%struct.rxrpc_call* %88, %struct.sk_buff* %89, i32* %90, i32* %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %76, %69
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_verify_packet(%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
