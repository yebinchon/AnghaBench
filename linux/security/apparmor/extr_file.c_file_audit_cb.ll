; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_file_audit_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_file_audit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@AA_AUDIT_FILE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" requested_mask=\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" denied_mask=\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" fsuid=%d\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" ouid=%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" target=\00", align 1
@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @file_audit_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_audit_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  %6 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.common_audit_data*
  store %struct.common_audit_data* %8, %struct.common_audit_data** %5, align 8
  %9 = call i32 (...) @current_fsuid()
  store i32 %9, i32* %6, align 4
  %10 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %11 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AA_AUDIT_FILE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %19 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %21 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %22 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @audit_file_mask(%struct.audit_buffer* %20, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %28 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AA_AUDIT_FILE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %36 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %38 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %39 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @audit_file_mask(%struct.audit_buffer* %37, i32 %41)
  br label %43

43:                                               ; preds = %34, %26
  %44 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %45 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AA_AUDIT_FILE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @from_kuid(i32* @init_user_ns, i32 %53)
  %55 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %57 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %58 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @from_kuid(i32* @init_user_ns, i32 %61)
  %63 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %51, %43
  %65 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %66 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %72 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %74 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %75 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @labels_ns(i32 %77)
  %79 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %80 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call i32 @aa_label_xaudit(%struct.audit_buffer* %73, i32 %78, i64 %82, i32 %83, i32 %84)
  br label %104

86:                                               ; preds = %64
  %87 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %88 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %95 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %97 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %98 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %96, i64 %101)
  br label %103

103:                                              ; preds = %93, %86
  br label %104

104:                                              ; preds = %103, %70
  ret void
}

declare dso_local i32 @current_fsuid(...) #1

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_file_mask(%struct.audit_buffer*, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @aa_label_xaudit(%struct.audit_buffer*, i32, i64, i32, i32) #1

declare dso_local i32 @labels_ns(i32) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
