; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_signal_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_signal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@audit_sig_pid = common dso_local global i32 0, align 4
@audit_sig_uid = common dso_local global i32 0, align 4
@audit_sig_sid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_signal_info(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = call i32 (...) @current_uid()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = call i64 @auditd_test_task(%struct.task_struct* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SIGTERM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SIGHUP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SIGUSR1, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SIGUSR2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %19, %15, %11
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @task_tgid_nr(i32 %28)
  store i32 %29, i32* @audit_sig_pid, align 4
  %30 = load i32, i32* @current, align 4
  %31 = call i32 @audit_get_loginuid(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @uid_valid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* @audit_sig_uid, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* @audit_sig_uid, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* @current, align 4
  %41 = call i32 @security_task_getsecid(i32 %40, i32* @audit_sig_sid)
  br label %42

42:                                               ; preds = %39, %23, %2
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = call i32 @audit_signal_info_syscall(%struct.task_struct* %43)
  ret i32 %44
}

declare dso_local i32 @current_uid(...) #1

declare dso_local i64 @auditd_test_task(%struct.task_struct*) #1

declare dso_local i32 @task_tgid_nr(i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @security_task_getsecid(i32, i32*) #1

declare dso_local i32 @audit_signal_info_syscall(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
