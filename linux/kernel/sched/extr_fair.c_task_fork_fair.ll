; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_task_fork_fair.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_task_fork_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_entity }
%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { i64, %struct.sched_entity* }
%struct.rq = type { i32 }
%struct.rq_flags = type { i32 }

@current = common dso_local global i32 0, align 4
@sysctl_sched_child_runs_first = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @task_fork_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_fork_fair(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca %struct.rq*, align 8
  %7 = alloca %struct.rq_flags, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  store %struct.sched_entity* %9, %struct.sched_entity** %4, align 8
  %10 = call %struct.rq* (...) @this_rq()
  store %struct.rq* %10, %struct.rq** %6, align 8
  %11 = load %struct.rq*, %struct.rq** %6, align 8
  %12 = call i32 @rq_lock(%struct.rq* %11, %struct.rq_flags* %7)
  %13 = load %struct.rq*, %struct.rq** %6, align 8
  %14 = call i32 @update_rq_clock(%struct.rq* %13)
  %15 = load i32, i32* @current, align 4
  %16 = call %struct.cfs_rq* @task_cfs_rq(i32 %15)
  store %struct.cfs_rq* %16, %struct.cfs_rq** %3, align 8
  %17 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %18 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %17, i32 0, i32 1
  %19 = load %struct.sched_entity*, %struct.sched_entity** %18, align 8
  store %struct.sched_entity* %19, %struct.sched_entity** %5, align 8
  %20 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %21 = icmp ne %struct.sched_entity* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %24 = call i32 @update_curr(%struct.cfs_rq* %23)
  %25 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %26 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %29 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %32 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %33 = call i32 @place_entity(%struct.cfs_rq* %31, %struct.sched_entity* %32, i32 1)
  %34 = load i64, i64* @sysctl_sched_child_runs_first, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %38 = icmp ne %struct.sched_entity* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %41 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %42 = call i64 @entity_before(%struct.sched_entity* %40, %struct.sched_entity* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %46 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %49 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @swap(i32 %47, i32 %50)
  %52 = load %struct.rq*, %struct.rq** %6, align 8
  %53 = call i32 @resched_curr(%struct.rq* %52)
  br label %54

54:                                               ; preds = %44, %39, %36, %30
  %55 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %56 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %59 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.rq*, %struct.rq** %6, align 8
  %65 = call i32 @rq_unlock(%struct.rq* %64, %struct.rq_flags* %7)
  ret void
}

declare dso_local %struct.rq* @this_rq(...) #1

declare dso_local i32 @rq_lock(%struct.rq*, %struct.rq_flags*) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local %struct.cfs_rq* @task_cfs_rq(i32) #1

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @place_entity(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i64 @entity_before(%struct.sched_entity*, %struct.sched_entity*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

declare dso_local i32 @rq_unlock(%struct.rq*, %struct.rq_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
