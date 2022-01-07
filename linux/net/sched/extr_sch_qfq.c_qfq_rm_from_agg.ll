; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_rm_from_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_rm_from_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_class = type { %struct.qfq_aggregate* }
%struct.qfq_aggregate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_class*)* @qfq_rm_from_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_rm_from_agg(%struct.qfq_sched* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca %struct.qfq_aggregate*, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %4, align 8
  %6 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %7 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %6, i32 0, i32 0
  %8 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %7, align 8
  store %struct.qfq_aggregate* %8, %struct.qfq_aggregate** %5, align 8
  %9 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %10 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %9, i32 0, i32 0
  store %struct.qfq_aggregate* null, %struct.qfq_aggregate** %10, align 8
  %11 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %12 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %17 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %18 = call i32 @qfq_destroy_agg(%struct.qfq_sched* %16, %struct.qfq_aggregate* %17)
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %21 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %22 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %5, align 8
  %23 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @qfq_update_agg(%struct.qfq_sched* %20, %struct.qfq_aggregate* %21, i32 %25)
  br label %27

27:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @qfq_destroy_agg(%struct.qfq_sched*, %struct.qfq_aggregate*) #1

declare dso_local i32 @qfq_update_agg(%struct.qfq_sched*, %struct.qfq_aggregate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
