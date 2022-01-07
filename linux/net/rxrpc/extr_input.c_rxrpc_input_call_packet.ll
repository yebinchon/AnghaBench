; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_call_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_call_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%p\00", align 1
@jiffies = common dso_local global i64 0, align 8
@rxrpc_timer_set_for_normal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Rx BUSY %%%u\00", align 1
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*)* @rxrpc_input_call_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_call_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rxrpc_skb_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %9)
  store %struct.rxrpc_skb_priv* %10, %struct.rxrpc_skb_priv** %5, align 8
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_call* %11, %struct.sk_buff* %12)
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @READ_ONCE(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %26 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @WRITE_ONCE(i32 %27, i64 %28)
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @rxrpc_timer_set_for_normal, align 4
  %34 = call i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call* %30, i64 %31, i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %20, %2
  %36 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %62 [
    i32 128, label %40
    i32 131, label %44
    i32 129, label %48
    i32 132, label %54
    i32 130, label %58
  ]

40:                                               ; preds = %35
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @rxrpc_input_data(%struct.rxrpc_call* %41, %struct.sk_buff* %42)
  br label %67

44:                                               ; preds = %35
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @rxrpc_input_ack(%struct.rxrpc_call* %45, %struct.sk_buff* %46)
  br label %63

48:                                               ; preds = %35
  %49 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @_proto(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %63

54:                                               ; preds = %35
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @rxrpc_input_abort(%struct.rxrpc_call* %55, %struct.sk_buff* %56)
  br label %63

58:                                               ; preds = %35
  %59 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @rxrpc_input_ackall(%struct.rxrpc_call* %59, %struct.sk_buff* %60)
  br label %63

62:                                               ; preds = %35
  br label %63

63:                                               ; preds = %62, %58, %54, %48, %44
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* @rxrpc_skb_freed, align 4
  %66 = call i32 @rxrpc_free_skb(%struct.sk_buff* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %40
  %68 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*, %struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call*, i64, i64, i32) #1

declare dso_local i32 @rxrpc_input_data(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_input_ack(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i32 @rxrpc_input_abort(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_input_ackall(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
