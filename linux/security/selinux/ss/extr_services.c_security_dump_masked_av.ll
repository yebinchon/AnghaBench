; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_dump_masked_av.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_dump_masked_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.class_datum** }
%struct.class_datum = type { %struct.TYPE_4__, %struct.common_datum* }
%struct.TYPE_4__ = type { i32 }
%struct.common_datum = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.context = type { i32 }
%struct.audit_buffer = type { i32 }

@SYM_CLASSES = common dso_local global i32 0, align 4
@dump_masked_av_helper = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"op=security_compute_av reason=%s scontext=%s tcontext=%s tclass=%s perms=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.policydb*, %struct.context*, %struct.context*, i32, i32, i8*)* @security_dump_masked_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @security_dump_masked_av(%struct.policydb* %0, %struct.context* %1, %struct.context* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.common_datum*, align 8
  %14 = alloca %struct.class_datum*, align 8
  %15 = alloca %struct.audit_buffer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [32 x i8*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %7, align 8
  store %struct.context* %1, %struct.context** %8, align 8
  store %struct.context* %2, %struct.context** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  br label %135

27:                                               ; preds = %6
  %28 = load %struct.policydb*, %struct.policydb** %7, align 8
  %29 = load i32, i32* @SYM_CLASSES, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i8* @sym_name(%struct.policydb* %28, i32 %29, i32 %31)
  store i8* %32, i8** %16, align 8
  %33 = load %struct.policydb*, %struct.policydb** %7, align 8
  %34 = getelementptr inbounds %struct.policydb, %struct.policydb* %33, i32 0, i32 0
  %35 = load %struct.class_datum**, %struct.class_datum*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.class_datum*, %struct.class_datum** %35, i64 %38
  %40 = load %struct.class_datum*, %struct.class_datum** %39, align 8
  store %struct.class_datum* %40, %struct.class_datum** %14, align 8
  %41 = load %struct.class_datum*, %struct.class_datum** %14, align 8
  %42 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %41, i32 0, i32 1
  %43 = load %struct.common_datum*, %struct.common_datum** %42, align 8
  store %struct.common_datum* %43, %struct.common_datum** %13, align 8
  %44 = load %struct.common_datum*, %struct.common_datum** %13, align 8
  %45 = icmp ne %struct.common_datum* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %27
  %47 = load %struct.common_datum*, %struct.common_datum** %13, align 8
  %48 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @dump_masked_av_helper, align 4
  %52 = getelementptr inbounds [32 x i8*], [32 x i8*]* %19, i64 0, i64 0
  %53 = call i64 @hashtab_map(i32 %50, i32 %51, i8** %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %130

56:                                               ; preds = %46, %27
  %57 = load %struct.class_datum*, %struct.class_datum** %14, align 8
  %58 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @dump_masked_av_helper, align 4
  %62 = getelementptr inbounds [32 x i8*], [32 x i8*]* %19, i64 0, i64 0
  %63 = call i64 @hashtab_map(i32 %60, i32 %61, i8** %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %130

66:                                               ; preds = %56
  %67 = load %struct.policydb*, %struct.policydb** %7, align 8
  %68 = load %struct.context*, %struct.context** %8, align 8
  %69 = call i64 @context_struct_to_string(%struct.policydb* %67, %struct.context* %68, i8** %17, i32* %21)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %130

72:                                               ; preds = %66
  %73 = load %struct.policydb*, %struct.policydb** %7, align 8
  %74 = load %struct.context*, %struct.context** %9, align 8
  %75 = call i64 @context_struct_to_string(%struct.policydb* %73, %struct.context* %74, i8** %18, i32* %21)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %130

78:                                               ; preds = %72
  %79 = call i32 (...) @audit_context()
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %82 = call %struct.audit_buffer* @audit_log_start(i32 %79, i32 %80, i32 %81)
  store %struct.audit_buffer* %82, %struct.audit_buffer** %15, align 8
  %83 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %84 = icmp ne %struct.audit_buffer* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %130

86:                                               ; preds = %78
  %87 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = call i32 (%struct.audit_buffer*, i8*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %87, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %89, i8* %90, i8* %91)
  store i32 0, i32* %20, align 4
  br label %93

93:                                               ; preds = %124, %86
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %94, 32
  br i1 %95, label %96, label %127

96:                                               ; preds = %93
  %97 = load i32, i32* %20, align 4
  %98 = shl i32 1, %97
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %124

104:                                              ; preds = %96
  %105 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %106 = load i32, i32* %22, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [32 x i8*], [32 x i8*]* %19, i64 0, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [32 x i8*], [32 x i8*]* %19, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  br label %121

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi i8* [ %119, %115 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %120 ]
  %123 = call i32 (%struct.audit_buffer*, i8*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %109, i8* %122)
  store i32 1, i32* %22, align 4
  br label %124

124:                                              ; preds = %121, %103
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %20, align 4
  br label %93

127:                                              ; preds = %93
  %128 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %129 = call i32 @audit_log_end(%struct.audit_buffer* %128)
  br label %130

130:                                              ; preds = %127, %85, %77, %71, %65, %55
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @kfree(i8* %133)
  br label %135

135:                                              ; preds = %130, %26
  ret void
}

declare dso_local i8* @sym_name(%struct.policydb*, i32, i32) #1

declare dso_local i64 @hashtab_map(i32, i32, i8**) #1

declare dso_local i64 @context_struct_to_string(%struct.policydb*, %struct.context*, i8**, i32*) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
