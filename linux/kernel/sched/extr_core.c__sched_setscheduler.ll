; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c__sched_setscheduler.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c__sched_setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.sched_param = type { i32 }
%struct.sched_attr = type { i32, i32, i32, i32 }

@SETPARAM_POLICY = common dso_local global i32 0, align 4
@SCHED_RESET_ON_FORK = common dso_local global i32 0, align 4
@SCHED_FLAG_RESET_ON_FORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, %struct.sched_param*, i32)* @_sched_setscheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sched_setscheduler(%struct.task_struct* %0, i32 %1, %struct.sched_param* %2, i32 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sched_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sched_attr, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sched_param* %2, %struct.sched_param** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 2
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PRIO_TO_NICE(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 3
  %19 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %20 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SETPARAM_POLICY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SCHED_RESET_ON_FORK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* @SCHED_FLAG_RESET_ON_FORK, align 4
  %32 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @SCHED_RESET_ON_FORK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %25, %4
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @__sched_setscheduler(%struct.task_struct* %42, %struct.sched_attr* %9, i32 %43, i32 1)
  ret i32 %44
}

declare dso_local i32 @PRIO_TO_NICE(i32) #1

declare dso_local i32 @__sched_setscheduler(%struct.task_struct*, %struct.sched_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
