; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_check_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_check_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_member = type { i64 }
%struct.btf_type = type { i64 }

@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"bits_offset exceeds U32_MAX\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_U128 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"nr_copy_bits exceeds 128\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Member exceeds struct_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_int_check_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_int_check_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_verifier_env*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_member*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %6, align 8
  store %struct.btf_type* %1, %struct.btf_type** %7, align 8
  store %struct.btf_member* %2, %struct.btf_member** %8, align 8
  store %struct.btf_type* %3, %struct.btf_type** %9, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %16 = call i64 @btf_type_int(%struct.btf_type* %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %18 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %21 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* @U32_MAX, align 8
  %24 = load i64, i64* %11, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @BTF_INT_OFFSET(i64 %26)
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %31 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %32 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %33 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %30, %struct.btf_type* %31, %struct.btf_member* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %77

36:                                               ; preds = %4
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @BTF_INT_OFFSET(i64 %37)
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @BITS_ROUNDDOWN_BYTES(i64 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @BTF_INT_BITS(i64 %43)
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @BITS_PER_BYTE_MASKED(i64 %45)
  %47 = add nsw i64 %44, %46
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @BITS_PER_U128, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %53 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %54 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %55 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %52, %struct.btf_type* %53, %struct.btf_member* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %77

58:                                               ; preds = %36
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @BITS_ROUNDUP_BYTES(i64 %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62, %58
  %70 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %71 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %72 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %73 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %70, %struct.btf_type* %71, %struct.btf_member* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %69, %51, %29
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @btf_type_int(%struct.btf_type*) #1

declare dso_local i64 @BTF_INT_OFFSET(i64) #1

declare dso_local i32 @btf_verifier_log_member(%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, i8*) #1

declare dso_local i64 @BITS_ROUNDDOWN_BYTES(i64) #1

declare dso_local i64 @BTF_INT_BITS(i64) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i64) #1

declare dso_local i64 @BITS_ROUNDUP_BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
