; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_seccomp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_seccomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_SECCOMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c" sig=%ld arch=%x syscall=%ld compat=%d ip=0x%lx code=0x%x\00", align 1
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_seccomp(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_buffer*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @audit_context()
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @AUDIT_SECCOMP, align 4
  %11 = call %struct.audit_buffer* @audit_log_start(i32 %8, i32 %9, i32 %10)
  store %struct.audit_buffer* %11, %struct.audit_buffer** %7, align 8
  %12 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %13 = icmp ne %struct.audit_buffer* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %21 = call i32 @audit_log_task(%struct.audit_buffer* %20)
  %22 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @syscall_get_arch(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 (...) @in_compat_syscall()
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @KSTK_EIP(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @audit_log_format(%struct.audit_buffer* %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %25, i64 %26, i32 %27, i32 %29, i32 %30)
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %33 = call i32 @audit_log_end(%struct.audit_buffer* %32)
  br label %34

34:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_task(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @syscall_get_arch(i32) #1

declare dso_local i32 @in_compat_syscall(...) #1

declare dso_local i32 @KSTK_EIP(i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
