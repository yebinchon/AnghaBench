; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_check_kill_permission.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_check_kill_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kernel_siginfo = type { i32 }
%struct.pid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kernel_siginfo*, %struct.task_struct*)* @check_kill_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_kill_permission(i32 %0, %struct.kernel_siginfo* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_siginfo*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.kernel_siginfo* %1, %struct.kernel_siginfo** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @valid_signal(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %18 = call i32 @si_fromuser(%struct.kernel_siginfo* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %61

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %24 = call i32 @audit_signal_info(i32 %22, %struct.task_struct* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %61

29:                                               ; preds = %21
  %30 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %32 = call i32 @same_thread_group(%struct.task_struct* %30, %struct.task_struct* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = call i32 @kill_ok_by_cred(%struct.task_struct* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %52 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %42 = call %struct.pid* @task_session(%struct.task_struct* %41)
  store %struct.pid* %42, %struct.pid** %8, align 8
  %43 = load %struct.pid*, %struct.pid** %8, align 8
  %44 = icmp ne %struct.pid* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.pid*, %struct.pid** %8, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %48 = call %struct.pid* @task_session(%struct.task_struct* %47)
  %49 = icmp eq %struct.pid* %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  br label %55

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %38, %51
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %34, %29
  %57 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %58 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @security_task_kill(%struct.task_struct* %57, %struct.kernel_siginfo* %58, i32 %59, i32* null)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %52, %27, %20, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i32 @si_fromuser(%struct.kernel_siginfo*) #1

declare dso_local i32 @audit_signal_info(i32, %struct.task_struct*) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @kill_ok_by_cred(%struct.task_struct*) #1

declare dso_local %struct.pid* @task_session(%struct.task_struct*) #1

declare dso_local i32 @security_task_kill(%struct.task_struct*, %struct.kernel_siginfo*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
