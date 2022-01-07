; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_check_constrained_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_check_constrained_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32, i64, i64, i32 }
%struct.task_struct = type { i32 }
%struct.rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*)* @dl_check_constrained_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dl_check_constrained_dl(%struct.sched_dl_entity* %0) #0 {
  %2 = alloca %struct.sched_dl_entity*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.rq*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %2, align 8
  %5 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %6 = call %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* %5)
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %8 = call i32 @dl_rq_of_se(%struct.sched_dl_entity* %7)
  %9 = call %struct.rq* @rq_of_dl_rq(i32 %8)
  store %struct.rq* %9, %struct.rq** %4, align 8
  %10 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %11 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rq*, %struct.rq** %4, align 8
  %14 = call i32 @rq_clock(%struct.rq* %13)
  %15 = call i64 @dl_time_before(i32 %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load %struct.rq*, %struct.rq** %4, align 8
  %19 = call i32 @rq_clock(%struct.rq* %18)
  %20 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %21 = call i32 @dl_next_period(%struct.sched_dl_entity* %20)
  %22 = call i64 @dl_time_before(i32 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %26 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i32 @start_dl_timer(%struct.task_struct* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %34
  %41 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %42 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %44 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %49 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %39, %50, %17, %1
  ret void
}

declare dso_local %struct.task_struct* @dl_task_of(%struct.sched_dl_entity*) #1

declare dso_local %struct.rq* @rq_of_dl_rq(i32) #1

declare dso_local i32 @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local i64 @dl_time_before(i32, i32) #1

declare dso_local i32 @rq_clock(%struct.rq*) #1

declare dso_local i32 @dl_next_period(%struct.sched_dl_entity*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @start_dl_timer(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
