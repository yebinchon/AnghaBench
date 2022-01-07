; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_func_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_func_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__, %struct.bpf_verifier_state* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_verifier_state = type { i32, %struct.bpf_func_state** }
%struct.bpf_func_state = type { i32* }
%struct.bpf_insn = type { i32 }

@MAX_CALL_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"the call stack of %d frames is too deep\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"verifier bug. No program starts at insn %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"verifier bug. Frame %d already allocated\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_5 = common dso_local global i32 0, align 4
@CALLER_SAVED_REGS = common dso_local global i32 0, align 4
@caller_saved = common dso_local global i32* null, align 8
@DST_OP_NO_MARK = common dso_local global i32 0, align 4
@BPF_LOG_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"caller:\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"callee:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*, i32*)* @check_func_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_func_call(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bpf_verifier_state*, align 8
  %9 = alloca %struct.bpf_func_state*, align 8
  %10 = alloca %struct.bpf_func_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 1
  %17 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %16, align 8
  store %struct.bpf_verifier_state* %17, %struct.bpf_verifier_state** %8, align 8
  %18 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %26 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 2
  %30 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @E2BIG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %195

33:                                               ; preds = %3
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @find_subprog(%struct.bpf_verifier_env* %40, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %195

53:                                               ; preds = %33
  %54 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %55 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %54, i32 0, i32 1
  %56 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %55, align 8
  %57 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %58 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %56, i64 %60
  %62 = load %struct.bpf_func_state*, %struct.bpf_func_state** %61, align 8
  store %struct.bpf_func_state* %62, %struct.bpf_func_state** %9, align 8
  %63 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %64 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %63, i32 0, i32 1
  %65 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %64, align 8
  %66 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %65, i64 %70
  %72 = load %struct.bpf_func_state*, %struct.bpf_func_state** %71, align 8
  %73 = icmp ne %struct.bpf_func_state* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %53
  %75 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %76 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %77 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %195

83:                                               ; preds = %53
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.bpf_func_state* @kzalloc(i32 8, i32 %84)
  store %struct.bpf_func_state* %85, %struct.bpf_func_state** %10, align 8
  %86 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %87 = icmp ne %struct.bpf_func_state* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %195

91:                                               ; preds = %83
  %92 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %93 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %94 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %93, i32 0, i32 1
  %95 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %94, align 8
  %96 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %97 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %95, i64 %100
  store %struct.bpf_func_state* %92, %struct.bpf_func_state** %101, align 8
  %102 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %103 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %107 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @init_func_state(%struct.bpf_verifier_env* %102, %struct.bpf_func_state* %103, i32 %105, i32 %109, i32 %110)
  %112 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %113 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %114 = call i32 @transfer_reference_state(%struct.bpf_func_state* %112, %struct.bpf_func_state* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %91
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %4, align 4
  br label %195

119:                                              ; preds = %91
  %120 = load i32, i32* @BPF_REG_1, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %139, %119
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @BPF_REG_5, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %127 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %134 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %121

142:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @CALLER_SAVED_REGS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %149 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %150 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** @caller_saved, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mark_reg_not_init(%struct.bpf_verifier_env* %148, i32* %151, i32 %156)
  %158 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %159 = load i32*, i32** @caller_saved, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @DST_OP_NO_MARK, align 4
  %165 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %158, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %147
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %143

169:                                              ; preds = %143
  %170 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %171 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32*, i32** %7, align 8
  store i32 %174, i32* %175, align 4
  %176 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %177 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %169
  %184 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %185 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %186 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %187 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %188 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %186, %struct.bpf_func_state* %187)
  %189 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %190 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %191 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %192 = load %struct.bpf_func_state*, %struct.bpf_func_state** %10, align 8
  %193 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %191, %struct.bpf_func_state* %192)
  br label %194

194:                                              ; preds = %183, %169
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %117, %88, %74, %46, %24
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @find_subprog(%struct.bpf_verifier_env*, i32) #1

declare dso_local %struct.bpf_func_state* @kzalloc(i32, i32) #1

declare dso_local i32 @init_func_state(%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32, i32, i32) #1

declare dso_local i32 @transfer_reference_state(%struct.bpf_func_state*, %struct.bpf_func_state*) #1

declare dso_local i32 @mark_reg_not_init(%struct.bpf_verifier_env*, i32*, i32) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i32, i32) #1

declare dso_local i32 @print_verifier_state(%struct.bpf_verifier_env*, %struct.bpf_func_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
