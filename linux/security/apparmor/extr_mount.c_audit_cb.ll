; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_audit_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_audit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c" fstype=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" srcname=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" trans=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" flags=\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" options=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @audit_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.common_audit_data*
  store %struct.common_audit_data* %7, %struct.common_audit_data** %5, align 8
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %9 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %16 = call i32 @audit_log_format(%struct.audit_buffer* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %18 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %19 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %17, i64 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %26 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %33 = call i32 @audit_log_format(%struct.audit_buffer* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %35 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %36 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %34, i64 %39)
  br label %41

41:                                               ; preds = %31, %24
  %42 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %43 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %50 = call i32 @audit_log_format(%struct.audit_buffer* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %52 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %53 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %51, i64 %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %60 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %67 = call i32 @audit_log_format(%struct.audit_buffer* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %69 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %70 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @audit_mnt_flags(%struct.audit_buffer* %68, i64 %73)
  %75 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %76 = call i32 @audit_log_format(%struct.audit_buffer* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %65, %58
  %78 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %79 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %86 = call i32 @audit_log_format(%struct.audit_buffer* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %88 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %89 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %87, i64 %92)
  br label %94

94:                                               ; preds = %84, %77
  ret void
}

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i64) #1

declare dso_local i32 @audit_mnt_flags(%struct.audit_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
