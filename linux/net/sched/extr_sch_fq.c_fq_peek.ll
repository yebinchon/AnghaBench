; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_peek.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fq_flow = type { %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.fq_flow*)* @fq_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fq_peek(%struct.fq_flow* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.fq_flow*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.fq_flow* %0, %struct.fq_flow** %3, align 8
  %6 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %7 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %6, i32 0, i32 1
  %8 = call %struct.sk_buff* @skb_rb_first(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.fq_flow*, %struct.fq_flow** %3, align 8
  %10 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %9, i32 0, i32 0
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %2, align 8
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %2, align 8
  br label %35

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_2__* @fq_skb_cb(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.TYPE_2__* @fq_skb_cb(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %2, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %2, align 8
  br label %35

35:                                               ; preds = %33, %31, %19, %14
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.sk_buff* @skb_rb_first(i32*) #1

declare dso_local %struct.TYPE_2__* @fq_skb_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
