; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_wait_end.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_wait_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @update_stats_wait_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats_wait_end(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %7 = call i32 (...) @schedstat_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %69

10:                                               ; preds = %2
  %11 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %12 = call i32 @rq_of(%struct.cfs_rq* %11)
  %13 = call i64 @rq_clock(i32 %12)
  %14 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %15 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @schedstat_val(i32 %17)
  %19 = sub nsw i64 %13, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %21 = call i64 @entity_is_task(%struct.sched_entity* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %10
  %24 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %25 = call %struct.task_struct* @task_of(%struct.sched_entity* %24)
  store %struct.task_struct* %25, %struct.task_struct** %5, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call i64 @task_on_rq_migrating(%struct.task_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %31 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @__schedstat_set(i32 %33, i64 %34)
  br label %69

36:                                               ; preds = %23
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @trace_sched_stat_wait(%struct.task_struct* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %10
  %41 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %42 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %46 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @schedstat_val(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @max(i64 %49, i64 %50)
  %52 = call i32 @__schedstat_set(i32 %44, i64 %51)
  %53 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %54 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @__schedstat_inc(i32 %56)
  %58 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %59 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @__schedstat_add(i32 %61, i64 %62)
  %64 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %65 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__schedstat_set(i32 %67, i64 0)
  br label %69

69:                                               ; preds = %40, %29, %9
  ret void
}

declare dso_local i32 @schedstat_enabled(...) #1

declare dso_local i64 @rq_clock(i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

declare dso_local i64 @schedstat_val(i32) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i64 @task_on_rq_migrating(%struct.task_struct*) #1

declare dso_local i32 @__schedstat_set(i32, i64) #1

declare dso_local i32 @trace_sched_stat_wait(%struct.task_struct*, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @__schedstat_inc(i32) #1

declare dso_local i32 @__schedstat_add(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
