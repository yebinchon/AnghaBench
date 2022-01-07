; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i8*, i32 }
%struct.btf_type = type { i32 }
%struct.resolve_vertex = type { i32, i8* }
%struct.TYPE_2__ = type { i32 (%struct.btf_verifier_env*, %struct.resolve_vertex*)* }

@RESOLVE_TBD = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Exceeded max resolving depth:%u\00", align 1
@MAX_RESOLVE_DEPTH = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Loop detected\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid resolve state\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*)* @btf_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_resolve(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i8* %2) #0 {
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.resolve_vertex*, align 8
  %9 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %11 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @RESOLVE_TBD, align 4
  %14 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %15 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %17 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @env_stack_push(%struct.btf_verifier_env* %16, %struct.btf_type* %17, i8* %18)
  br label %20

20:                                               ; preds = %29, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %25 = call %struct.resolve_vertex* @env_stack_peak(%struct.btf_verifier_env* %24)
  store %struct.resolve_vertex* %25, %struct.resolve_vertex** %8, align 8
  %26 = icmp ne %struct.resolve_vertex* %25, null
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = load %struct.resolve_vertex*, %struct.resolve_vertex** %8, align 8
  %31 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %34 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.resolve_vertex*, %struct.resolve_vertex** %8, align 8
  %36 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_2__* @btf_type_ops(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.btf_verifier_env*, %struct.resolve_vertex*)*, i32 (%struct.btf_verifier_env*, %struct.resolve_vertex*)** %39, align 8
  %41 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %42 = load %struct.resolve_vertex*, %struct.resolve_vertex** %8, align 8
  %43 = call i32 %40(%struct.btf_verifier_env* %41, %struct.resolve_vertex* %42)
  store i32 %43, i32* %9, align 4
  br label %20

44:                                               ; preds = %27
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %47 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @E2BIG, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %54 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %55 = load i32, i32* @MAX_RESOLVE_DEPTH, align 4
  %56 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %53, %struct.btf_type* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %67

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EEXIST, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %64 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %65 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %63, %struct.btf_type* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %72 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @btf_resolve_valid(%struct.btf_verifier_env* %71, %struct.btf_type* %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %78 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %79 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %77, %struct.btf_type* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %76, %70, %67
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %85 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @env_stack_push(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local %struct.resolve_vertex* @env_stack_peak(%struct.btf_verifier_env*) #1

declare dso_local %struct.TYPE_2__* @btf_type_ops(i32) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) #1

declare dso_local i32 @btf_resolve_valid(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
