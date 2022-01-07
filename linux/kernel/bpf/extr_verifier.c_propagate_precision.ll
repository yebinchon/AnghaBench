; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_propagate_precision.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_propagate_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { i32, %struct.TYPE_3__*, %struct.bpf_reg_state* }
%struct.TYPE_3__ = type { i64*, %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i64, i32 }

@BPF_REG_FP = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i64 0, align 8
@BPF_LOG_LEVEL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"propagating r%d\0A\00", align 1
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_SPILL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"propagating fp%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*)* @propagate_precision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagate_precision(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_verifier_state*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca %struct.bpf_func_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %10, i32 0, i32 1
  %12 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %11, align 8
  %13 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %12, i64 %15
  %17 = load %struct.bpf_func_state*, %struct.bpf_func_state** %16, align 8
  store %struct.bpf_func_state* %17, %struct.bpf_func_state** %7, align 8
  %18 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %18, i32 0, i32 2
  %20 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  store %struct.bpf_reg_state* %20, %struct.bpf_reg_state** %6, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %58, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @BPF_REG_FP, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCALAR_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %33 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25
  br label %58

37:                                               ; preds = %31
  %38 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BPF_LOG_LEVEL2, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @verbose(%struct.bpf_verifier_env* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %134

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %62 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %61, i32 1
  store %struct.bpf_reg_state* %62, %struct.bpf_reg_state** %6, align 8
  br label %21

63:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %130, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %67 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BPF_REG_SIZE, align 4
  %70 = sdiv i32 %68, %69
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %133

72:                                               ; preds = %64
  %73 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %74 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @STACK_SPILL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %130

86:                                               ; preds = %72
  %87 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %88 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store %struct.bpf_reg_state* %93, %struct.bpf_reg_state** %6, align 8
  %94 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %95 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SCALAR_VALUE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %86
  %100 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %101 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99, %86
  br label %130

105:                                              ; preds = %99
  %106 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %107 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BPF_LOG_LEVEL2, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 0, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @BPF_REG_SIZE, align 4
  %119 = mul nsw i32 %117, %118
  %120 = call i32 @verbose(%struct.bpf_verifier_env* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113, %105
  %122 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @mark_chain_precision_stack(%struct.bpf_verifier_env* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %134

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %104, %85
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %64

133:                                              ; preds = %64
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %127, %55
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32) #1

declare dso_local i32 @mark_chain_precision(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @mark_chain_precision_stack(%struct.bpf_verifier_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
