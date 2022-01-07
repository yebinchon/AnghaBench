; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_prepare_func_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_prepare_func_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__, %struct.bpf_verifier_state* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { i32, %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i64 }

@BPF_REG_0 = common dso_local global i64 0, align 8
@PTR_TO_STACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"cannot return stack pointer to the caller\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_LOG_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"returning from callee:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"to caller at %d:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32*)* @prepare_func_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_func_exit(%struct.bpf_verifier_env* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bpf_verifier_state*, align 8
  %7 = alloca %struct.bpf_func_state*, align 8
  %8 = alloca %struct.bpf_func_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %11, i32 0, i32 1
  %13 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %12, align 8
  store %struct.bpf_verifier_state* %13, %struct.bpf_verifier_state** %6, align 8
  %14 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %14, i32 0, i32 1
  %16 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %15, align 8
  %17 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %16, i64 %19
  %21 = load %struct.bpf_func_state*, %struct.bpf_func_state** %20, align 8
  store %struct.bpf_func_state* %21, %struct.bpf_func_state** %8, align 8
  %22 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %23 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %22, i32 0, i32 1
  %24 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %23, align 8
  %25 = load i64, i64* @BPF_REG_0, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %24, i64 %25
  store %struct.bpf_reg_state* %26, %struct.bpf_reg_state** %9, align 8
  %27 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PTR_TO_STACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %34 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %2
  %38 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %39 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %43 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %42, i32 0, i32 1
  %44 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %43, align 8
  %45 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %44, i64 %47
  %49 = load %struct.bpf_func_state*, %struct.bpf_func_state** %48, align 8
  store %struct.bpf_func_state* %49, %struct.bpf_func_state** %7, align 8
  %50 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %51 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %50, i32 0, i32 1
  %52 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %51, align 8
  %53 = load i64, i64* @BPF_REG_0, align 8
  %54 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %52, i64 %53
  %55 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %56 = bitcast %struct.bpf_reg_state* %54 to i8*
  %57 = bitcast %struct.bpf_reg_state* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %59 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %60 = call i32 @transfer_reference_state(%struct.bpf_func_state* %58, %struct.bpf_func_state* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %37
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %102

65:                                               ; preds = %37
  %66 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %72 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %65
  %79 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %80 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %82 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %83 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %81, %struct.bpf_func_state* %82)
  %84 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %89 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %90 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %88, %struct.bpf_func_state* %89)
  br label %91

91:                                               ; preds = %78, %65
  %92 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %93 = call i32 @free_func_state(%struct.bpf_func_state* %92)
  %94 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %95 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %94, i32 0, i32 1
  %96 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %95, align 8
  %97 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %98 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  %101 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %96, i64 %100
  store %struct.bpf_func_state* null, %struct.bpf_func_state** %101, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %91, %63, %32
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @transfer_reference_state(%struct.bpf_func_state*, %struct.bpf_func_state*) #1

declare dso_local i32 @print_verifier_state(%struct.bpf_verifier_env*, %struct.bpf_func_state*) #1

declare dso_local i32 @free_func_state(%struct.bpf_func_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
