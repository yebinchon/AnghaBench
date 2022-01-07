; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_skb_drop_old.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_skb_drop_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.j1939_sk_buff_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_session*)* @j1939_session_skb_drop_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_session_skb_drop_old(%struct.j1939_session* %0) #0 {
  %2 = alloca %struct.j1939_session*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.j1939_sk_buff_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.j1939_session* %0, %struct.j1939_session** %2, align 8
  %7 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %8 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %7, i32 0, i32 0
  %9 = call i32 @skb_queue_len(%struct.TYPE_6__* %8)
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %14 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 7
  store i32 %17, i32* %5, align 4
  %18 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %19 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %24 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %23, i32 0, i32 0
  %25 = call %struct.sk_buff* @skb_peek(%struct.TYPE_6__* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %26)
  store %struct.j1939_sk_buff_cb* %27, %struct.j1939_sk_buff_cb** %4, align 8
  %28 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %4, align 8
  %29 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %30, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %12
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %40 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %39, i32 0, i32 0
  %41 = call i32 @__skb_unlink(%struct.sk_buff* %38, %struct.TYPE_6__* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %37, %12
  %45 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %46 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %44, %11
  ret void
}

declare dso_local i32 @skb_queue_len(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_6__*) #1

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
