; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_get_task_exe_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_get_task_exe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.task_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @get_task_exe_file(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store %struct.file* null, %struct.file** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i32 @task_lock(%struct.task_struct* %5)
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 1
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %4, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = icmp ne %struct.mm_struct* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PF_KTHREAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %21 = call %struct.file* @get_mm_exe_file(%struct.mm_struct* %20)
  store %struct.file* %21, %struct.file** %3, align 8
  br label %22

22:                                               ; preds = %19, %12
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = call i32 @task_unlock(%struct.task_struct* %24)
  %26 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %26
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
