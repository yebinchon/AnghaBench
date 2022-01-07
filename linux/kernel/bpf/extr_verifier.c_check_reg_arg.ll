; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_reg_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_reg_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_2__*, %struct.bpf_verifier_state* }
%struct.TYPE_2__ = type { %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i64, i32, i32, i32 }

@MAX_BPF_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"R%d is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SRC_OP = common dso_local global i32 0, align 4
@NOT_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"R%d !read_ok\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i64 0, align 8
@REG_LIVE_READ64 = common dso_local global i32 0, align 4
@REG_LIVE_READ32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"frame pointer is read only\0A\00", align 1
@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@DEF_NOT_SUBREG = common dso_local global i32 0, align 4
@DST_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i32)* @check_reg_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reg_arg(%struct.bpf_verifier_env* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_verifier_state*, align 8
  %9 = alloca %struct.bpf_func_state*, align 8
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca %struct.bpf_reg_state*, align 8
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 2
  %16 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %15, align 8
  store %struct.bpf_verifier_state* %16, %struct.bpf_verifier_state** %8, align 8
  %17 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %17, i32 0, i32 1
  %19 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %18, align 8
  %20 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %19, i64 %22
  %24 = load %struct.bpf_func_state*, %struct.bpf_func_state** %23, align 8
  store %struct.bpf_func_state* %24, %struct.bpf_func_state** %9, align 8
  %25 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %26 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.bpf_insn*, %struct.bpf_insn** %28, align 8
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i64 %33
  store %struct.bpf_insn* %34, %struct.bpf_insn** %10, align 8
  %35 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %36 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %35, i32 0, i32 0
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %36, align 8
  store %struct.bpf_reg_state* %37, %struct.bpf_reg_state** %12, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @MAX_BPF_REG, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %137

47:                                               ; preds = %3
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i64 %49
  store %struct.bpf_reg_state* %50, %struct.bpf_reg_state** %11, align 8
  %51 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %52 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @is_reg64(%struct.bpf_verifier_env* %51, %struct.bpf_insn* %52, i64 %53, %struct.bpf_reg_state* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SRC_OP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %47
  %61 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %62 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NOT_INIT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %137

72:                                               ; preds = %60
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @BPF_REG_FP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %137

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %82 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %83 = call i32 @mark_insn_zext(%struct.bpf_verifier_env* %81, %struct.bpf_reg_state* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %86 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %87 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %88 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @REG_LIVE_READ64, align 4
  br label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @REG_LIVE_READ32, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @mark_reg_read(%struct.bpf_verifier_env* %85, %struct.bpf_reg_state* %86, i32 %89, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %137

99:                                               ; preds = %47
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @BPF_REG_FP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %105 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EACCES, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %137

108:                                              ; preds = %99
  %109 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %110 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %111 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @DEF_NOT_SUBREG, align 4
  br label %123

118:                                              ; preds = %108
  %119 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %120 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i32 [ %117, %116 ], [ %122, %118 ]
  %125 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %126 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @DST_OP, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %132 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %131, %struct.bpf_reg_state* %132, i64 %133)
  br label %135

135:                                              ; preds = %130, %123
  br label %136

136:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %103, %96, %76, %66, %41
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @is_reg64(%struct.bpf_verifier_env*, %struct.bpf_insn*, i64, %struct.bpf_reg_state*, i32) #1

declare dso_local i32 @mark_insn_zext(%struct.bpf_verifier_env*, %struct.bpf_reg_state*) #1

declare dso_local i32 @mark_reg_read(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32) #1

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
