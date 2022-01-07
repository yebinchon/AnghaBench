; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_core_dumps.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_core_dumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_ANOM_ABEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" sig=%ld res=1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_core_dumps(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.audit_buffer*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @audit_enabled, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @SIGQUIT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %32

12:                                               ; preds = %7
  %13 = call i32 (...) @audit_context()
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @AUDIT_ANOM_ABEND, align 4
  %16 = call %struct.audit_buffer* @audit_log_start(i32 %13, i32 %14, i32 %15)
  store %struct.audit_buffer* %16, %struct.audit_buffer** %3, align 8
  %17 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %18 = icmp ne %struct.audit_buffer* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %26 = call i32 @audit_log_task(%struct.audit_buffer* %25)
  %27 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @audit_log_format(%struct.audit_buffer* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %31 = call i32 @audit_log_end(%struct.audit_buffer* %30)
  br label %32

32:                                               ; preds = %24, %23, %11, %6
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_task(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i64) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
