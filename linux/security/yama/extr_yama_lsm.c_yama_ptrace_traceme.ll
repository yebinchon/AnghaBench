; ModuleID = '/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_yama_ptrace_traceme.c'
source_filename = "/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_yama_ptrace_traceme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@ptrace_scope = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"traceme\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @yama_ptrace_traceme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yama_ptrace_traceme(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @ptrace_scope, align 4
  switch i32 %4, label %18 [
    i32 129, label %5
    i32 128, label %15
  ]

5:                                                ; preds = %1
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call i32 (...) @current_user_ns()
  %8 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %9 = call i32 @has_ns_capability(%struct.task_struct* %6, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %5
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %1, %15, %14
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @task_lock(i32 %22)
  %24 = load i32, i32* @current, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = call i32 @report_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.task_struct* %25)
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @task_unlock(i32 %27)
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @has_ns_capability(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @report_access(i8*, i32, %struct.task_struct*) #1

declare dso_local i32 @task_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
