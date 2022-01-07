; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_try_bulk_dequeue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_try_bulk_dequeue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.sk_buff* (%struct.Qdisc*)* }
%struct.sk_buff = type { i32, %struct.sk_buff* }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.sk_buff*, %struct.netdev_queue*, i32*)* @try_bulk_dequeue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_bulk_dequeue_skb(%struct.Qdisc* %0, %struct.sk_buff* %1, %struct.netdev_queue* %2, i32* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netdev_queue* %2, %struct.netdev_queue** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %12 = call i32 @qdisc_avail_bulklimit(%struct.netdev_queue* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %29, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 0
  %23 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %22, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %25 = call %struct.sk_buff* %23(%struct.Qdisc* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  store %struct.sk_buff* %35, %struct.sk_buff** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %17

42:                                               ; preds = %28, %17
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %43)
  ret void
}

declare dso_local i32 @qdisc_avail_bulklimit(%struct.netdev_queue*) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
