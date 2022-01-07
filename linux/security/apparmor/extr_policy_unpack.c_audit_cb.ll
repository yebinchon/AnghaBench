; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_audit_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_audit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c" ns=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" offset=%ld\00", align 1
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
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %16 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %18 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %19 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %17, i64 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %26 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %32 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %34 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %35 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %33, i64 %37)
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %41 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %48 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %49 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %46, %39
  ret void
}

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
