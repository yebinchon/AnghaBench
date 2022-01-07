; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_audit_perms_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_audit_perms_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c" requested_mask=\00", align 1
@aa_file_perm_chrs = common dso_local global i32 0, align 4
@PERMS_CHRS_MASK = common dso_local global i32 0, align 4
@aa_file_perm_names = common dso_local global i32 0, align 4
@PERMS_NAMES_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"denied_mask=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" peer=\00", align 1
@FLAGS_NONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @aa_audit_perms_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aa_audit_perms_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.common_audit_data*
  store %struct.common_audit_data* %7, %struct.common_audit_data** %5, align 8
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %9 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %15 = call i32 @audit_log_format(%struct.audit_buffer* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %17 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %18 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @aa_file_perm_chrs, align 4
  %22 = load i32, i32* @PERMS_CHRS_MASK, align 4
  %23 = load i32, i32* @aa_file_perm_names, align 4
  %24 = load i32, i32* @PERMS_NAMES_MASK, align 4
  %25 = call i32 @aa_audit_perm_mask(%struct.audit_buffer* %16, i64 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %13, %2
  %27 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %28 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %34 = call i32 @audit_log_format(%struct.audit_buffer* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %36 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %37 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @aa_file_perm_chrs, align 4
  %41 = load i32, i32* @PERMS_CHRS_MASK, align 4
  %42 = load i32, i32* @aa_file_perm_names, align 4
  %43 = load i32, i32* @PERMS_NAMES_MASK, align 4
  %44 = call i32 @aa_audit_perm_mask(%struct.audit_buffer* %35, i64 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %26
  %46 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %47 = call i32 @audit_log_format(%struct.audit_buffer* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %49 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %50 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @labels_ns(i32 %52)
  %54 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %55 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FLAGS_NONE, align 4
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call i32 @aa_label_xaudit(%struct.audit_buffer* %48, i32 %53, i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @aa_audit_perm_mask(%struct.audit_buffer*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @aa_label_xaudit(%struct.audit_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @labels_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
