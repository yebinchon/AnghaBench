; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_link_denied.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_link_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_ANOM_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"op=%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" res=0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_link_denied(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audit_buffer*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @audit_enabled, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i64 (...) @audit_dummy_context()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  br label %28

10:                                               ; preds = %6
  %11 = call i32 (...) @audit_context()
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @AUDIT_ANOM_LINK, align 4
  %14 = call %struct.audit_buffer* @audit_log_start(i32 %11, i32 %12, i32 %13)
  store %struct.audit_buffer* %14, %struct.audit_buffer** %3, align 8
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %16 = icmp ne %struct.audit_buffer* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %28

18:                                               ; preds = %10
  %19 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %23 = call i32 @audit_log_task_info(%struct.audit_buffer* %22)
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %25 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %27 = call i32 @audit_log_end(%struct.audit_buffer* %26)
  br label %28

28:                                               ; preds = %18, %17, %9
  ret void
}

declare dso_local i64 @audit_dummy_context(...) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_task_info(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
