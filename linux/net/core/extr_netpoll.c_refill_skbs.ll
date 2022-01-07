; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_refill_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_refill_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.sk_buff = type { i32 }

@skb_pool = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MAX_SKBS = common dso_local global i64 0, align 8
@MAX_SKB_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @refill_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_skbs() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @skb_pool, i32 0, i32 1), i64 %3)
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @skb_pool, i32 0, i32 0), align 8
  %7 = load i64, i64* @MAX_SKBS, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* @MAX_SKB_SIZE, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @alloc_skb(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %1, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %18 = call i32 @__skb_queue_tail(%struct.TYPE_3__* @skb_pool, %struct.sk_buff* %17)
  br label %5

19:                                               ; preds = %15, %5
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @skb_pool, i32 0, i32 1), i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
