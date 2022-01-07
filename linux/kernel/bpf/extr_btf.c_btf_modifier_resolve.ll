; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_modifier_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_modifier_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.resolve_vertex = type { %struct.btf_type* }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid type_id\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.resolve_vertex*)* @btf_modifier_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_modifier_resolve(%struct.btf_verifier_env* %0, %struct.resolve_vertex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.resolve_vertex*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.resolve_vertex* %1, %struct.resolve_vertex** %5, align 8
  %10 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %11 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %10, i32 0, i32 0
  %12 = load %struct.btf_type*, %struct.btf_type** %11, align 8
  store %struct.btf_type* %12, %struct.btf_type** %6, align 8
  %13 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %14 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %17 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %16, i32 0, i32 0
  %18 = load %struct.btf*, %struct.btf** %17, align 8
  store %struct.btf* %18, %struct.btf** %9, align 8
  %19 = load %struct.btf*, %struct.btf** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %19, i32 %20)
  store %struct.btf_type* %21, %struct.btf_type** %7, align 8
  %22 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %23 = icmp ne %struct.btf_type* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %26 = call i64 @btf_type_is_resolve_source_only(%struct.btf_type* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %2
  %29 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %30 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %31 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %30, i32 0, i32 0
  %32 = load %struct.btf_type*, %struct.btf_type** %31, align 8
  %33 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %29, %struct.btf_type* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %88

36:                                               ; preds = %24
  %37 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %38 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %39 = call i32 @env_type_is_resolve_sink(%struct.btf_verifier_env* %37, %struct.btf_type* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @env_type_is_resolved(%struct.btf_verifier_env* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %48 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @env_stack_push(%struct.btf_verifier_env* %47, %struct.btf_type* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %88

51:                                               ; preds = %41, %36
  %52 = load %struct.btf*, %struct.btf** %9, align 8
  %53 = call i32 @btf_type_id_size(%struct.btf* %52, i32* %8, i32* null)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %51
  %56 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @env_type_is_resolved(%struct.btf_verifier_env* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.btf*, %struct.btf** %9, align 8
  %62 = call %struct.btf_type* @btf_type_id_resolve(%struct.btf* %61, i32* %8)
  store %struct.btf_type* %62, %struct.btf_type** %7, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %65 = call i32 @btf_type_is_void(%struct.btf_type* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %69 = call i32 @btf_type_is_fwd(%struct.btf_type* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %73 = call i32 @btf_type_is_func_proto(%struct.btf_type* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %77 = load %struct.resolve_vertex*, %struct.resolve_vertex** %5, align 8
  %78 = getelementptr inbounds %struct.resolve_vertex, %struct.resolve_vertex* %77, i32 0, i32 0
  %79 = load %struct.btf_type*, %struct.btf_type** %78, align 8
  %80 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %76, %struct.btf_type* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %71, %67, %63
  br label %84

84:                                               ; preds = %83, %51
  %85 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @env_stack_pop_resolved(%struct.btf_verifier_env* %85, i32 %86, i32 0)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %75, %46, %28
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i32) #1

declare dso_local i64 @btf_type_is_resolve_source_only(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i32 @env_type_is_resolve_sink(%struct.btf_verifier_env*, %struct.btf_type*) #1

declare dso_local i64 @env_type_is_resolved(%struct.btf_verifier_env*, i32) #1

declare dso_local i32 @env_stack_push(%struct.btf_verifier_env*, %struct.btf_type*, i32) #1

declare dso_local i32 @btf_type_id_size(%struct.btf*, i32*, i32*) #1

declare dso_local %struct.btf_type* @btf_type_id_resolve(%struct.btf*, i32*) #1

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
