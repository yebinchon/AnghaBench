; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_deact_rm_from_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_deact_rm_from_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_class = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_class*)* @qfq_deact_rm_from_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_deact_rm_from_agg(%struct.qfq_sched* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_class*, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %4, align 8
  %5 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %6 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %14 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %15 = call i32 @qfq_deactivate_class(%struct.qfq_sched* %13, %struct.qfq_class* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %18 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %19 = call i32 @qfq_rm_from_agg(%struct.qfq_sched* %17, %struct.qfq_class* %18)
  ret void
}

declare dso_local i32 @qfq_deactivate_class(%struct.qfq_sched*, %struct.qfq_class*) #1

declare dso_local i32 @qfq_rm_from_agg(%struct.qfq_sched*, %struct.qfq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
