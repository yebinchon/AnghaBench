; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_all_scalars_precise.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_all_scalars_precise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_verifier_state = type { i32, %struct.bpf_func_state**, %struct.bpf_verifier_state* }
%struct.bpf_func_state = type { i32, %struct.TYPE_2__*, %struct.bpf_reg_state* }
%struct.TYPE_2__ = type { i64*, %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i64, i32 }

@BPF_REG_FP = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i64 0, align 8
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_SPILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*)* @mark_all_scalars_precise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_all_scalars_precise(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_verifier_state*, align 8
  %5 = alloca %struct.bpf_func_state*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %4, align 8
  br label %9

9:                                                ; preds = %98, %2
  %10 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %11 = icmp ne %struct.bpf_verifier_state* %10, null
  br i1 %11, label %12, label %102

12:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %94, %12
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %13
  %20 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %20, i32 0, i32 1
  %22 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %22, i64 %24
  %26 = load %struct.bpf_func_state*, %struct.bpf_func_state** %25, align 8
  store %struct.bpf_func_state* %26, %struct.bpf_func_state** %5, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %47, %19
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BPF_REG_FP, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %32, i32 0, i32 2
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %34, i64 %36
  store %struct.bpf_reg_state* %37, %struct.bpf_reg_state** %6, align 8
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %39 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SCALAR_VALUE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %47

44:                                               ; preds = %31
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %27

50:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %90, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BPF_REG_SIZE, align 4
  %57 = sdiv i32 %55, %56
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %51
  %60 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %61 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STACK_SPILL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %90

73:                                               ; preds = %59
  %74 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %75 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store %struct.bpf_reg_state* %80, %struct.bpf_reg_state** %6, align 8
  %81 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %82 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SCALAR_VALUE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %90

87:                                               ; preds = %73
  %88 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %89 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %86, %72
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %51

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %13

97:                                               ; preds = %13
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %100 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %99, i32 0, i32 2
  %101 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %100, align 8
  store %struct.bpf_verifier_state* %101, %struct.bpf_verifier_state** %4, align 8
  br label %9

102:                                              ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
