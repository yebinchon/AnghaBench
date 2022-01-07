; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_start_dl_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_start_dl_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_dl_entity }
%struct.sched_dl_entity = type { %struct.hrtimer }
%struct.hrtimer = type { i32 }
%struct.rq = type { i32 }

@HRTIMER_MODE_ABS_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @start_dl_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_dl_timer(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.sched_dl_entity*, align 8
  %5 = alloca %struct.hrtimer*, align 8
  %6 = alloca %struct.rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  store %struct.sched_dl_entity* %11, %struct.sched_dl_entity** %4, align 8
  %12 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %13 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %12, i32 0, i32 0
  store %struct.hrtimer* %13, %struct.hrtimer** %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call %struct.rq* @task_rq(%struct.task_struct* %14)
  store %struct.rq* %15, %struct.rq** %6, align 8
  %16 = load %struct.rq*, %struct.rq** %6, align 8
  %17 = getelementptr inbounds %struct.rq, %struct.rq* %16, i32 0, i32 0
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %20 = call i32 @dl_next_period(%struct.sched_dl_entity* %19)
  %21 = call i32 @ns_to_ktime(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %23 = call i32 @hrtimer_cb_get_time(%struct.hrtimer* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ktime_to_ns(i32 %24)
  %26 = load %struct.rq*, %struct.rq** %6, align 8
  %27 = call i64 @rq_clock(%struct.rq* %26)
  %28 = sub nsw i64 %25, %27
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @ktime_add_ns(i32 %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ktime_us_delta(i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %39 = call i32 @hrtimer_is_queued(%struct.hrtimer* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = call i32 @get_task_struct(%struct.task_struct* %42)
  %44 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @HRTIMER_MODE_ABS_HARD, align 4
  %47 = call i32 @hrtimer_start(%struct.hrtimer* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.rq* @task_rq(%struct.task_struct*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @dl_next_period(%struct.sched_dl_entity*) #1

declare dso_local i32 @hrtimer_cb_get_time(%struct.hrtimer*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i64 @rq_clock(%struct.rq*) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @hrtimer_is_queued(%struct.hrtimer*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @hrtimer_start(%struct.hrtimer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
