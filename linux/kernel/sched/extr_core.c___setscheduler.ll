; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c___setscheduler.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c___setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i32*, i32 }
%struct.sched_attr = type { i32 }

@SCHED_FLAG_KEEP_PARAMS = common dso_local global i32 0, align 4
@dl_sched_class = common dso_local global i32 0, align 4
@rt_sched_class = common dso_local global i32 0, align 4
@fair_sched_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, %struct.sched_attr*, i32)* @__setscheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setscheduler(%struct.rq* %0, %struct.task_struct* %1, %struct.sched_attr* %2, i32 %3) #0 {
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.sched_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.sched_attr* %2, %struct.sched_attr** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %10 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SCHED_FLAG_KEEP_PARAMS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %56

16:                                               ; preds = %4
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %19 = call i32 @__setscheduler_params(%struct.task_struct* %17, %struct.sched_attr* %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = call i32 @normal_prio(%struct.task_struct* %20)
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @rt_effective_prio(%struct.task_struct* %27, i32 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %16
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @dl_prio(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  store i32* @dl_sched_class, i32** %42, align 8
  br label %56

43:                                               ; preds = %34
  %44 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @rt_prio(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  store i32* @rt_sched_class, i32** %51, align 8
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %54 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 0
  store i32* @fair_sched_class, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %15, %55, %40
  ret void
}

declare dso_local i32 @__setscheduler_params(%struct.task_struct*, %struct.sched_attr*) #1

declare dso_local i32 @normal_prio(%struct.task_struct*) #1

declare dso_local i32 @rt_effective_prio(%struct.task_struct*, i32) #1

declare dso_local i64 @dl_prio(i32) #1

declare dso_local i64 @rt_prio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
