; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_wait_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_wait_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @update_stats_wait_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats_wait_start(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %7 = call i32 (...) @schedstat_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %45

10:                                               ; preds = %2
  %11 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %12 = call i32 @rq_of(%struct.cfs_rq* %11)
  %13 = call i64 @rq_clock(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %15 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @schedstat_val(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %20 = call i64 @entity_is_task(%struct.sched_entity* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %10
  %23 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %24 = call i32 @task_of(%struct.sched_entity* %23)
  %25 = call i64 @task_on_rq_migrating(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %27, %22, %10
  %39 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %40 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @__schedstat_set(i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %9
  ret void
}

declare dso_local i32 @schedstat_enabled(...) #1

declare dso_local i64 @rq_clock(i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

declare dso_local i64 @schedstat_val(i32) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local i64 @task_on_rq_migrating(i32) #1

declare dso_local i32 @task_of(%struct.sched_entity*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__schedstat_set(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
