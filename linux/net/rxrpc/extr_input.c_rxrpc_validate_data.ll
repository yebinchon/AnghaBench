; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_validate_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_validate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RXRPC_REQUEST_ACK = common dso_local global i32 0, align 4
@RXRPC_JUMBO_PACKET = common dso_local global i32 0, align 4
@RXRPC_JUMBO_SUBPKTLEN = common dso_local global i32 0, align 4
@RXRPC_LAST_PACKET = common dso_local global i32 0, align 4
@RXRPC_JUMBO_DATALEN = common dso_local global i64 0, align 8
@RXRPC_SKB_INCL_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @rxrpc_validate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_validate_data(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rxrpc_skb_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %8)
  store %struct.rxrpc_skb_priv* %9, %struct.rxrpc_skb_priv** %4, align 8
  store i32 4, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %64, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RXRPC_REQUEST_ACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__set_bit(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @RXRPC_JUMBO_PACKET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %69

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %41, %42
  %44 = load i32, i32* @RXRPC_JUMBO_SUBPKTLEN, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %81

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @RXRPC_LAST_PACKET, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %81

53:                                               ; preds = %47
  %54 = load i64, i64* @RXRPC_JUMBO_DATALEN, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @skb_copy_bits(%struct.sk_buff* %59, i32 %60, i32* %7, i32 1)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %81

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %17

69:                                               ; preds = %39
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @RXRPC_LAST_PACKET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @RXRPC_SKB_INCL_LAST, align 4
  %76 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %4, align 8
  %77 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  store i32 1, i32* %2, align 4
  br label %82

81:                                               ; preds = %63, %52, %46
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
