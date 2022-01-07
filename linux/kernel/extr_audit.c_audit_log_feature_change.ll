; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_feature_change.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_feature_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i64 0, align 8
@AUDIT_OFF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_FEATURE_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c" feature=%s old=%u new=%u old_lock=%u new_lock=%u res=%d\00", align 1
@audit_feature_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @audit_log_feature_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_log_feature_change(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.audit_buffer*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* @audit_enabled, align 8
  %15 = load i64, i64* @AUDIT_OFF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  br label %59

18:                                               ; preds = %6
  %19 = call i32 (...) @audit_context()
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @AUDIT_FEATURE_CHANGE, align 4
  %22 = call %struct.audit_buffer* @audit_log_start(i32 %19, i32 %20, i32 %21)
  store %struct.audit_buffer* %22, %struct.audit_buffer** %13, align 8
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %24 = icmp ne %struct.audit_buffer* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %28 = call i32 @audit_log_task_info(%struct.audit_buffer* %27)
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %30 = load i32*, i32** @audit_feature_names, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @audit_log_format(%struct.audit_buffer* %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %55)
  %57 = load %struct.audit_buffer*, %struct.audit_buffer** %13, align 8
  %58 = call i32 @audit_log_end(%struct.audit_buffer* %57)
  br label %59

59:                                               ; preds = %26, %25, %17
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_task_info(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
