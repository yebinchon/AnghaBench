; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { %struct.xfrm_policy_queue }
%struct.xfrm_policy_queue = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@XFRM_QUEUE_TMO_MIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, %struct.xfrm_policy*)* @xfrm_policy_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_policy_requeue(%struct.xfrm_policy* %0, %struct.xfrm_policy* %1) #0 {
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.xfrm_policy_queue*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %3, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %4, align 8
  %7 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %8 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %7, i32 0, i32 0
  store %struct.xfrm_policy_queue* %8, %struct.xfrm_policy_queue** %5, align 8
  %9 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %9, i32 0, i32 0
  %11 = call i64 @skb_queue_empty(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %60

14:                                               ; preds = %2
  %15 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %16 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %17 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %20, i32 0, i32 0
  %22 = call i32 @skb_queue_splice_init(%struct.TYPE_4__* %21, %struct.sk_buff_head* %6)
  %23 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %24 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %23, i32 0, i32 1
  %25 = call i64 @del_timer(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %29 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %28)
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %36 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %35, i32 0, i32 0
  store %struct.xfrm_policy_queue* %36, %struct.xfrm_policy_queue** %5, align 8
  %37 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %38 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %42 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %41, i32 0, i32 0
  %43 = call i32 @skb_queue_splice(%struct.sk_buff_head* %6, %struct.TYPE_4__* %42)
  %44 = load i32, i32* @XFRM_QUEUE_TMO_MIN, align 4
  %45 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %48 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %47, i32 0, i32 1
  %49 = load i32, i32* @jiffies, align 4
  %50 = call i32 @mod_timer(i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %30
  %53 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %54 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %53)
  br label %55

55:                                               ; preds = %52, %30
  %56 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %5, align 8
  %57 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  br label %60

60:                                               ; preds = %55, %13
  ret void
}

declare dso_local i64 @skb_queue_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.TYPE_4__*, %struct.sk_buff_head*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_queue_splice(%struct.sk_buff_head*, %struct.TYPE_4__*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
