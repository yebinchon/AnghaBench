; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_check_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i32, i32 }
%struct.btf_type = type { i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.btf_verifier_env*, %struct.btf_type*, i32)* }

@.str = private unnamed_addr constant [34 x i8] c"[%u] meta_left:%u meta_needed:%zu\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@BTF_INFO_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"[%u] Invalid btf_info:%x\00", align 1
@BTF_KIND_MAX = common dso_local global i32 0, align 4
@BTF_KIND_UNKN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"[%u] Invalid kind:%u\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[%u] Invalid name_offset:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_verifier_env*, %struct.btf_type*, i32)* @btf_check_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_check_meta(%struct.btf_verifier_env* %0, %struct.btf_type* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btf_verifier_env*, align 8
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %5, align 8
  store %struct.btf_type* %1, %struct.btf_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 8
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %16 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %17 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (%struct.btf_verifier_env*, i8*, i32, i32, ...) @btf_verifier_log(%struct.btf_verifier_env* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i64 8)
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %115

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %29 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BTF_INFO_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %37 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %38 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %41 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.btf_verifier_env*, i8*, i32, i32, ...) @btf_verifier_log(%struct.btf_verifier_env* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %4, align 8
  br label %115

46:                                               ; preds = %23
  %47 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %48 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BTF_INFO_KIND(i32 %49)
  %51 = load i32, i32* @BTF_KIND_MAX, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %55 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BTF_INFO_KIND(i32 %56)
  %58 = load i32, i32* @BTF_KIND_UNKN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %53, %46
  %61 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %62 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %63 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %66 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BTF_INFO_KIND(i32 %67)
  %69 = call i32 (%struct.btf_verifier_env*, i8*, i32, i32, ...) @btf_verifier_log(%struct.btf_verifier_env* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load i64, i64* @EINVAL, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %4, align 8
  br label %115

72:                                               ; preds = %53
  %73 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %74 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %77 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @btf_name_offset_valid(i32 %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %72
  %82 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %83 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %84 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %87 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.btf_verifier_env*, i8*, i32, i32, ...) @btf_verifier_log(%struct.btf_verifier_env* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i64, i64* @EINVAL, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %4, align 8
  br label %115

92:                                               ; preds = %72
  %93 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %94 = call %struct.TYPE_2__* @btf_type_ops(%struct.btf_type* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64 (%struct.btf_verifier_env*, %struct.btf_type*, i32)*, i64 (%struct.btf_verifier_env*, %struct.btf_type*, i32)** %95, align 8
  %97 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %5, align 8
  %98 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i64 %96(%struct.btf_verifier_env* %97, %struct.btf_type* %98, i32 %99)
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %4, align 8
  br label %115

105:                                              ; preds = %92
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %105, %103, %81, %60, %35, %14
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*, i32, i32, ...) #1

declare dso_local i32 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @btf_name_offset_valid(i32, i32) #1

declare dso_local %struct.TYPE_2__* @btf_type_ops(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
