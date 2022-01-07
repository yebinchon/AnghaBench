; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_struct_check_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_struct_check_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_member = type { i64 }
%struct.btf_type = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Member is not byte aligned\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Member exceeds struct_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_struct_check_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_struct_check_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_verifier_env*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_member*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %6, align 8
  store %struct.btf_type* %1, %struct.btf_type** %7, align 8
  store %struct.btf_member* %2, %struct.btf_member** %8, align 8
  store %struct.btf_type* %3, %struct.btf_type** %9, align 8
  %13 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %14 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @BITS_PER_BYTE_MASKED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %21 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %22 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %23 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %20, %struct.btf_type* %21, %struct.btf_member* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %47

26:                                               ; preds = %4
  %27 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %28 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @BITS_ROUNDDOWN_BYTES(i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %36 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %41 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %42 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %43 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %40, %struct.btf_type* %41, %struct.btf_member* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %39, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @BITS_PER_BYTE_MASKED(i64) #1

declare dso_local i32 @btf_verifier_log_member(%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, i8*) #1

declare dso_local i64 @BITS_ROUNDDOWN_BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
