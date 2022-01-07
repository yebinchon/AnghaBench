; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_propagate_liveness.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_propagate_liveness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_verifier_state = type { i32, %struct.bpf_func_state** }
%struct.bpf_func_state = type { i32, %struct.TYPE_2__*, %struct.bpf_reg_state* }
%struct.TYPE_2__ = type { %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"propagate_live: parent frame %d current frame %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i32 0, align 4
@MAX_BPF_REG = common dso_local global i32 0, align 4
@BPF_REG_6 = common dso_local global i32 0, align 4
@REG_LIVE_READ64 = common dso_local global i32 0, align 4
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*, %struct.bpf_verifier_state*)* @propagate_liveness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagate_liveness(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_verifier_state*, align 8
  %7 = alloca %struct.bpf_verifier_state*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_func_state*, align 8
  %11 = alloca %struct.bpf_func_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %6, align 8
  store %struct.bpf_verifier_state* %2, %struct.bpf_verifier_state** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %161

32:                                               ; preds = %3
  %33 = load i32, i32* @BPF_REG_FP, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @MAX_BPF_REG, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %157, %32
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %42 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %160

45:                                               ; preds = %39
  %46 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %47 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %46, i32 0, i32 1
  %48 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %48, i64 %50
  %52 = load %struct.bpf_func_state*, %struct.bpf_func_state** %51, align 8
  store %struct.bpf_func_state* %52, %struct.bpf_func_state** %11, align 8
  %53 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %54 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %53, i32 0, i32 1
  %55 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %55, i64 %57
  %59 = load %struct.bpf_func_state*, %struct.bpf_func_state** %58, align 8
  store %struct.bpf_func_state* %59, %struct.bpf_func_state** %10, align 8
  %60 = load %struct.bpf_func_state*, %struct.bpf_func_state** %11, align 8
  %61 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %60, i32 0, i32 2
  %62 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %61, align 8
  store %struct.bpf_reg_state* %62, %struct.bpf_reg_state** %9, align 8
  %63 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %64 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %63, i32 0, i32 2
  %65 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %64, align 8
  store %struct.bpf_reg_state* %65, %struct.bpf_reg_state** %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %68 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %45
  %72 = load i32, i32* @BPF_REG_6, align 4
  br label %74

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %107, %74
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @BPF_REG_FP, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %82 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %82, i64 %84
  %86 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %86, i64 %88
  %90 = call i32 @propagate_liveness_reg(%struct.bpf_verifier_env* %81, %struct.bpf_reg_state* %85, %struct.bpf_reg_state* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %4, align 4
  br label %161

95:                                               ; preds = %80
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @REG_LIVE_READ64, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %101 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %101, i64 %103
  %105 = call i32 @mark_insn_zext(%struct.bpf_verifier_env* %100, %struct.bpf_reg_state* %104)
  br label %106

106:                                              ; preds = %99, %95
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %76

110:                                              ; preds = %76
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %153, %110
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %114 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BPF_REG_SIZE, align 4
  %117 = sdiv i32 %115, %116
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.bpf_func_state*, %struct.bpf_func_state** %11, align 8
  %122 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @BPF_REG_SIZE, align 4
  %125 = sdiv i32 %123, %124
  %126 = icmp slt i32 %120, %125
  br label %127

127:                                              ; preds = %119, %111
  %128 = phi i1 [ false, %111 ], [ %126, %119 ]
  br i1 %128, label %129, label %156

129:                                              ; preds = %127
  %130 = load %struct.bpf_func_state*, %struct.bpf_func_state** %11, align 8
  %131 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store %struct.bpf_reg_state* %136, %struct.bpf_reg_state** %9, align 8
  %137 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %138 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store %struct.bpf_reg_state* %143, %struct.bpf_reg_state** %8, align 8
  %144 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %145 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %146 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %147 = call i32 @propagate_liveness_reg(%struct.bpf_verifier_env* %144, %struct.bpf_reg_state* %145, %struct.bpf_reg_state* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %129
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %161

152:                                              ; preds = %129
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %111

156:                                              ; preds = %127
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %39

160:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %150, %93, %22
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @propagate_liveness_reg(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, %struct.bpf_reg_state*) #1

declare dso_local i32 @mark_insn_zext(%struct.bpf_verifier_env*, %struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
