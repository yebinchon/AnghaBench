; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_audit_pre.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_audit_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, %struct.aa_label*, i64, i64, i64 }

@aa_g_audit_header = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"apparmor=\00", align 1
@aa_audit_type = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c" operation=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" info=\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" error=%d\00", align 1
@root_ns = common dso_local global %struct.TYPE_8__* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c" namespace=\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" profile=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" label=\00", align 1
@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @audit_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pre(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.common_audit_data*
  store %struct.common_audit_data* %9, %struct.common_audit_data** %5, align 8
  %10 = load i64, i64* @aa_g_audit_header, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %14 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %16 = load i64*, i64** @aa_audit_type, align 8
  %17 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %18 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @audit_log_string(%struct.audit_buffer* %15, i64 %22)
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %26 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %32 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %34 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %35 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @audit_log_string(%struct.audit_buffer* %33, i64 %37)
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %41 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %47 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %49 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %50 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @audit_log_string(%struct.audit_buffer* %48, i64 %52)
  %54 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %55 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %54)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %61 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %62 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %61)
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %59, %45
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %69 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load %struct.aa_label*, %struct.aa_label** %70, align 8
  %72 = icmp ne %struct.aa_label* %71, null
  br i1 %72, label %73, label %119

73:                                               ; preds = %67
  %74 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %75 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load %struct.aa_label*, %struct.aa_label** %76, align 8
  store %struct.aa_label* %77, %struct.aa_label** %6, align 8
  %78 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %79 = call i64 @label_isprofile(%struct.aa_label* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  %82 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %83 = call %struct.aa_profile* @labels_profile(%struct.aa_label* %82)
  store %struct.aa_profile* %83, %struct.aa_profile** %7, align 8
  %84 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %85 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_ns, align 8
  %88 = icmp ne %struct.TYPE_8__* %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %91 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %93 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %94 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %92, i64 %98)
  br label %100

100:                                              ; preds = %89, %81
  %101 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %102 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %104 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %105 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %103, i64 %107)
  br label %118

109:                                              ; preds = %73
  %110 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %111 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %112 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_ns, align 8
  %114 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %115 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call i32 @aa_label_xaudit(%struct.audit_buffer* %112, %struct.TYPE_8__* %113, %struct.aa_label* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %100
  br label %119

119:                                              ; preds = %118, %67
  %120 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %121 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %120)
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %127 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %129 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %130 = call %struct.TYPE_9__* @aad(%struct.common_audit_data* %129)
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %128, i64 %132)
  br label %134

134:                                              ; preds = %125, %119
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_string(%struct.audit_buffer*, i64) #1

declare dso_local %struct.TYPE_9__* @aad(%struct.common_audit_data*) #1

declare dso_local i64 @label_isprofile(%struct.aa_label*) #1

declare dso_local %struct.aa_profile* @labels_profile(%struct.aa_label*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i64) #1

declare dso_local i32 @aa_label_xaudit(%struct.audit_buffer*, %struct.TYPE_8__*, %struct.aa_label*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
