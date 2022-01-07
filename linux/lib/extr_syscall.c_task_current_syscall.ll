; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_syscall.c_task_current_syscall.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_syscall.c_task_current_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.syscall_info = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_current_syscall(%struct.task_struct* %0, %struct.syscall_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.syscall_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.syscall_info* %1, %struct.syscall_info** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %10 = icmp eq %struct.task_struct* %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %14 = call i32 @collect_syscall(%struct.task_struct* %12, %struct.syscall_info* %13)
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %15
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @wait_task_inactive(%struct.task_struct* %29, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %28
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %41 = call i32 @collect_syscall(%struct.task_struct* %39, %struct.syscall_info* %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @wait_task_inactive(%struct.task_struct* %45, i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44, %38, %28
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %25, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @collect_syscall(%struct.task_struct*, %struct.syscall_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @wait_task_inactive(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
