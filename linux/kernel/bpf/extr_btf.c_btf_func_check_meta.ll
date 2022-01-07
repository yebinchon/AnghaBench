; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vlen != 0\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, i32)* @btf_func_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_func_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %9 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %14 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %17 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @btf_name_valid_identifier(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %12, %3
  %22 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %23 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %24 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %22, %struct.btf_type* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %12
  %28 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %29 = call i64 @btf_type_vlen(%struct.btf_type* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %33 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %34 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %32, %struct.btf_type* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %51

37:                                               ; preds = %27
  %38 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %39 = call i64 @btf_type_kflag(%struct.btf_type* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %43 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %44 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %42, %struct.btf_type* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %49 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %50 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %48, %struct.btf_type* %49, i8* null)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %41, %31, %21
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @btf_name_valid_identifier(i32, i32) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
