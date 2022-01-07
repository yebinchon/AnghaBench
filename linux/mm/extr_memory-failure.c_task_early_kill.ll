; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_task_early_kill.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_task_early_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@sysctl_memory_failure_early_kill = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.task_struct*, i32)* @task_early_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @task_early_kill(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.task_struct* null, %struct.task_struct** %3, align 8
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %16, %struct.task_struct** %3, align 8
  br label %30

17:                                               ; preds = %12
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = call %struct.task_struct* @find_early_kill_thread(%struct.task_struct* %18)
  store %struct.task_struct* %19, %struct.task_struct** %6, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  store %struct.task_struct* %23, %struct.task_struct** %3, align 8
  br label %30

24:                                               ; preds = %17
  %25 = load i64, i64* @sysctl_memory_failure_early_kill, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %28, %struct.task_struct** %3, align 8
  br label %30

29:                                               ; preds = %24
  store %struct.task_struct* null, %struct.task_struct** %3, align 8
  br label %30

30:                                               ; preds = %29, %27, %22, %15, %11
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  ret %struct.task_struct* %31
}

declare dso_local %struct.task_struct* @find_early_kill_thread(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
