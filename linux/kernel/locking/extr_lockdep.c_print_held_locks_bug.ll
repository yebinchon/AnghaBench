; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_print_held_locks_bug.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_print_held_locks_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@debug_locks_silent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"====================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"WARNING: %s/%d still has locks held!\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0Astack backtrace:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_held_locks_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_held_locks_bug() #0 {
  %1 = call i32 (...) @debug_locks_off()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %23

4:                                                ; preds = %0
  %5 = load i64, i64* @debug_locks_silent, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %23

8:                                                ; preds = %4
  %9 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = call i32 @task_pid_nr(%struct.TYPE_4__* %14)
  %16 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %15)
  %17 = call i32 (...) @print_kernel_ident()
  %18 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = call i32 @lockdep_print_held_locks(%struct.TYPE_4__* %19)
  %21 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 (...) @dump_stack()
  br label %23

23:                                               ; preds = %8, %7, %3
  ret void
}

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @print_kernel_ident(...) #1

declare dso_local i32 @lockdep_print_held_locks(%struct.TYPE_4__*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
