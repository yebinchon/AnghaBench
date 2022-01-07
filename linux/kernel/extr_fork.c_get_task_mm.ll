; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_get_task_mm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_get_task_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32, %struct.mm_struct* }

@PF_KTHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @task_lock(%struct.task_struct* %4)
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 1
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %8, %struct.mm_struct** %3, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %10 = icmp ne %struct.mm_struct* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PF_KTHREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store %struct.mm_struct* null, %struct.mm_struct** %3, align 8
  br label %22

19:                                               ; preds = %11
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = call i32 @mmget(%struct.mm_struct* %20)
  br label %22

22:                                               ; preds = %19, %18
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = call i32 @task_unlock(%struct.task_struct* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  ret %struct.mm_struct* %26
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @mmget(%struct.mm_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
