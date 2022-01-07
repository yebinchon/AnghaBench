; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_bpf__gen_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_bpf__gen_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg = type { i8*, %struct.probe_trace_arg_ref* }
%struct.probe_trace_arg_ref = type { %struct.probe_trace_arg_ref*, i32 }
%struct.bpf_insn = type { i32 }
%struct.bpf_insn_pos = type { %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_insn* }

@EINVAL = common dso_local global i32 0, align 4
@BPF_MAXINSNS = common dso_local global i64 0, align 8
@BPF_MOV = common dso_local global i32 0, align 4
@BPF_PROLOGUE_FETCH_RESULT_REG = common dso_local global i64 0, align 8
@BPF_PROLOGUE_MAX_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bpf: prologue: %d arguments are dropped\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"bpf: prologue: global %s%+ld not support\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"bpf: prologue: offset out of bound: %ld\0A\00", align 1
@BPF_LOADER_ERRNO__PROLOGUEOOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"prologue: pass validation\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"prologue: fast path\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"prologue: slow path\0A\00", align 1
@BPF_REG_CTX = common dso_local global i32 0, align 4
@BPF_REG_ARG1 = common dso_local global i32 0, align 4
@BPF_PROLOGUE_START_ARG_REG = common dso_local global i64 0, align 8
@BPF_JA = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@JMP_TO_USER_CODE = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@OFFSET_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf__gen_prologue(%struct.probe_trace_arg* %0, i32 %1, %struct.bpf_insn* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.probe_trace_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bpf_insn*, align 8
  %13 = alloca %struct.bpf_insn*, align 8
  %14 = alloca %struct.bpf_insn*, align 8
  %15 = alloca %struct.bpf_insn_pos, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.probe_trace_arg_ref*, align 8
  store %struct.probe_trace_arg* %0, %struct.probe_trace_arg** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bpf_insn* %2, %struct.bpf_insn** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.bpf_insn* null, %struct.bpf_insn** %12, align 8
  store %struct.bpf_insn* null, %struct.bpf_insn** %13, align 8
  store %struct.bpf_insn* null, %struct.bpf_insn** %14, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %21 = icmp ne %struct.bpf_insn* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64*, i64** %10, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %227

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @BPF_MAXINSNS, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @BPF_MAXINSNS, align 8
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %36 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %15, i32 0, i32 2
  store %struct.bpf_insn* %35, %struct.bpf_insn** %36, align 8
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i64 %38
  %40 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %15, i32 0, i32 1
  store %struct.bpf_insn* %39, %struct.bpf_insn** %40, align 8
  %41 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %42 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %15, i32 0, i32 0
  store %struct.bpf_insn* %41, %struct.bpf_insn** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @BPF_MOV, align 4
  %47 = load i64, i64* @BPF_PROLOGUE_FETCH_RESULT_REG, align 8
  %48 = call i32 @BPF_ALU64_IMM(i32 %46, i64 %47, i32 0)
  %49 = call i32 @ins(i32 %48, %struct.bpf_insn_pos* %15)
  %50 = call i32 @check_pos(%struct.bpf_insn_pos* %15)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %225

53:                                               ; preds = %45
  %54 = call i64 @pos_get_cnt(%struct.bpf_insn_pos* %15)
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  store i32 0, i32* %6, align 4
  br label %227

56:                                               ; preds = %34
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BPF_PROLOGUE_MAX_ARGS, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BPF_PROLOGUE_MAX_ARGS, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @BPF_PROLOGUE_MAX_ARGS, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %56
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %137, %66
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %67
  %72 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %72, i64 %74
  %76 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %75, i32 0, i32 1
  %77 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %76, align 8
  store %struct.probe_trace_arg_ref* %77, %struct.probe_trace_arg_ref** %19, align 8
  %78 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %78, i64 %80
  %82 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 64
  br i1 %87, label %88, label %107

88:                                               ; preds = %71
  %89 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %89, i64 %91
  %93 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %96 = icmp ne %struct.probe_trace_arg_ref* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %99 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  br label %102

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ %100, %97 ], [ 0, %101 ]
  %104 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 %103)
  %105 = load i32, i32* @ENOTSUP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %227

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %132, %107
  %109 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %110 = icmp ne %struct.probe_trace_arg_ref* %109, null
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  store i32 0, i32* %16, align 4
  %112 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %113 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp sgt i64 %115, 2147483647
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %119 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %121, -2147483648
  br i1 %122, label %123, label %132

123:                                              ; preds = %117, %111
  %124 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %125 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* @BPF_LOADER_ERRNO__PROLOGUEOOB, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %227

132:                                              ; preds = %117
  %133 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %19, align 8
  %134 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %133, i32 0, i32 0
  %135 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %134, align 8
  store %struct.probe_trace_arg_ref* %135, %struct.probe_trace_arg_ref** %19, align 8
  br label %108

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %67

