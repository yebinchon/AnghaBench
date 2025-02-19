; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_unpark.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_unpark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kthread = type { i32, i32 }

@KTHREAD_IS_PER_CPU = common dso_local global i32 0, align 4
@TASK_PARKED = common dso_local global i32 0, align 4
@KTHREAD_SHOULD_PARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_unpark(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.kthread*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call %struct.kthread* @to_kthread(%struct.task_struct* %4)
  store %struct.kthread* %5, %struct.kthread** %3, align 8
  %6 = load i32, i32* @KTHREAD_IS_PER_CPU, align 4
  %7 = load %struct.kthread*, %struct.kthread** %3, align 8
  %8 = getelementptr inbounds %struct.kthread, %struct.kthread* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = load %struct.kthread*, %struct.kthread** %3, align 8
  %14 = getelementptr inbounds %struct.kthread, %struct.kthread* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TASK_PARKED, align 4
  %17 = call i32 @__kthread_bind(%struct.task_struct* %12, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @KTHREAD_SHOULD_PARK, align 4
  %20 = load %struct.kthread*, %struct.kthread** %3, align 8
  %21 = getelementptr inbounds %struct.kthread, %struct.kthread* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = load i32, i32* @TASK_PARKED, align 4
  %25 = call i32 @wake_up_state(%struct.task_struct* %23, i32 %24)
  ret void
}

declare dso_local %struct.kthread* @to_kthread(%struct.task_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__kthread_bind(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_state(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
