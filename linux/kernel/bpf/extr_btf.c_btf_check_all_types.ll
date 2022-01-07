; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_all_types.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_all_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32, i32, %struct.btf* }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*)* @btf_check_all_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_check_all_types(%struct.btf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf_type*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  %8 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %9 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %8, i32 0, i32 2
  %10 = load %struct.btf*, %struct.btf** %9, align 8
  store %struct.btf* %10, %struct.btf** %4, align 8
  %11 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %12 = call i32 @env_resolve_init(%struct.btf_verifier_env* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %19 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %80, %17
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.btf*, %struct.btf** %4, align 8
  %25 = getelementptr inbounds %struct.btf, %struct.btf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %22
  %29 = load %struct.btf*, %struct.btf** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %29, i32 %30)
  store %struct.btf_type* %31, %struct.btf_type** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %34 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %36 = call i64 @btf_type_needs_resolve(%struct.btf_type* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @env_type_is_resolved(%struct.btf_verifier_env* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %45 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @btf_resolve(%struct.btf_verifier_env* %44, %struct.btf_type* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %84

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %38, %28
  %54 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %55 = call i64 @btf_type_is_func_proto(%struct.btf_type* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %59 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %60 = call i32 @btf_func_proto_check(%struct.btf_verifier_env* %58, %struct.btf_type* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %68 = call i64 @btf_type_is_func(%struct.btf_type* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %72 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %73 = call i32 @btf_func_check(%struct.btf_verifier_env* %71, %struct.btf_type* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %84

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %22

83:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %76, %63, %50, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @env_resolve_init(%struct.btf_verifier_env*) #1

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i32) #1

declare dso_local i64 @btf_type_needs_resolve(%struct.btf_type*) #1

declare dso_local i32 @env_type_is_resolved(%struct.btf_verifier_env*, i32) #1

declare dso_local i32 @btf_resolve(%struct.btf_verifier_env*, %struct.btf_type*, i32) #1

declare dso_local i64 @btf_type_is_func_proto(%struct.btf_type*) #1

declare dso_local i32 @btf_func_proto_check(%struct.btf_verifier_env*, %struct.btf_type*) #1

declare dso_local i64 @btf_type_is_func(%struct.btf_type*) #1

declare dso_local i32 @btf_func_check(%struct.btf_verifier_env*, %struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
