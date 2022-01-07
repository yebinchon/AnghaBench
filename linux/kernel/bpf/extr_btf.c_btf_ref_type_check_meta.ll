; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_ref_type_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_ref_type_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"vlen != 0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid type_id\00", align 1
@BTF_KIND_TYPEDEF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i32)* @btf_ref_type_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_ref_type_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %9 = call i64 @btf_type_vlen(%struct.btf_type* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %13 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %14 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %12, %struct.btf_type* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %19 = call i64 @btf_type_kflag(%struct.btf_type* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %23 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %24 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %22, %struct.btf_type* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %17
  %28 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %29 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BTF_TYPE_ID_VALID(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %35 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %36 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %34, %struct.btf_type* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %83

39:                                               ; preds = %27
  %40 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %41 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @BTF_INFO_KIND(i32 %42)
  %44 = load i64, i64* @BTF_KIND_TYPEDEF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %48 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %53 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %56 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @btf_name_valid_identifier(i32 %54, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %62 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %63 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %61, %struct.btf_type* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %51
  br label %79

67:                                               ; preds = %39
  %68 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %69 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %74 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %75 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %73, %struct.btf_type* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %81 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %82 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %80, %struct.btf_type* %81, i8* null)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %72, %60, %33, %21, %11
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

declare dso_local i32 @BTF_TYPE_ID_VALID(i32) #1

declare dso_local i64 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @btf_name_valid_identifier(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
