; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_check_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_check_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.btf_member = type { i64, i64 }
%struct.btf_type = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Member is not byte aligned\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Member exceeds struct_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_array_check_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_array_check_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
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
  %15 = alloca %struct.btf*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %6, align 8
  store %struct.btf_type* %1, %struct.btf_type** %7, align 8
  store %struct.btf_member* %2, %struct.btf_member** %8, align 8
  store %struct.btf_type* %3, %struct.btf_type** %9, align 8
  %16 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %17 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %20 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %19, i32 0, i32 0
  %21 = load %struct.btf*, %struct.btf** %20, align 8
  store %struct.btf* %21, %struct.btf** %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @BITS_PER_BYTE_MASKED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %27 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %28 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %29 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %26, %struct.btf_type* %27, %struct.btf_member* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %56

32:                                               ; preds = %4
  %33 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %34 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.btf*, %struct.btf** %15, align 8
  %37 = call i32 @btf_type_id_size(%struct.btf* %36, i64* %13, i64* %14)
  %38 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %39 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @BITS_ROUNDDOWN_BYTES(i64 %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %14, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %32
  %49 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %50 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %51 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %52 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %49, %struct.btf_type* %50, %struct.btf_member* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %48, %25
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @BITS_PER_BYTE_MASKED(i64) #1

declare dso_local i32 @btf_verifier_log_member(%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, i8*) #1

declare dso_local i32 @btf_type_id_size(%struct.btf*, i64*, i64*) #1

declare dso_local i64 @BITS_ROUNDDOWN_BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
