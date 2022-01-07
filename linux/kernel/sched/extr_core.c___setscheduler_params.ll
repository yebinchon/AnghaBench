; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c___setscheduler_params.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c___setscheduler_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, i32 }
%struct.sched_attr = type { i32, i32, i32 }

@SETPARAM_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.sched_attr*)* @__setscheduler_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setscheduler_params(%struct.task_struct* %0, %struct.sched_attr* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.sched_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.sched_attr* %1, %struct.sched_attr** %4, align 8
  %6 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %7 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SETPARAM_POLICY, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @dl_policy(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %26 = call i32 @__setparam_dl(%struct.task_struct* %24, %struct.sched_attr* %25)
  br label %39

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @fair_policy(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %33 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NICE_TO_PRIO(i32 %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.sched_attr*, %struct.sched_attr** %4, align 8
  %41 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = call i32 @normal_prio(%struct.task_struct* %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = call i32 @set_load_weight(%struct.task_struct* %49, i32 1)
  ret void
}

declare dso_local i64 @dl_policy(i32) #1

declare dso_local i32 @__setparam_dl(%struct.task_struct*, %struct.sched_attr*) #1

declare dso_local i64 @fair_policy(i32) #1

declare dso_local i32 @NICE_TO_PRIO(i32) #1

declare dso_local i32 @normal_prio(%struct.task_struct*) #1

declare dso_local i32 @set_load_weight(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
