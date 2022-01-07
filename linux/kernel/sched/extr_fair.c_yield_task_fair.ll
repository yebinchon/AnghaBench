; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_yield_task_fair.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_yield_task_fair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32, %struct.task_struct* }
%struct.task_struct = type { i64, %struct.sched_entity }
%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { i32 }

@SCHED_BATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*)* @yield_task_fair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yield_task_fair(%struct.rq* %0) #0 {
  %2 = alloca %struct.rq*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  store %struct.rq* %0, %struct.rq** %2, align 8
  %6 = load %struct.rq*, %struct.rq** %2, align 8
  %7 = getelementptr inbounds %struct.rq, %struct.rq* %6, i32 0, i32 1
  %8 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  store %struct.task_struct* %8, %struct.task_struct** %3, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.cfs_rq* @task_cfs_rq(%struct.task_struct* %9)
  store %struct.cfs_rq* %10, %struct.cfs_rq** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  store %struct.sched_entity* %12, %struct.sched_entity** %5, align 8
  %13 = load %struct.rq*, %struct.rq** %2, align 8
  %14 = getelementptr inbounds %struct.rq, %struct.rq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %40

21:                                               ; preds = %1
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %23 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %24 = call i32 @clear_buddies(%struct.cfs_rq* %22, %struct.sched_entity* %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SCHED_BATCH, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.rq*, %struct.rq** %2, align 8
  %32 = call i32 @update_rq_clock(%struct.rq* %31)
  %33 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %34 = call i32 @update_curr(%struct.cfs_rq* %33)
  %35 = load %struct.rq*, %struct.rq** %2, align 8
  %36 = call i32 @rq_clock_skip_update(%struct.rq* %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %39 = call i32 @set_skip_buddy(%struct.sched_entity* %38)
  br label %40

40:                                               ; preds = %37, %20
  ret void
}

declare dso_local %struct.cfs_rq* @task_cfs_rq(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @rq_clock_skip_update(%struct.rq*) #1

declare dso_local i32 @set_skip_buddy(%struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
