; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_task_contending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_task_contending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i64, i32, i64 }
%struct.dl_rq = type { i32 }

@ENQUEUE_MIGRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, i32)* @task_contending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_contending(%struct.sched_dl_entity* %0, i32 %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dl_rq*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %7 = call %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* %6)
  store %struct.dl_rq* %7, %struct.dl_rq** %5, align 8
  %8 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %9 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENQUEUE_MIGRATED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %20 = load %struct.dl_rq*, %struct.dl_rq** %5, align 8
  %21 = call i32 @add_rq_bw(%struct.sched_dl_entity* %19, %struct.dl_rq* %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %24 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %29 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %31 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %30, i32 0, i32 1
  %32 = call i32 @hrtimer_try_to_cancel(i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %36 = call i32 @dl_task_of(%struct.sched_dl_entity* %35)
  %37 = call i32 @put_task_struct(i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %41 = load %struct.dl_rq*, %struct.dl_rq** %5, align 8
  %42 = call i32 @add_running_bw(%struct.sched_dl_entity* %40, %struct.dl_rq* %41)
  br label %43

43:                                               ; preds = %12, %39, %38
  ret void
}

declare dso_local %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local i32 @add_rq_bw(%struct.sched_dl_entity*, %struct.dl_rq*) #1

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @put_task_struct(i32) #1

declare dso_local i32 @dl_task_of(%struct.sched_dl_entity*) #1

declare dso_local i32 @add_running_bw(%struct.sched_dl_entity*, %struct.dl_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
