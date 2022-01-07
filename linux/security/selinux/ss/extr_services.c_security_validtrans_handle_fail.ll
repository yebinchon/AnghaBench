; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_validtrans_handle_fail.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_validtrans_handle_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.policydb }
%struct.policydb = type { i32 }
%struct.context = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"op=security_validate_transition seresult=denied oldcontext=%s newcontext=%s taskcontext=%s tclass=%s\00", align 1
@SYM_CLASSES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_state*, %struct.context*, %struct.context*, %struct.context*, i64)* @security_validtrans_handle_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_validtrans_handle_fail(%struct.selinux_state* %0, %struct.context* %1, %struct.context* %2, %struct.context* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.selinux_state*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca %struct.context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.policydb*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %7, align 8
  store %struct.context* %1, %struct.context** %8, align 8
  store %struct.context* %2, %struct.context** %9, align 8
  store %struct.context* %3, %struct.context** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %20 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.policydb* %22, %struct.policydb** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %23 = load %struct.policydb*, %struct.policydb** %12, align 8
  %24 = load %struct.context*, %struct.context** %8, align 8
  %25 = call i64 @context_struct_to_string(%struct.policydb* %23, %struct.context* %24, i8** %13, i32* %16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %53

28:                                               ; preds = %5
  %29 = load %struct.policydb*, %struct.policydb** %12, align 8
  %30 = load %struct.context*, %struct.context** %9, align 8
  %31 = call i64 @context_struct_to_string(%struct.policydb* %29, %struct.context* %30, i8** %14, i32* %17)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %53

34:                                               ; preds = %28
  %35 = load %struct.policydb*, %struct.policydb** %12, align 8
  %36 = load %struct.context*, %struct.context** %10, align 8
  %37 = call i64 @context_struct_to_string(%struct.policydb* %35, %struct.context* %36, i8** %15, i32* %18)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %53

40:                                               ; preds = %34
  %41 = call i32 (...) @audit_context()
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.policydb*, %struct.policydb** %12, align 8
  %48 = load i32, i32* @SYM_CLASSES, align 4
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @sym_name(%struct.policydb* %47, i32 %48, i64 %50)
  %52 = call i32 @audit_log(i32 %41, i32 %42, i32 %43, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45, i8* %46, i32 %51)
  br label %53

53:                                               ; preds = %40, %39, %33, %27
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %61 = call i32 @enforcing_enabled(%struct.selinux_state* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @context_struct_to_string(%struct.policydb*, %struct.context*, i8**, i32*) #1

declare dso_local i32 @audit_log(i32, i32, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @sym_name(%struct.policydb*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @enforcing_enabled(%struct.selinux_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
