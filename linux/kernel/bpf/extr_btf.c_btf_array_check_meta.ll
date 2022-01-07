; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i64, i64 }
%struct.btf_array = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"meta_left:%u meta_needed:%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vlen != 0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"size != 0\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Invalid elem\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Invalid index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_verifier_env*, %struct.btf_type*, i64)* @btf_array_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_array_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btf_array*, align 8
  %9 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %11 = call %struct.btf_array* @btf_type_array(%struct.btf_type* %10)
  store %struct.btf_array* %11, %struct.btf_array** %8, align 8
  store i64 8, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %17 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @btf_verifier_log_basic(%struct.btf_verifier_env* %16, %struct.btf_type* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %104

23:                                               ; preds = %3
  %24 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %25 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %30 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %31 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %29, %struct.btf_type* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %4, align 8
  br label %104

34:                                               ; preds = %23
  %35 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %36 = call i64 @btf_type_vlen(%struct.btf_type* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %40 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %41 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %39, %struct.btf_type* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %4, align 8
  br label %104

44:                                               ; preds = %34
  %45 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %46 = call i64 @btf_type_kflag(%struct.btf_type* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %50 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %51 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %49, %struct.btf_type* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %4, align 8
  br label %104

54:                                               ; preds = %44
  %55 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %56 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %61 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %62 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %60, %struct.btf_type* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %4, align 8
  br label %104

65:                                               ; preds = %54
  %66 = load %struct.btf_array*, %struct.btf_array** %8, align 8
  %67 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.btf_array*, %struct.btf_array** %8, align 8
  %72 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BTF_TYPE_ID_VALID(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %78 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %79 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %77, %struct.btf_type* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i64, i64* @EINVAL, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %4, align 8
  br label %104

82:                                               ; preds = %70
  %83 = load %struct.btf_array*, %struct.btf_array** %8, align 8
  %84 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.btf_array*, %struct.btf_array** %8, align 8
  %89 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BTF_TYPE_ID_VALID(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %95 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %96 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %94, %struct.btf_type* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i64, i64* @EINVAL, align 8
  %98 = sub nsw i64 0, %97
  store i64 %98, i64* %4, align 8
  br label %104

99:                                               ; preds = %87
  %100 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %101 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %102 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %100, %struct.btf_type* %101, i8* null)
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %99, %93, %76, %59, %48, %38, %28, %15
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local %struct.btf_array* @btf_type_array(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_basic(%struct.btf_verifier_env*, %struct.btf_type*, i8*, i64, i64) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

declare dso_local i32 @BTF_TYPE_ID_VALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
