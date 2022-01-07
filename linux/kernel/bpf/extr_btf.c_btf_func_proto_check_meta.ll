; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_proto_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_proto_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32 }
%struct.btf_type = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"meta_left:%u meta_needed:%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid btf_info kind_flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_verifier_env*, %struct.btf_type*, i64)* @btf_func_proto_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_func_proto_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %10 = call i32 @btf_type_vlen(%struct.btf_type* %9)
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %18 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @btf_verifier_log_basic(%struct.btf_verifier_env* %17, %struct.btf_type* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %50

24:                                               ; preds = %3
  %25 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %26 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %31 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %32 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %30, %struct.btf_type* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %50

35:                                               ; preds = %24
  %36 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %37 = call i64 @btf_type_kflag(%struct.btf_type* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %41 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %42 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %40, %struct.btf_type* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %4, align 8
  br label %50

45:                                               ; preds = %35
  %46 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %47 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %48 = call i32 @btf_verifier_log_type(%struct.btf_verifier_env* %46, %struct.btf_type* %47, i8* null)
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %45, %39, %29, %16
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_basic(%struct.btf_verifier_env*, %struct.btf_type*, i8*, i64, i64) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*) #1

declare dso_local i64 @btf_type_kflag(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
