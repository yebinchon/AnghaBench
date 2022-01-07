; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_stats_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity* }
%struct.sched_entity = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.task_struct = type { i32 }

@DEQUEUE_SLEEP = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @update_stats_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats_dequeue(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @schedstat_enabled()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %65

11:                                               ; preds = %3
  %12 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %13 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %14 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %13, i32 0, i32 0
  %15 = load %struct.sched_entity*, %struct.sched_entity** %14, align 8
  %16 = icmp ne %struct.sched_entity* %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %19 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %20 = call i32 @update_stats_wait_end(%struct.cfs_rq* %18, %struct.sched_entity* %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DEQUEUE_SLEEP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %28 = call i64 @entity_is_task(%struct.sched_entity* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %32 = call %struct.task_struct* @task_of(%struct.sched_entity* %31)
  store %struct.task_struct* %32, %struct.task_struct** %7, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %41 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %45 = call i32 @rq_of(%struct.cfs_rq* %44)
  %46 = call i32 @rq_clock(i32 %45)
  %47 = call i32 @__schedstat_set(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %57 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %61 = call i32 @rq_of(%struct.cfs_rq* %60)
  %62 = call i32 @rq_clock(i32 %61)
  %63 = call i32 @__schedstat_set(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55, %48
  br label %65

65:                                               ; preds = %10, %64, %26, %21
  ret void
}

declare dso_local i32 @schedstat_enabled(...) #1

declare dso_local i32 @update_stats_wait_end(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i32 @__schedstat_set(i32, i32) #1

declare dso_local i32 @rq_clock(i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
