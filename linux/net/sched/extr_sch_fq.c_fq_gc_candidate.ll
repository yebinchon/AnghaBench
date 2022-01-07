; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_gc_candidate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_gc_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_flow = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@FQ_GC_AGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fq_flow*)* @fq_gc_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_gc_candidate(%struct.fq_flow* %0) #0 {
  %2 = alloca %struct.fq_flow*, align 8
  store %struct.fq_flow* %0, %struct.fq_flow** %2, align 8
  %3 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %4 = call i64 @fq_flow_is_detached(%struct.fq_flow* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @jiffies, align 4
  %8 = load %struct.fq_flow*, %struct.fq_flow** %2, align 8
  %9 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FQ_GC_AGE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @time_after(i32 %7, i64 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi i1 [ false, %1 ], [ %14, %6 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @fq_flow_is_detached(%struct.fq_flow*) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
