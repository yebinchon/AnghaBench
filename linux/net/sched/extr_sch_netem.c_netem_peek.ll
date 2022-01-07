; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_peek.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netem_sched_data = type { %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.netem_sched_data*)* @netem_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netem_peek(%struct.netem_sched_data* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %3, align 8
  %7 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %8 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %7, i32 0, i32 1
  %9 = call %struct.sk_buff* @skb_rb_first(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %14 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %2, align 8
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %18 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %2, align 8
  br label %43

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call %struct.TYPE_2__* @netem_skb_cb(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %29 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = call %struct.TYPE_2__* @netem_skb_cb(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %2, align 8
  br label %43

39:                                               ; preds = %23
  %40 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %41 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %2, align 8
  br label %43

43:                                               ; preds = %39, %37, %21, %12
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %44
}

declare dso_local %struct.sk_buff* @skb_rb_first(i32*) #1

declare dso_local %struct.TYPE_2__* @netem_skb_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
