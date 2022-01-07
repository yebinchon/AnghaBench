; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_local_event.c_rxrpc_process_local_events.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_local_event.c_rxrpc_process_local_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rxrpc_skb_seen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"{%d},{%u}\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Rx VERSION { %02x }\00", align 1
@rxrpc_skb_freed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_process_local_events(%struct.rxrpc_local* %0) #0 {
  %2 = alloca %struct.rxrpc_local*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.rxrpc_skb_priv*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %2, align 8
  %6 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %8 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %7, i32 0, i32 1
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %13)
  store %struct.rxrpc_skb_priv* %14, %struct.rxrpc_skb_priv** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load i32, i32* @rxrpc_skb_seen, align 4
  %17 = call i32 @rxrpc_see_skb(%struct.sk_buff* %15, i32 %16)
  %18 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %19 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %48 [
    i32 128, label %30
  ]

30:                                               ; preds = %12
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @skb_copy_bits(%struct.sk_buff* %31, i32 4, i8* %4, i32 1)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %55

35:                                               ; preds = %30
  %36 = load i8, i8* %4, align 1
  %37 = call i32 @_proto(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8 signext %36)
  %38 = load i8, i8* %4, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.rxrpc_local*, %struct.rxrpc_local** %2, align 8
  %43 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @rxrpc_send_version_request(%struct.rxrpc_local* %42, %struct.TYPE_2__* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %49

48:                                               ; preds = %12
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = load i32, i32* @rxrpc_skb_freed, align 4
  %52 = call i32 @rxrpc_free_skb(%struct.sk_buff* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %1
  %54 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %34
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_see_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @_debug(i8*, i32, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @_proto(i8*, i8 signext) #1

declare dso_local i32 @rxrpc_send_version_request(%struct.rxrpc_local*, %struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