140:                                              ; preds = %67
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %146 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @gen_prologue_fastpath(%struct.bpf_insn_pos* %15, %struct.probe_trace_arg* %146, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %225

152:                                              ; preds = %144
  br label %193

153:                                              ; preds = %140
  %154 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @BPF_REG_CTX, align 4
  %156 = load i32, i32* @BPF_REG_ARG1, align 4
  %157 = call i32 @BPF_MOV64_REG(i32 %155, i32 %156)
  %158 = call i32 @ins(i32 %157, %struct.bpf_insn_pos* %15)
  %159 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @gen_prologue_slowpath(%struct.bpf_insn_pos* %15, %struct.probe_trace_arg* %159, i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %225

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %15, i32 0, i32 0
  %167 = load %struct.bpf_insn*, %struct.bpf_insn** %166, align 8
  store %struct.bpf_insn* %167, %struct.bpf_insn** %13, align 8
  %168 = load i32, i32* @BPF_MOV, align 4
  %169 = load i64, i64* @BPF_PROLOGUE_FETCH_RESULT_REG, align 8
  %170 = call i32 @BPF_ALU64_IMM(i32 %168, i64 %169, i32 1)
  %171 = call i32 @ins(i32 %170, %struct.bpf_insn_pos* %15)
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %184, %165
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i32, i32* @BPF_MOV, align 4
  %178 = load i64, i64* @BPF_PROLOGUE_START_ARG_REG, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = call i32 @BPF_ALU64_IMM(i32 %177, i64 %181, i32 0)
  %183 = call i32 @ins(i32 %182, %struct.bpf_insn_pos* %15)
  br label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %172

187:                                              ; preds = %172
  %188 = load i32, i32* @BPF_JA, align 4
  %189 = load i32, i32* @BPF_REG_0, align 4
  %190 = load i32, i32* @JMP_TO_USER_CODE, align 4
  %191 = call i32 @BPF_JMP_IMM(i32 %188, i32 %189, i32 0, i32 %190)
  %192 = call i32 @ins(i32 %191, %struct.bpf_insn_pos* %15)
  br label %193

193:                                              ; preds = %187, %152
  %194 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %15, i32 0, i32 0
  %195 = load %struct.bpf_insn*, %struct.bpf_insn** %194, align 8
  store %struct.bpf_insn* %195, %struct.bpf_insn** %12, align 8
  %196 = load i32, i32* @BPF_MOV, align 4
  %197 = load i64, i64* @BPF_PROLOGUE_FETCH_RESULT_REG, align 8
  %198 = call i32 @BPF_ALU64_IMM(i32 %196, i64 %197, i32 0)
  %199 = call i32 @ins(i32 %198, %struct.bpf_insn_pos* %15)
  %200 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %15, i32 0, i32 0
  %201 = load %struct.bpf_insn*, %struct.bpf_insn** %200, align 8
  store %struct.bpf_insn* %201, %struct.bpf_insn** %14, align 8
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %217, label %204

204:                                              ; preds = %193
  %205 = load i32, i32* @BPF_REG_ARG1, align 4
  %206 = load i32, i32* @BPF_REG_CTX, align 4
  %207 = call i32 @BPF_MOV64_REG(i32 %205, i32 %206)
  %208 = call i32 @ins(i32 %207, %struct.bpf_insn_pos* %15)
  %209 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %210 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %211 = load %struct.bpf_insn*, %struct.bpf_insn** %14, align 8
  %212 = call i32 @prologue_relocate(%struct.bpf_insn_pos* %15, %struct.bpf_insn* %209, %struct.bpf_insn* %210, %struct.bpf_insn* %211)
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %225

216:                                              ; preds = %204
  br label %217

217:                                              ; preds = %216, %193
  %218 = call i32 @check_pos(%struct.bpf_insn_pos* %15)
  store i32 %218, i32* %17, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %225

222:                                              ; preds = %217
  %223 = call i64 @pos_get_cnt(%struct.bpf_insn_pos* %15)
  %224 = load i64*, i64** %10, align 8
  store i64 %223, i64* %224, align 8
  store i32 0, i32* %6, align 4
  br label %227

225:                                              ; preds = %221, %215, %164, %151, %52
  %226 = load i32, i32* %17, align 4
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %225, %222, %123, %102, %53, %25
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @ins(i32, %struct.bpf_insn_pos*) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i64, i32) #1

declare dso_local i32 @check_pos(%struct.bpf_insn_pos*) #1

declare dso_local i64 @pos_get_cnt(%struct.bpf_insn_pos*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @gen_prologue_fastpath(%struct.bpf_insn_pos*, %struct.probe_trace_arg*, i32) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @gen_prologue_slowpath(%struct.bpf_insn_pos*, %struct.probe_trace_arg*, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @prologue_relocate(%struct.bpf_insn_pos*, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
