; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_prio_changed_rt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_prio_changed_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { %struct.task_struct*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32)* @prio_changed_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prio_changed_rt(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %8 = call i32 @task_on_rq_queued(%struct.task_struct* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %41

11:                                               ; preds = %3
  %12 = load %struct.rq*, %struct.rq** %4, align 8
  %13 = getelementptr inbounds %struct.rq, %struct.rq* %12, i32 0, i32 0
  %14 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = icmp eq %struct.task_struct* %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.rq*, %struct.rq** %4, align 8
  %25 = call i32 @resched_curr(%struct.rq* %24)
  br label %26

26:                                               ; preds = %23, %17
  br label %41

27:                                               ; preds = %11
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rq*, %struct.rq** %4, align 8
  %32 = getelementptr inbounds %struct.rq, %struct.rq* %31, i32 0, i32 0
  %33 = load %struct.task_struct*, %struct.task_struct** %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.rq*, %struct.rq** %4, align 8
  %39 = call i32 @resched_curr(%struct.rq* %38)
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %10, %40, %26
  ret void
}

declare dso_local i32 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
