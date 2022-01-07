; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_activate_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_activate_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { %struct.qfq_aggregate*, i32, i32 }
%struct.qfq_aggregate = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_aggregate*, i32)* @qfq_activate_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_activate_agg(%struct.qfq_sched* %0, %struct.qfq_aggregate* %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_aggregate*, align 8
  %6 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %4, align 8
  store %struct.qfq_aggregate* %1, %struct.qfq_aggregate** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %8 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %11 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %13 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %12, i32 0, i32 3
  store i32 %9, i32* %13, align 4
  %14 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %15 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @qfq_update_agg_ts(%struct.qfq_sched* %14, %struct.qfq_aggregate* %15, i32 %16)
  %18 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %19 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %18, i32 0, i32 0
  %20 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %19, align 8
  %21 = icmp eq %struct.qfq_aggregate* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %24 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %25 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %24, i32 0, i32 0
  store %struct.qfq_aggregate* %23, %struct.qfq_aggregate** %25, align 8
  %26 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %27 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %30 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %32 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %35 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %36 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %35, i32 0, i32 0
  %37 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %36, align 8
  %38 = icmp ne %struct.qfq_aggregate* %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %41 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %42 = call i32 @qfq_schedule_agg(%struct.qfq_sched* %40, %struct.qfq_aggregate* %41)
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %22
  ret void
}

declare dso_local i32 @qfq_update_agg_ts(%struct.qfq_sched*, %struct.qfq_aggregate*, i32) #1

declare dso_local i32 @qfq_schedule_agg(%struct.qfq_sched*, %struct.qfq_aggregate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
