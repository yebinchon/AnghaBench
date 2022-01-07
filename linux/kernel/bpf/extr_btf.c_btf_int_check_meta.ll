; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"meta_left:%u meta_needed:%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"vlen != 0\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@BTF_INT_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid int_data:%x\00", align 1
@BITS_PER_U128 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"nr_bits exceeds %zu\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"nr_bits exceeds type_size\00", align 1
@BTF_INT_SIGNED = common dso_local global i64 0, align 8
@BTF_INT_CHAR = common dso_local global i64 0, align 8
@BTF_INT_BOOL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"Unsupported encoding\00", align 1
@ENOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_verifier_env*, %struct.btf_type*, i64)* @btf_int_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_int_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 8, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %17 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, i64, ...) @btf_verifier_log_basic(%struct.btf_verifier_env* %16, %struct.btf_type* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %115

23:                                               ; preds = %3
  %24 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %25 = call i64 @btf_type_vlen(%struct.btf_type* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %29 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %30 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %28, %struct.btf_type* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %115

33:                                               ; preds = %23
  %34 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %35 = call i64 @btf_type_kflag(%struct.btf_type* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %39 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %40 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %38, %struct.btf_type* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %4, align 8
  br label %115

43:                                               ; preds = %33
  %44 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %45 = call i64 @btf_type_int(%struct.btf_type* %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @BTF_INT_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = and i64 %46, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %53 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, i64, ...) @btf_verifier_log_basic(%struct.btf_verifier_env* %52, %struct.btf_type* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %4, align 8
  br label %115

58:                                               ; preds = %43
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @BTF_INT_BITS(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @BTF_INT_OFFSET(i64 %61)
  %63 = add nsw i64 %60, %62
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @BITS_PER_U128, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %69 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %70 = load i64, i64* @BITS_PER_U128, align 8
  %71 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %68, %struct.btf_type* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* @EINVAL, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %4, align 8
  br label %115

74:                                               ; preds = %58
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @BITS_ROUNDUP_BYTES(i64 %75)
  %77 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %78 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %83 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %84 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %82, %struct.btf_type* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i64, i64* @EINVAL, align 8
  %86 = sub nsw i64 0, %85
  store i64 %86, i64* %4, align 8
  br label %115

87:                                               ; preds = %74
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @BTF_INT_ENCODING(i64 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @BTF_INT_SIGNED, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @BTF_INT_CHAR, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @BTF_INT_BOOL, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %106 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %107 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %105, %struct.btf_type* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %108 = load i64, i64* @ENOTSUPP, align 8
  %109 = sub nsw i64 0, %108
  store i64 %109, i64* %4, align 8
  br label %115

110:                                              ; preds = %100, %96, %92, %87
  %111 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %112 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %113 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %111, %struct.btf_type* %112, i8* null)
  %114 = load i64, i64* %10, align 8
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %110, %104, %81, %67, %51, %37, %27, %15
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i32 @btf_verifier_log_basic(%struct.btf_verifier_env*, %struct.btf_type*, i8*, i64, ...) #1

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

declare dso_local i64 @btf_type_int(%struct.btf_type*) #1

declare dso_local i64 @BTF_INT_BITS(i64) #1

declare dso_local i64 @BTF_INT_OFFSET(i64) #1

declare dso_local i64 @BITS_ROUNDUP_BYTES(i64) #1

declare dso_local i64 @BTF_INT_ENCODING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
