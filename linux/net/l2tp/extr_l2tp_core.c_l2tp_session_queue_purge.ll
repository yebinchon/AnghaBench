; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_queue_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_queue_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@L2TP_SESSION_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_session*)* @l2tp_session_queue_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_session_queue_purge(%struct.l2tp_session* %0) #0 {
  %2 = alloca %struct.l2tp_session*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %4 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %5 = icmp ne %struct.l2tp_session* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %10 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @L2TP_SESSION_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  br label %16

16:                                               ; preds = %21, %1
  %17 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %18 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %17, i32 0, i32 2
  %19 = call %struct.sk_buff* @skb_dequeue(i32* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %23 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @atomic_long_inc(i32* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @kfree_skb(%struct.sk_buff* %26)
  br label %16

28:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
