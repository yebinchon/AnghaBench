; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c___ptrace_detach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c___ptrace_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, i32 }

@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.task_struct*)* @__ptrace_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ptrace_detach(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %8 = call i32 @__ptrace_unlink(%struct.task_struct* %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXIT_ZOMBIE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = call i32 @thread_group_leader(%struct.task_struct* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %15
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = call i64 @thread_group_empty(%struct.task_struct* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = call i32 @same_thread_group(i32 %30, %struct.task_struct* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @do_notify_parent(%struct.task_struct* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ignoring_children(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = call i32 @__wake_up_parent(%struct.task_struct* %47, %struct.task_struct* %48)
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %23, %15
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* @EXIT_DEAD, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @__ptrace_unlink(%struct.task_struct*) #1

declare dso_local i32 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @same_thread_group(i32, %struct.task_struct*) #1

declare dso_local i32 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i64 @ignoring_children(i32) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
