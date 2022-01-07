; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_park.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_park.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kthread = type { i32, i32 }

@PF_EXITING = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@KTHREAD_SHOULD_PARK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@TASK_PARKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kthread_park(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.kthread*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = call %struct.kthread* @to_kthread(%struct.task_struct* %5)
  store %struct.kthread* %6, %struct.kthread** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PF_EXITING, align 4
  %11 = and i32 %9, %10
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @KTHREAD_SHOULD_PARK, align 4
  %19 = load %struct.kthread*, %struct.kthread** %4, align 8
  %20 = getelementptr inbounds %struct.kthread, %struct.kthread* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %17
  %28 = load i32, i32* @KTHREAD_SHOULD_PARK, align 4
  %29 = load %struct.kthread*, %struct.kthread** %4, align 8
  %30 = getelementptr inbounds %struct.kthread, %struct.kthread* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %34 = icmp ne %struct.task_struct* %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = call i32 @wake_up_process(%struct.task_struct* %36)
  %38 = load %struct.kthread*, %struct.kthread** %4, align 8
  %39 = getelementptr inbounds %struct.kthread, %struct.kthread* %38, i32 0, i32 0
  %40 = call i32 @wait_for_completion(i32* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = load i32, i32* @TASK_PARKED, align 4
  %43 = call i32 @wait_task_inactive(%struct.task_struct* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  br label %48

48:                                               ; preds = %35, %27
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %24, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.kthread* @to_kthread(%struct.task_struct*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_task_inactive(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
