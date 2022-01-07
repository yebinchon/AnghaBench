; ModuleID = '/home/carl/AnghaBench/linux/security/extr_lsm_audit.c_common_lsm_audit.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_lsm_audit.c_common_lsm_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_audit_data = type opaque
%struct.audit_buffer = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@AUDIT_AVC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @common_lsm_audit(%struct.common_audit_data* %0, void (%struct.audit_buffer*, i8*)* %1, void (%struct.audit_buffer*, i8*)* %2) #0 {
  %4 = alloca %struct.common_audit_data*, align 8
  %5 = alloca void (%struct.audit_buffer*, i8*)*, align 8
  %6 = alloca void (%struct.audit_buffer*, i8*)*, align 8
  %7 = alloca %struct.audit_buffer*, align 8
  store %struct.common_audit_data* %0, %struct.common_audit_data** %4, align 8
  store void (%struct.audit_buffer*, i8*)* %1, void (%struct.audit_buffer*, i8*)** %5, align 8
  store void (%struct.audit_buffer*, i8*)* %2, void (%struct.audit_buffer*, i8*)** %6, align 8
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %9 = icmp eq %struct.common_audit_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %44

11:                                               ; preds = %3
  %12 = call i32 (...) @audit_context()
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = load i32, i32* @__GFP_NOWARN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AUDIT_AVC, align 4
  %17 = call %struct.audit_buffer* @audit_log_start(i32 %12, i32 %15, i32 %16)
  store %struct.audit_buffer* %17, %struct.audit_buffer** %7, align 8
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %19 = icmp eq %struct.audit_buffer* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %44

21:                                               ; preds = %11
  %22 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %5, align 8
  %23 = icmp ne void (%struct.audit_buffer*, i8*)* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %5, align 8
  %26 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %27 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %28 = bitcast %struct.common_audit_data* %27 to i8*
  call void %25(%struct.audit_buffer* %26, i8* %28)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %31 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %32 = bitcast %struct.common_audit_data* %31 to i8*
  %33 = call i32 @dump_common_audit_data(%struct.audit_buffer* %30, i8* %32)
  %34 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %6, align 8
  %35 = icmp ne void (%struct.audit_buffer*, i8*)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %6, align 8
  %38 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %39 = load %struct.common_audit_data*, %struct.common_audit_data** %4, align 8
  %40 = bitcast %struct.common_audit_data* %39 to i8*
  call void %37(%struct.audit_buffer* %38, i8* %40)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %43 = call i32 @audit_log_end(%struct.audit_buffer* %42)
  br label %44

44:                                               ; preds = %41, %20, %10
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @dump_common_audit_data(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
