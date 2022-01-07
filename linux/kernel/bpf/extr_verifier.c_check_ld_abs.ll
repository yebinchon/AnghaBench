; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ld_abs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ld_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bpf_insn = type { i64, i64, i64, i32 }
%struct.bpf_reg_state = type { i64, i64 }

@.str = private unnamed_addr constant [65 x i8] c"BPF_LD_[ABS|IND] instructions not allowed for this program type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bpf verifier is misconfigured\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"BPF_LD_[ABS|IND] instructions cannot be mixed with bpf-to-bpf calls\0A\00", align 1
@BPF_REG_0 = common dso_local global i64 0, align 8
@BPF_DW = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"BPF_LD_[ABS|IND] uses reserved fields\0A\00", align 1
@BPF_REG_6 = common dso_local global i64 0, align 8
@SRC_OP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"BPF_LD_[ABS|IND] cannot be mixed with socket references\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"BPF_LD_[ABS|IND] cannot be used inside bpf_spin_lock-ed region\0A\00", align 1
@PTR_TO_CTX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"at the time of BPF_LD_ABS|IND R6 != pointer to skb\0A\00", align 1
@BPF_IND = common dso_local global i64 0, align 8
@CALLER_SAVED_REGS = common dso_local global i32 0, align 4
@caller_saved = common dso_local global i64* null, align 8
@DST_OP_NO_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*)* @check_ld_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ld_abs(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  %10 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %11 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %10)
  store %struct.bpf_reg_state* %11, %struct.bpf_reg_state** %6, align 8
  %12 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @BPF_MODE(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @may_access_skb(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %25 = call i32 @verbose(%struct.bpf_verifier_env* %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %180

28:                                               ; preds = %2
  %29 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %37 = call i32 @verbose(%struct.bpf_verifier_env* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %180

40:                                               ; preds = %28
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %47 = call i32 @verbose(%struct.bpf_verifier_env* %46, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %180

50:                                               ; preds = %40
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BPF_REG_0, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %78, label %56

56:                                               ; preds = %50
  %57 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %58 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %56
  %62 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %63 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @BPF_SIZE(i32 %64)
  %66 = load i64, i64* @BPF_DW, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @BPF_ABS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %74 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BPF_REG_0, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %61, %56, %50
  %79 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %80 = call i32 @verbose(%struct.bpf_verifier_env* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %180

83:                                               ; preds = %72, %68
  %84 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %85 = load i64, i64* @BPF_REG_6, align 8
  %86 = load i32, i32* @SRC_OP, align 4
  %87 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %84, i64 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %180

92:                                               ; preds = %83
  %93 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %94 = call i32 @check_reference_leak(%struct.bpf_verifier_env* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %99 = call i32 @verbose(%struct.bpf_verifier_env* %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %180

101:                                              ; preds = %92
  %102 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %103 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %110 = call i32 @verbose(%struct.bpf_verifier_env* %109, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %180

113:                                              ; preds = %101
  %114 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %115 = load i64, i64* @BPF_REG_6, align 8
  %116 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %114, i64 %115
  %117 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PTR_TO_CTX, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %123 = call i32 @verbose(%struct.bpf_verifier_env* %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %180

126:                                              ; preds = %113
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @BPF_IND, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %132 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %133 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @SRC_OP, align 4
  %136 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %131, i64 %134, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %180

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %126
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %164, %142
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @CALLER_SAVED_REGS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %143
  %148 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %149 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %150 = load i64*, i64** @caller_saved, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @mark_reg_not_init(%struct.bpf_verifier_env* %148, %struct.bpf_reg_state* %149, i64 %154)
  %156 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %157 = load i64*, i64** @caller_saved, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @DST_OP_NO_MARK, align 4
  %163 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %156, i64 %161, i32 %162)
  br label %164

164:                                              ; preds = %147
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %143

167:                                              ; preds = %143
  %168 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %169 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %170 = load i64, i64* @BPF_REG_0, align 8
  %171 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %168, %struct.bpf_reg_state* %169, i64 %170)
  %172 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %173 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  %176 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %177 = load i64, i64* @BPF_REG_0, align 8
  %178 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %176, i64 %177
  %179 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %178, i32 0, i32 1
  store i64 %175, i64* %179, align 8
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %167, %139, %121, %108, %97, %90, %78, %45, %35, %23
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i64 @BPF_MODE(i32) #1

declare dso_local i32 @may_access_skb(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i64 @BPF_SIZE(i32) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i32 @check_reference_leak(%struct.bpf_verifier_env*) #1

declare dso_local i32 @mark_reg_not_init(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
