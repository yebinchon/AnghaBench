; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_switched_from_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_switched_from_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*)* @switched_from_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switched_from_dl(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %6 = call i64 @task_on_rq_queued(%struct.task_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = call i32 @task_non_contending(%struct.task_struct* %15)
  br label %17

17:                                               ; preds = %14, %8, %2
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = call i64 @task_on_rq_queued(%struct.task_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.rq*, %struct.rq** %3, align 8
  %31 = getelementptr inbounds %struct.rq, %struct.rq* %30, i32 0, i32 0
  %32 = call i32 @sub_running_bw(%struct.TYPE_5__* %29, %struct.TYPE_6__* %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load %struct.rq*, %struct.rq** %3, align 8
  %37 = getelementptr inbounds %struct.rq, %struct.rq* %36, i32 0, i32 0
  %38 = call i32 @sub_rq_bw(%struct.TYPE_5__* %35, %struct.TYPE_6__* %37)
  br label %39

39:                                               ; preds = %33, %17
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %51 = call i64 @task_on_rq_queued(%struct.task_struct* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.rq*, %struct.rq** %3, align 8
  %55 = getelementptr inbounds %struct.rq, %struct.rq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %49
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.rq*, %struct.rq** %3, align 8
  %62 = call i32 @deadline_queue_pull_task(%struct.rq* %61)
  br label %63

63:                                               ; preds = %60, %59
  ret void
}

declare dso_local i64 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @task_non_contending(%struct.task_struct*) #1

declare dso_local i32 @sub_running_bw(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @sub_rq_bw(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @deadline_queue_pull_task(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
