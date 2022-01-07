; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_curr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_update_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32, %struct.sched_entity* }
%struct.sched_entity = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*)* @update_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_curr(%struct.cfs_rq* %0) #0 {
  %2 = alloca %struct.cfs_rq*, align 8
  %3 = alloca %struct.sched_entity*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %2, align 8
  %7 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %8 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %7, i32 0, i32 1
  %9 = load %struct.sched_entity*, %struct.sched_entity** %8, align 8
  store %struct.sched_entity* %9, %struct.sched_entity** %3, align 8
  %10 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %11 = call i32 @rq_of(%struct.cfs_rq* %10)
  %12 = call i64 @rq_clock_task(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %14 = icmp ne %struct.sched_entity* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %92

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %23 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sle i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %92

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %35 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %37 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %42 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @max(i64 %40, i32 %44)
  %46 = call i32 @schedstat_set(i32 %39, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %49 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %55 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @schedstat_add(i32 %56, i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %61 = call i64 @calc_delta_fair(i64 %59, %struct.sched_entity* %60)
  %62 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %63 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %69 = call i32 @update_min_vruntime(%struct.cfs_rq* %68)
  %70 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %71 = call i64 @entity_is_task(%struct.sched_entity* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %32
  %74 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %75 = call %struct.task_struct* @task_of(%struct.sched_entity* %74)
  store %struct.task_struct* %75, %struct.task_struct** %6, align 8
  %76 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %79 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @trace_sched_stat_runtime(%struct.task_struct* %76, i64 %77, i32 %80)
  %82 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @cgroup_account_cputime(%struct.task_struct* %82, i64 %83)
  %85 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @account_group_exec_runtime(%struct.task_struct* %85, i64 %86)
  br label %88

88:                                               ; preds = %73, %32
  %89 = load %struct.cfs_rq*, %struct.cfs_rq** %2, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @account_cfs_rq_runtime(%struct.cfs_rq* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %31, %19
  ret void
}

declare dso_local i64 @rq_clock_task(i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedstat_set(i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @schedstat_add(i32, i64) #1

declare dso_local i64 @calc_delta_fair(i64, %struct.sched_entity*) #1

declare dso_local i32 @update_min_vruntime(%struct.cfs_rq*) #1

declare dso_local i64 @entity_is_task(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i32 @trace_sched_stat_runtime(%struct.task_struct*, i64, i32) #1

declare dso_local i32 @cgroup_account_cputime(%struct.task_struct*, i64) #1

declare dso_local i32 @account_group_exec_runtime(%struct.task_struct*, i64) #1

declare dso_local i32 @account_cfs_rq_runtime(%struct.cfs_rq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
