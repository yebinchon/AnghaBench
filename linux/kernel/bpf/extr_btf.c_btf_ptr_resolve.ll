; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_ptr_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_ptr_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.resolve_vertex = type { %struct.btf_type* }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid type_id\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.resolve_vertex*)* @btf_ptr_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_ptr_resolve(%struct.btf_verifier_env* %0, %struct.resolve_vertex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.resolve_vertex*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf*, align 8
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.resolve_vertex* %1, %struct.resolve_vertex** %5, align 8
  %12 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %13 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %12, i32 0, i32 0
  %14 = load %struct.btf_type*, %struct.btf_type** %13, align 8
  store %struct.btf_type* %14, %struct.btf_type** %7, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %16 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %19 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %18, i32 0, i32 0
  %20 = load %struct.btf*, %struct.btf** %19, align 8
  store %struct.btf* %20, %struct.btf** %9, align 8
  %21 = load %struct.btf*, %struct.btf** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %21, i32 %22)
  store %struct.btf_type* %23, %struct.btf_type** %6, align 8
  %24 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %25 = icmp ne %struct.btf_type* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %28 = call i64 @btf_type_is_resolve_source_only(%struct.btf_type* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %2
  %31 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %32 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %33 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %32, i32 0, i32 0
  %34 = load %struct.btf_type*, %struct.btf_type** %33, align 8
  %35 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %31, %struct.btf_type* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %117

38:                                               ; preds = %26
  %39 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %40 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %41 = call i32 @env_type_is_resolve_sink(%struct.btf_verifier_env* %39, %struct.btf_type* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @env_type_is_resolved(%struct.btf_verifier_env* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %50 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @env_stack_push(%struct.btf_verifier_env* %49, %struct.btf_type* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %117

53:                                               ; preds = %43, %38
  %54 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %55 = call i64 @btf_type_is_modifier(%struct.btf_type* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.btf*, %struct.btf** %9, align 8
  %60 = call %struct.btf_type* @btf_type_id_resolve(%struct.btf* %59, i32* %11)
  store %struct.btf_type* %60, %struct.btf_type** %10, align 8
  %61 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %62 = call i64 @btf_type_is_ptr(%struct.btf_type* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %66 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %67 = call i32 @env_type_is_resolve_sink(%struct.btf_verifier_env* %65, %struct.btf_type* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @env_type_is_resolved(%struct.btf_verifier_env* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %76 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @env_stack_push(%struct.btf_verifier_env* %75, %struct.btf_type* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %117

79:                                               ; preds = %69, %64, %57
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.btf*, %struct.btf** %9, align 8
  %82 = call i32 @btf_type_id_size(%struct.btf* %81, i32* %8, i32* null)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %80
  %85 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @env_type_is_resolved(%struct.btf_verifier_env* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.btf*, %struct.btf** %9, align 8
  %91 = call %struct.btf_type* @btf_type_id_resolve(%struct.btf* %90, i32* %8)
  store %struct.btf_type* %91, %struct.btf_type** %6, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %94 = call i32 @btf_type_is_void(%struct.btf_type* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %92
  %97 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %98 = call i32 @btf_type_is_fwd(%struct.btf_type* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %102 = call i32 @btf_type_is_func_proto(%struct.btf_type* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %106 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %107 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %106, i32 0, i32 0
  %108 = load %struct.btf_type*, %struct.btf_type** %107, align 8
  %109 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %105, %struct.btf_type* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %117

112:                                              ; preds = %100, %96, %92
  br label %113

113:                                              ; preds = %112, %80
  %114 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @env_stack_pop_resolved(%struct.btf_verifier_env* %114, i32 %115, i32 0)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %104, %74, %48, %30
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i32) #1

declare dso_local i64 @btf_type_is_resolve_source_only(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i32 @env_type_is_resolve_sink(%struct.btf_verifier_env*, %struct.btf_type*) #1

declare dso_local i64 @env_type_is_resolved(%struct.btf_verifier_env*, i32) #1

declare dso_local i32 @env_stack_push(%struct.btf_verifier_env*, %struct.btf_type*, i32) #1

declare dso_local i64 @btf_type_is_modifier(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf_type_id_resolve(%struct.btf*, i32*) #1

declare dso_local i64 @btf_type_is_ptr(%struct.btf_type*) #1

declare dso_local i32 @btf_type_id_size(%struct.btf*, i32*, i32*) #1

declare dso_local i32 @btf_type_is_void(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_fwd(%struct.btf_type*) #1

declare dso_local i32 @btf_type_is_func_proto(%struct.btf_type*) #1

declare dso_local i32 @env_stack_pop_resolved(%struct.btf_verifier_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
