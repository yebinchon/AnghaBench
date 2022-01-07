; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_seccomp_actions_logged.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_seccomp_actions_logged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"op=seccomp-logging actions=%s old-actions=%s res=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_seccomp_actions_logged(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_buffer*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @audit_enabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %31

11:                                               ; preds = %3
  %12 = call i32 (...) @audit_context()
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @AUDIT_CONFIG_CHANGE, align 4
  %15 = call %struct.audit_buffer* @audit_log_start(i32 %12, i32 %13, i32 %14)
  store %struct.audit_buffer* %15, %struct.audit_buffer** %7, align 8
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %17 = icmp ne %struct.audit_buffer* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %31

23:                                               ; preds = %11
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @audit_log_format(%struct.audit_buffer* %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i32 %27)
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %30 = call i32 @audit_log_end(%struct.audit_buffer* %29)
  br label %31

31:                                               ; preds = %23, %22, %10
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
