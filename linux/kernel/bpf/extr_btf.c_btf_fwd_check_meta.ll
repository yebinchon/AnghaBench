; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_fwd_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_fwd_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"vlen != 0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"type != 0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i32)* @btf_fwd_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_fwd_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i32 %2) #0 {
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
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %19 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %24 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %25 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %23, %struct.btf_type* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %17
  %29 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %30 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %35 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %38 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @btf_name_valid_identifier(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %33, %28
  %43 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %44 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %45 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %43, %struct.btf_type* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %50 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %51 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %49, %struct.btf_type* %50, i8* null)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %42, %22, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i32 @btf_name_valid_identifier(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
