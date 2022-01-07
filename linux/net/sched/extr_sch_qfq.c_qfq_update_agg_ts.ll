; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_update_agg_ts.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_update_agg_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_aggregate = type { i32, i64, i64, i64 }

@requeue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_aggregate*, i32)* @qfq_update_agg_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_update_agg_ts(%struct.qfq_sched* %0, %struct.qfq_aggregate* %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_aggregate*, align 8
  %6 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %4, align 8
  store %struct.qfq_aggregate* %1, %struct.qfq_aggregate** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @requeue, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %12 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %13 = call i32 @qfq_update_start(%struct.qfq_sched* %11, %struct.qfq_aggregate* %12)
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %16 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %19 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %10
  %21 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %22 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %25 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %29 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %23, %32
  %34 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %35 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  ret void
}

declare dso_local i32 @qfq_update_start(%struct.qfq_sched*, %struct.qfq_aggregate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
