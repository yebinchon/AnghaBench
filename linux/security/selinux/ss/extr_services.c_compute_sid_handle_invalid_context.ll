; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_compute_sid_handle_invalid_context.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_compute_sid_handle_invalid_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.policydb }
%struct.policydb = type { i32 }
%struct.context = type { i32 }
%struct.audit_buffer = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"op=security_compute_sid invalid_context=\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c" scontext=%s tcontext=%s tclass=%s\00", align 1
@SYM_CLASSES = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_state*, %struct.context*, %struct.context*, i64, %struct.context*)* @compute_sid_handle_invalid_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_sid_handle_invalid_context(%struct.selinux_state* %0, %struct.context* %1, %struct.context* %2, i64 %3, %struct.context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.selinux_state*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.context*, align 8
  %12 = alloca %struct.policydb*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.audit_buffer*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %7, align 8
  store %struct.context* %1, %struct.context** %8, align 8
  store %struct.context* %2, %struct.context** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.context* %4, %struct.context** %11, align 8
  %20 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %21 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.policydb* %23, %struct.policydb** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %24 = load %struct.policydb*, %struct.policydb** %12, align 8
  %25 = load %struct.context*, %struct.context** %8, align 8
  %26 = call i64 @context_struct_to_string(%struct.policydb* %24, %struct.context* %25, i8** %13, i64* %16)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %64

29:                                               ; preds = %5
  %30 = load %struct.policydb*, %struct.policydb** %12, align 8
  %31 = load %struct.context*, %struct.context** %9, align 8
  %32 = call i64 @context_struct_to_string(%struct.policydb* %30, %struct.context* %31, i8** %14, i64* %17)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %64

35:                                               ; preds = %29
  %36 = load %struct.policydb*, %struct.policydb** %12, align 8
  %37 = load %struct.context*, %struct.context** %11, align 8
  %38 = call i64 @context_struct_to_string(%struct.policydb* %36, %struct.context* %37, i8** %15, i64* %18)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %35
  %42 = call i32 (...) @audit_context()
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %45 = call %struct.audit_buffer* @audit_log_start(i32 %42, i32 %43, i32 %44)
  store %struct.audit_buffer* %45, %struct.audit_buffer** %19, align 8
  %46 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %47 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i64, i64* %18, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @audit_log_n_untrustedstring(%struct.audit_buffer* %48, i8* %49, i64 %51)
  %53 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load %struct.policydb*, %struct.policydb** %12, align 8
  %57 = load i32, i32* @SYM_CLASSES, align 4
  %58 = load i64, i64* %10, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i32 @sym_name(%struct.policydb* %56, i32 %57, i64 %59)
  %61 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55, i32 %60)
  %62 = load %struct.audit_buffer*, %struct.audit_buffer** %19, align 8
  %63 = call i32 @audit_log_end(%struct.audit_buffer* %62)
  br label %64

64:                                               ; preds = %41, %40, %34, %28
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %72 = call i32 @enforcing_enabled(%struct.selinux_state* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @EACCES, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @context_struct_to_string(%struct.policydb*, %struct.context*, i8**, i64*) #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_n_untrustedstring(%struct.audit_buffer*, i8*, i64) #1

declare dso_local i32 @sym_name(%struct.policydb*, i32, i64) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @enforcing_enabled(%struct.selinux_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
