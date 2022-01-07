; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_var_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_var_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i32, i32 }
%struct.btf_var = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"meta_left:%u meta_needed:%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"vlen != 0\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Invalid type_id\00", align 1
@BTF_VAR_STATIC = common dso_local global i64 0, align 8
@BTF_VAR_GLOBAL_ALLOCATED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Linkage not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_verifier_env*, %struct.btf_type*, i64)* @btf_var_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_var_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btf_var*, align 8
  %9 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 8, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @btf_verifier_log_basic(%struct.btf_verifier_env* %14, %struct.btf_type* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %103

21:                                               ; preds = %3
  %22 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %23 = call i64 @btf_type_vlen(%struct.btf_type* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %27 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %28 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %26, %struct.btf_type* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %103

31:                                               ; preds = %21
  %32 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %33 = call i64 @btf_type_kflag(%struct.btf_type* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %37 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %38 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %36, %struct.btf_type* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %103

41:                                               ; preds = %31
  %42 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %43 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %48 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %51 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__btf_name_valid(i32 %49, i32 %52, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %57 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %58 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %56, %struct.btf_type* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %4, align 8
  br label %103

61:                                               ; preds = %46
  %62 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %63 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %68 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BTF_TYPE_ID_VALID(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %74 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %75 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %73, %struct.btf_type* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %4, align 8
  br label %103

78:                                               ; preds = %66
  %79 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %80 = call %struct.btf_var* @btf_type_var(%struct.btf_type* %79)
  store %struct.btf_var* %80, %struct.btf_var** %8, align 8
  %81 = load %struct.btf_var*, %struct.btf_var** %8, align 8
  %82 = getelementptr inbounds %struct.btf_var, %struct.btf_var* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BTF_VAR_STATIC, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load %struct.btf_var*, %struct.btf_var** %8, align 8
  %88 = getelementptr inbounds %struct.btf_var, %struct.btf_var* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BTF_VAR_GLOBAL_ALLOCATED, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %94 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %95 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %93, %struct.btf_type* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i64, i64* @EINVAL, align 8
  %97 = sub nsw i64 0, %96
  store i64 %97, i64* %4, align 8
  br label %103

98:                                               ; preds = %86, %78
  %99 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %100 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %101 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %99, %struct.btf_type* %100, i8* null)
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %4, align 8
  br label %103

103:                                              ; preds = %98, %92, %72, %55, %35, %25, %13
  %104 = load i64, i64* %4, align 8
  ret i64 %104
}

declare dso_local i32 @btf_verifier_log_basic(%struct.btf_verifier_env*, %struct.btf_type*, i8*, i64, i64) #1

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

declare dso_local i32 @__btf_name_valid(i32, i32, i32) #1

declare dso_local i32 @BTF_TYPE_ID_VALID(i32) #1

declare dso_local %struct.btf_var* @btf_type_var(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
