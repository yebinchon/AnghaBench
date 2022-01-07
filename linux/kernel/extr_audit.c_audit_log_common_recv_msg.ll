; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_common_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_common_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32 }
%struct.audit_buffer = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@audit_enabled = common dso_local global i32 0, align 4
@AUDIT_USER_AVC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pid=%d uid=%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_context*, %struct.audit_buffer**, i64)* @audit_log_common_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_log_common_recv_msg(%struct.audit_context* %0, %struct.audit_buffer** %1, i64 %2) #0 {
  %4 = alloca %struct.audit_context*, align 8
  %5 = alloca %struct.audit_buffer**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.audit_context* %0, %struct.audit_context** %4, align 8
  store %struct.audit_buffer** %1, %struct.audit_buffer*** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @current_uid()
  %10 = call i32 @from_kuid(i32* @init_user_ns, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @task_tgid_nr(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @audit_enabled, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @AUDIT_USER_AVC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.audit_buffer**, %struct.audit_buffer*** %5, align 8
  store %struct.audit_buffer* null, %struct.audit_buffer** %20, align 8
  br label %47

21:                                               ; preds = %15, %3
  %22 = load %struct.audit_context*, %struct.audit_context** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.audit_buffer* @audit_log_start(%struct.audit_context* %22, i32 %23, i64 %24)
  %26 = load %struct.audit_buffer**, %struct.audit_buffer*** %5, align 8
  store %struct.audit_buffer* %25, %struct.audit_buffer** %26, align 8
  %27 = load %struct.audit_buffer**, %struct.audit_buffer*** %5, align 8
  %28 = load %struct.audit_buffer*, %struct.audit_buffer** %27, align 8
  %29 = icmp ne %struct.audit_buffer* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.audit_buffer**, %struct.audit_buffer*** %5, align 8
  %37 = load %struct.audit_buffer*, %struct.audit_buffer** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @audit_log_format(%struct.audit_buffer* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.audit_buffer**, %struct.audit_buffer*** %5, align 8
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %41, align 8
  %43 = call i32 @audit_log_session_info(%struct.audit_buffer* %42)
  %44 = load %struct.audit_buffer**, %struct.audit_buffer*** %5, align 8
  %45 = load %struct.audit_buffer*, %struct.audit_buffer** %44, align 8
  %46 = call i32 @audit_log_task_context(%struct.audit_buffer* %45)
  br label %47

47:                                               ; preds = %35, %34, %19
  ret void
}

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @task_tgid_nr(i32) #1

declare dso_local %struct.audit_buffer* @audit_log_start(%struct.audit_context*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32) #1

declare dso_local i32 @audit_log_session_info(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_task_context(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
