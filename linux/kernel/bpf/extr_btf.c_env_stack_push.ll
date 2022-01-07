; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_stack_push.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_stack_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i64, i64*, i64, %struct.resolve_vertex* }
%struct.resolve_vertex = type { i64, i64, %struct.btf_type* }
%struct.btf_type = type { i32 }

@MAX_RESOLVE_DEPTH = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@NOT_VISITED = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@VISITED = common dso_local global i64 0, align 8
@RESOLVE_TBD = common dso_local global i64 0, align 8
@RESOLVE_PTR = common dso_local global i64 0, align 8
@RESOLVE_STRUCT_OR_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i64)* @env_stack_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @env_stack_push(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resolve_vertex*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %10 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_RESOLVE_DEPTH, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @E2BIG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %80

17:                                               ; preds = %3
  %18 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %19 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NOT_VISITED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %80

29:                                               ; preds = %17
  %30 = load i64, i64* @VISITED, align 8
  %31 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %32 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %37 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %36, i32 0, i32 3
  %38 = load %struct.resolve_vertex*, %struct.resolve_vertex** %37, align 8
  %39 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %40 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %38, i64 %41
  store %struct.resolve_vertex* %43, %struct.resolve_vertex** %8, align 8
  %44 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %45 = load %struct.resolve_vertex*, %struct.resolve_vertex** %8, align 8
  %46 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %45, i32 0, i32 2
  store %struct.btf_type* %44, %struct.btf_type** %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.resolve_vertex*, %struct.resolve_vertex** %8, align 8
  %49 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.resolve_vertex*, %struct.resolve_vertex** %8, align 8
  %51 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %53 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RESOLVE_TBD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %29
  %58 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %59 = call i64 @btf_type_is_ptr(%struct.btf_type* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* @RESOLVE_PTR, align 8
  %63 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %64 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  br label %78

65:                                               ; preds = %57
  %66 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %67 = call i64 @btf_type_is_struct(%struct.btf_type* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %71 = call i64 @btf_type_is_array(%struct.btf_type* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %65
  %74 = load i64, i64* @RESOLVE_STRUCT_OR_ARRAY, align 8
  %75 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %76 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %29
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %26, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @btf_type_is_ptr(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_struct(%struct.btf_type*) #1

declare dso_local i64 @btf_type_is_array(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
