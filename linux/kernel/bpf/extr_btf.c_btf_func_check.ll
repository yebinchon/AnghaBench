; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_func_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.btf_param = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid type_id\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid arg#%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*)* @btf_func_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_func_check(%struct.btf_verifier_env* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca %struct.btf_param*, align 8
  %8 = alloca %struct.btf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %11 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %12 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %11, i32 0, i32 0
  %13 = load %struct.btf*, %struct.btf** %12, align 8
  store %struct.btf* %13, %struct.btf** %8, align 8
  %14 = load %struct.btf*, %struct.btf** %8, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %16 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %14, i32 %17)
  store %struct.btf_type* %18, %struct.btf_type** %6, align 8
  %19 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %20 = icmp ne %struct.btf_type* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %23 = call i32 @btf_type_is_func_proto(%struct.btf_type* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %27 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %28 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %26, %struct.btf_type* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %21
  %32 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %33 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %32, i64 1
  %34 = bitcast %struct.btf_type* %33 to %struct.btf_param*
  store %struct.btf_param* %34, %struct.btf_param** %7, align 8
  %35 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %36 = call i64 @btf_type_vlen(%struct.btf_type* %35)
  store i64 %36, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %64, %31
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %42, i64 %43
  %45 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %41
  %49 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %49, i64 %50
  %52 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %57 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = call i32 (%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) @btf_verifier_log_type(%struct.btf_verifier_env* %56, %struct.btf_type* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %48, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %37

67:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %55, %25
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @btf_type_is_func_proto(%struct.btf_type*) #1

declare dso_local i32 @btf_verifier_log_type(%struct.btf_verifier_env*, %struct.btf_type*, i8*, ...) #1

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
