; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_print_lock_nested_lock_not_held.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_print_lock_nested_lock_not_held.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.held_lock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@debug_locks_silent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"==================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"WARNING: Nested lock was not taken\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"----------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s/%d is trying to lock:\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\0Abut this task is not holding:\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0Astack backtrace:\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\0Aother info that might help us debug this:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.held_lock*, i64)* @print_lock_nested_lock_not_held to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_lock_nested_lock_not_held(%struct.task_struct* %0, %struct.held_lock* %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.held_lock*, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.held_lock* %1, %struct.held_lock** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (...) @debug_locks_off()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %42

10:                                               ; preds = %3
  %11 = load i64, i64* @debug_locks_silent, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %42

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (...) @print_kernel_ident()
  %19 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = call i32 @task_pid_nr(%struct.task_struct* %23)
  %25 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load %struct.held_lock*, %struct.held_lock** %5, align 8
  %27 = call i32 @print_lock(%struct.held_lock* %26)
  %28 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %29 = load %struct.held_lock*, %struct.held_lock** %5, align 8
  %30 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %33)
  %35 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %36 = call i32 (...) @dump_stack()
  %37 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = call i32 @lockdep_print_held_locks(%struct.task_struct* %38)
  %40 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %41 = call i32 (...) @dump_stack()
  br label %42

42:                                               ; preds = %14, %13, %9
  ret void
}

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @print_kernel_ident(...) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i32 @print_lock(%struct.held_lock*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @lockdep_print_held_locks(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
