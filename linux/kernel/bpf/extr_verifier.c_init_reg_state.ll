; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_init_reg_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_init_reg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_func_state = type { i32, %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i32, i32, i32, i32*, i32 }

@MAX_BPF_REG = common dso_local global i32 0, align 4
@REG_LIVE_NONE = common dso_local global i32 0, align 4
@DEF_NOT_SUBREG = common dso_local global i32 0, align 4
@PTR_TO_STACK = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i64 0, align 8
@PTR_TO_CTX = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_func_state*)* @init_reg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reg_state(%struct.bpf_verifier_env* %0, %struct.bpf_func_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_func_state*, align 8
  %5 = alloca %struct.bpf_reg_state*, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %4, align 8
  %7 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %7, i32 0, i32 1
  %9 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  store %struct.bpf_reg_state* %9, %struct.bpf_reg_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_BPF_REG, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mark_reg_not_init(%struct.bpf_verifier_env* %15, %struct.bpf_reg_state* %16, i32 %17)
  %19 = load i32, i32* @REG_LIVE_NONE, align 4
  %20 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %20, i64 %22
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 4
  store i32 %19, i32* %24, align 8
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i64 %27
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @DEF_NOT_SUBREG, align 4
  %31 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %31, i64 %33
  %35 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %34, i32 0, i32 2
  store i32 %30, i32* %35, align 8
  br label %36

36:                                               ; preds = %14
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load i32, i32* @PTR_TO_STACK, align 4
  %41 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %42 = load i64, i64* @BPF_REG_FP, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %41, i64 %42
  %44 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %46 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %47 = load i64, i64* @BPF_REG_FP, align 8
  %48 = call i32 @mark_reg_known_zero(%struct.bpf_verifier_env* %45, %struct.bpf_reg_state* %46, i64 %47)
  %49 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %50 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %53 = load i64, i64* @BPF_REG_FP, align 8
  %54 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %52, i64 %53
  %55 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @PTR_TO_CTX, align 4
  %57 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %58 = load i64, i64* @BPF_REG_1, align 8
  %59 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %57, i64 %58
  %60 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %62 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %63 = load i64, i64* @BPF_REG_1, align 8
  %64 = call i32 @mark_reg_known_zero(%struct.bpf_verifier_env* %61, %struct.bpf_reg_state* %62, i64 %63)
  ret void
}

declare dso_local i32 @mark_reg_not_init(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32) #1

declare dso_local i32 @mark_reg_known_zero(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
