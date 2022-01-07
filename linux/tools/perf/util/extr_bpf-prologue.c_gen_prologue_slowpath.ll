; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_prologue_slowpath.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_prologue_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_pos = type { i32 }
%struct.probe_trace_arg = type { i8*, i32, %struct.probe_trace_arg_ref* }
%struct.probe_trace_arg_ref = type { i8*, %struct.probe_trace_arg_ref* }

@.str = private unnamed_addr constant [40 x i8] c"prologue: fetch arg %d, base reg is %s\0A\00", align 1
@BPF_REG_CTX = common dso_local global i32 0, align 4
@BPF_REG_ARG3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"prologue: failed to get offset of register %s\0A\00", align 1
@BPF_REG_7 = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"prologue: arg %d: offset %ld\0A\00", align 1
@BPF_REG_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"prologue: failed to generate probe_read function call\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"prologue: load arg %d, insn_sz is %s\0A\00", align 1
@BPF_PROLOGUE_START_ARG_REG = common dso_local global i64 0, align 8
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@JMP_TO_SUCCESS_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn_pos*, %struct.probe_trace_arg*, i32)* @gen_prologue_slowpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_prologue_slowpath(%struct.bpf_insn_pos* %0, %struct.probe_trace_arg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_insn_pos*, align 8
  %6 = alloca %struct.probe_trace_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.probe_trace_arg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.probe_trace_arg_ref*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bpf_insn_pos* %0, %struct.bpf_insn_pos** %5, align 8
  store %struct.probe_trace_arg* %1, %struct.probe_trace_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %101, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %104

19:                                               ; preds = %15
  %20 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %20, i64 %22
  store %struct.probe_trace_arg* %23, %struct.probe_trace_arg** %10, align 8
  %24 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %10, align 8
  %25 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  store %struct.probe_trace_arg_ref* null, %struct.probe_trace_arg_ref** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  %29 = mul nsw i32 %28, -8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %34 = load i32, i32* @BPF_REG_CTX, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* @BPF_REG_ARG3, align 8
  %37 = call i32 @gen_ldx_reg_from_ctx(%struct.bpf_insn_pos* %33, i32 %34, i8* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %19
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %159

43:                                               ; preds = %19
  %44 = load i32, i32* @BPF_REG_7, align 4
  %45 = load i32, i32* @BPF_REG_FP, align 4
  %46 = call i32 @BPF_MOV64_REG(i32 %44, i32 %45)
  %47 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %48 = call i32 @ins(i32 %46, %struct.bpf_insn_pos* %47)
  %49 = load i32, i32* @BPF_ADD, align 4
  %50 = load i32, i32* @BPF_REG_7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @BPF_ALU64_IMM(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %54 = call i32 @ins(i32 %52, %struct.bpf_insn_pos* %53)
  %55 = load i32, i32* @BPF_DW, align 4
  %56 = load i32, i32* @BPF_REG_FP, align 4
  %57 = load i64, i64* @BPF_REG_ARG3, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @BPF_STX_MEM(i32 %55, i32 %56, i64 %57, i32 %58)
  %60 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %61 = call i32 @ins(i32 %59, %struct.bpf_insn_pos* %60)
  %62 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %10, align 8
  %63 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %62, i32 0, i32 2
  %64 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %63, align 8
  store %struct.probe_trace_arg_ref* %64, %struct.probe_trace_arg_ref** %12, align 8
  br label %65

65:                                               ; preds = %99, %43
  %66 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %67 = icmp ne %struct.probe_trace_arg_ref* %66, null
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %71 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8* %72)
  %74 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %75 = load i32, i32* @BPF_REG_3, align 4
  %76 = load i32, i32* @BPF_REG_7, align 4
  %77 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %78 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @gen_read_mem(%struct.bpf_insn_pos* %74, i32 %75, i32 %76, i8* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %159

85:                                               ; preds = %68
  %86 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %87 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %86, i32 0, i32 1
  %88 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %87, align 8
  store %struct.probe_trace_arg_ref* %88, %struct.probe_trace_arg_ref** %12, align 8
  %89 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %90 = icmp ne %struct.probe_trace_arg_ref* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* @BPF_DW, align 4
  %93 = load i64, i64* @BPF_REG_ARG3, align 8
  %94 = load i32, i32* @BPF_REG_FP, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @BPF_LDX_MEM(i32 %92, i64 %93, i32 %94, i32 %95)
  %97 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %98 = call i32 @ins(i32 %96, %struct.bpf_insn_pos* %97)
  br label %99

99:                                               ; preds = %91, %85
  br label %65

100:                                              ; preds = %65
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %15

104:                                              ; preds = %15
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %147, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %105
  %110 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %110, i64 %112
  %114 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %113, i32 0, i32 2
  %115 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %114, align 8
  %116 = icmp ne %struct.probe_trace_arg_ref* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %118, i64 %120
  %122 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @argtype_to_ldx_size(i32 %123)
  br label %127

125:                                              ; preds = %109
  %126 = load i32, i32* @BPF_DW, align 4
  br label %127

127:                                              ; preds = %125, %117
  %128 = phi i32 [ %124, %117 ], [ %126, %125 ]
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i8* @insn_sz_to_str(i32 %130)
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %129, i8* %131)
  %133 = load i32, i32* %14, align 4
  %134 = load i64, i64* @BPF_PROLOGUE_START_ARG_REG, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load i32, i32* @BPF_REG_FP, align 4
  %139 = load i32, i32* @BPF_REG_SIZE, align 4
  %140 = sub nsw i32 0, %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = mul nsw i32 %140, %142
  %144 = call i32 @BPF_LDX_MEM(i32 %133, i64 %137, i32 %138, i32 %143)
  %145 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %146 = call i32 @ins(i32 %144, %struct.bpf_insn_pos* %145)
  br label %147

147:                                              ; preds = %127
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %105

150:                                              ; preds = %105
  %151 = load i32, i32* @BPF_JA, align 4
  %152 = load i32, i32* @BPF_REG_0, align 4
  %153 = load i32, i32* @JMP_TO_SUCCESS_CODE, align 4
  %154 = call i32 @BPF_JMP_IMM(i32 %151, i32 %152, i32 0, i32 %153)
  %155 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %156 = call i32 @ins(i32 %154, %struct.bpf_insn_pos* %155)
  %157 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %158 = call i32 @check_pos(%struct.bpf_insn_pos* %157)
  store i32 %158, i32* %4, align 4
  br label %161

159:                                              ; preds = %83, %40
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %159, %150
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @gen_ldx_reg_from_ctx(%struct.bpf_insn_pos*, i32, i8*, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ins(i32, %struct.bpf_insn_pos*) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i64, i32) #1

declare dso_local i32 @gen_read_mem(%struct.bpf_insn_pos*, i32, i32, i8*) #1

declare dso_local i32 @BPF_LDX_MEM(i32, i64, i32, i32) #1

declare dso_local i32 @argtype_to_ldx_size(i32) #1

declare dso_local i8* @insn_sz_to_str(i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @check_pos(%struct.bpf_insn_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
