; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_destroy_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_destroy_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32, i32, %struct.qfq_aggregate* }
%struct.qfq_aggregate = type { i64, i32 }

@ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_aggregate*)* @qfq_destroy_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_destroy_agg(%struct.qfq_sched* %0, %struct.qfq_aggregate* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_aggregate*, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_aggregate* %1, %struct.qfq_aggregate** %4, align 8
  %5 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %6 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %5, i32 0, i32 1
  %7 = call i32 @hlist_del_init(i32* %6)
  %8 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %9 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %12 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %10
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 8
  %17 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %18 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @ONE_FP, align 4
  %23 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %24 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  %27 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %28 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %31 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %30, i32 0, i32 2
  %32 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %31, align 8
  %33 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %34 = icmp eq %struct.qfq_aggregate* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %37 = call %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched* %36)
  %38 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %39 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %38, i32 0, i32 2
  store %struct.qfq_aggregate* %37, %struct.qfq_aggregate** %39, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %42 = call i32 @kfree(%struct.qfq_aggregate* %41)
  ret void
}

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched*) #1

declare dso_local i32 @kfree(%struct.qfq_aggregate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
