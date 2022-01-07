; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_pick_next_task_fair.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_pick_next_task_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_entity, i32* }
%struct.sched_entity = type { i32, i32, i64 }
%struct.rq = type { i32, %struct.cfs_rq }
%struct.cfs_rq = type { i32, %struct.sched_entity* }
%struct.rq_flags = type { i32 }

@__maybe_unused = common dso_local global i32 0, align 4
@RETRY_TASK = common dso_local global %struct.task_struct* null, align 8
@fair_sched_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @pick_next_task_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @pick_next_task_fair(%struct.rq* %0, %struct.task_struct* %1, %struct.rq_flags* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.rq_flags*, align 8
  %8 = alloca %struct.cfs_rq*, align 8
  %9 = alloca %struct.sched_entity*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.rq_flags* %2, %struct.rq_flags** %7, align 8
  %12 = load %struct.rq*, %struct.rq** %5, align 8
  %13 = getelementptr inbounds %struct.rq, %struct.rq* %12, i32 0, i32 1
  store %struct.cfs_rq* %13, %struct.cfs_rq** %8, align 8
  br label %14

14:                                               ; preds = %70, %3
  %15 = load %struct.rq*, %struct.rq** %5, align 8
  %16 = call i32 @sched_fair_runnable(%struct.rq* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %55

19:                                               ; preds = %14
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.rq*, %struct.rq** %5, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = call i32 @put_prev_task(%struct.rq* %23, %struct.task_struct* %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %35, %26
  %28 = load %struct.cfs_rq*, %struct.cfs_rq** %8, align 8
  %29 = call %struct.sched_entity* @pick_next_entity(%struct.cfs_rq* %28, %struct.sched_entity* null)
  store %struct.sched_entity* %29, %struct.sched_entity** %9, align 8
  %30 = load %struct.cfs_rq*, %struct.cfs_rq** %8, align 8
  %31 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %32 = call i32 @set_next_entity(%struct.cfs_rq* %30, %struct.sched_entity* %31)
  %33 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %34 = call %struct.cfs_rq* @group_cfs_rq(%struct.sched_entity* %33)
  store %struct.cfs_rq* %34, %struct.cfs_rq** %8, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load %struct.cfs_rq*, %struct.cfs_rq** %8, align 8
  %37 = icmp ne %struct.cfs_rq* %36, null
  br i1 %37, label %27, label %38

38:                                               ; preds = %35
  %39 = load %struct.sched_entity*, %struct.sched_entity** %9, align 8
  %40 = call %struct.task_struct* @task_of(%struct.sched_entity* %39)
  store %struct.task_struct* %40, %struct.task_struct** %10, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @__maybe_unused, align 4
  %43 = load %struct.rq*, %struct.rq** %5, align 8
  %44 = call i64 @hrtick_enabled(%struct.rq* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.rq*, %struct.rq** %5, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %49 = call i32 @hrtick_start_fair(%struct.rq* %47, %struct.task_struct* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %52 = load %struct.rq*, %struct.rq** %5, align 8
  %53 = call i32 @update_misfit_status(%struct.task_struct* %51, %struct.rq* %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  store %struct.task_struct* %54, %struct.task_struct** %4, align 8
  br label %74

55:                                               ; preds = %18
  %56 = load %struct.rq_flags*, %struct.rq_flags** %7, align 8
  %57 = icmp ne %struct.rq_flags* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store %struct.task_struct* null, %struct.task_struct** %4, align 8
  br label %74

59:                                               ; preds = %55
  %60 = load %struct.rq*, %struct.rq** %5, align 8
  %61 = load %struct.rq_flags*, %struct.rq_flags** %7, align 8
  %62 = call i32 @newidle_balance(%struct.rq* %60, %struct.rq_flags* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load %struct.task_struct*, %struct.task_struct** @RETRY_TASK, align 8
  store %struct.task_struct* %66, %struct.task_struct** %4, align 8
  br label %74

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %14

71:                                               ; preds = %67
  %72 = load %struct.rq*, %struct.rq** %5, align 8
  %73 = call i32 @update_idle_rq_clock_pelt(%struct.rq* %72)
  store %struct.task_struct* null, %struct.task_struct** %4, align 8
  br label %74

74:                                               ; preds = %71, %65, %58, %50
  %75 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  ret %struct.task_struct* %75
}

declare dso_local i32 @sched_fair_runnable(%struct.rq*) #1

declare dso_local i32 @put_prev_task(%struct.rq*, %struct.task_struct*) #1

declare dso_local %struct.sched_entity* @pick_next_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @set_next_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local %struct.cfs_rq* @group_cfs_rq(%struct.sched_entity*) #1

declare dso_local %struct.task_struct* @task_of(%struct.sched_entity*) #1

declare dso_local i64 @hrtick_enabled(%struct.rq*) #1

declare dso_local i32 @hrtick_start_fair(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @update_misfit_status(%struct.task_struct*, %struct.rq*) #1

declare dso_local i32 @newidle_balance(%struct.rq*, %struct.rq_flags*) #1

declare dso_local i32 @update_idle_rq_clock_pelt(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
