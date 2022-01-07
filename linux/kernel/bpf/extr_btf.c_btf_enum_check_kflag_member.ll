; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_enum_check_kflag_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_enum_check_kflag_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_member = type { i32 }
%struct.btf_type = type { i64 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Member is not byte aligned\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid member bitfield_size\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Member exceeds struct_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_enum_check_kflag_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_enum_check_kflag_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
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
  %15 = load i32, i32* @BITS_PER_BYTE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  store i64 %17, i64* %14, align 8
  %18 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %19 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @BTF_MEMBER_BIT_OFFSET(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %23 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @BTF_MEMBER_BITFIELD_SIZE(i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @BITS_PER_BYTE_MASKED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %34 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %35 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %36 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %33, %struct.btf_type* %34, %struct.btf_member* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %72

39:                                               ; preds = %28
  %40 = load i64, i64* %14, align 8
  store i64 %40, i64* %11, align 8
  br label %53

41:                                               ; preds = %4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %47 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %48 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %49 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %46, %struct.btf_type* %47, %struct.btf_member* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %72

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %55 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i64 @BITS_ROUNDUP_BYTES(i64 %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %66 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %67 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %68 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %65, %struct.btf_type* %66, %struct.btf_member* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %72

71:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %64, %45, %32
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @BTF_MEMBER_BIT_OFFSET(i32) #1

declare dso_local i64 @BTF_MEMBER_BITFIELD_SIZE(i32) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i64) #1

declare dso_local i32 @btf_verifier_log_member(%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, i8*) #1

declare dso_local i64 @BITS_ROUNDUP_BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
