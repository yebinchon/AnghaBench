; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_audit_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_audit_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.audit_buffer = type { i32 }

@hash_algo_name = common dso_local global i8** null, align 8
@IMA_AUDITED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_RULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"file=\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" hash=\22%s:%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_audit_measurement(%struct.integrity_iint_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.integrity_iint_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.audit_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.integrity_iint_cache* %0, %struct.integrity_iint_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8**, i8*** @hash_algo_name, align 8
  %10 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %11 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8*, i8** %9, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %18 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IMA_AUDITED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %26 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %100

37:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %41 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %53 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hex_byte_pack(i8* %51, i32 %60)
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 0, i8* %70, align 1
  %71 = call i32 (...) @audit_context()
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load i32, i32* @AUDIT_INTEGRITY_RULE, align 4
  %74 = call %struct.audit_buffer* @audit_log_start(i32 %71, i32 %72, i32 %73)
  store %struct.audit_buffer* %74, %struct.audit_buffer** %5, align 8
  %75 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %76 = icmp ne %struct.audit_buffer* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  br label %97

78:                                               ; preds = %65
  %79 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %80 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %81, i8* %82)
  %84 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %89 = call i32 @audit_log_task_info(%struct.audit_buffer* %88)
  %90 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %91 = call i32 @audit_log_end(%struct.audit_buffer* %90)
  %92 = load i32, i32* @IMA_AUDITED, align 4
  %93 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %3, align 8
  %94 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %78, %77
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @kfree(i8* %98)
  br label %100

100:                                              ; preds = %97, %36, %23
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hex_byte_pack(i8*, i32) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_task_info(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
