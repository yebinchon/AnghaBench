; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_stack_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_stack_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_9__*, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.bpf_func_state** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.bpf_func_state = type { %struct.TYPE_10__*, %struct.bpf_reg_state*, i32 }
%struct.TYPE_10__ = type { i64*, %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i64, i32 }

@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_SPILL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"attempt to corrupt spilled pointer on stack\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid size of register spill\0A\00", align 1
@PTR_TO_STACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"cannot spill pointers to stack into stack frame of the caller\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STACK_MISC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"insn %d cannot access two stack slots fp%d and fp%d\00", align 1
@NOT_INIT = common dso_local global i64 0, align 8
@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@STACK_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32, i32, i32, i32)* @check_stack_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stack_write(%struct.bpf_verifier_env* %0, %struct.bpf_func_state* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_verifier_env*, align 8
  %9 = alloca %struct.bpf_func_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bpf_func_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.bpf_reg_state*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %8, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 0, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @BPF_REG_SIZE, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %32 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %19, align 8
  store %struct.bpf_reg_state* null, %struct.bpf_reg_state** %20, align 8
  %41 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @BPF_REG_SIZE, align 4
  %45 = call i32 @round_up(i32 %43, i32 %44)
  %46 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %47 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @realloc_func_state(%struct.bpf_func_state* %41, i32 %45, i32 %48, i32 1)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %6
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %7, align 4
  br label %379

54:                                               ; preds = %6
  %55 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %56 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %54
  %60 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %61 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STACK_SPILL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %59
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @BPF_REG_SIZE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %78 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %379

81:                                               ; preds = %72, %59, %54
  %82 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %83 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %85, align 8
  %87 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %88 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %86, i64 %91
  %93 = load %struct.bpf_func_state*, %struct.bpf_func_state** %92, align 8
  store %struct.bpf_func_state* %93, %struct.bpf_func_state** %14, align 8
  %94 = load i32, i32* %12, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %81
  %97 = load %struct.bpf_func_state*, %struct.bpf_func_state** %14, align 8
  %98 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %97, i32 0, i32 1
  %99 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %99, i64 %101
  store %struct.bpf_reg_state* %102, %struct.bpf_reg_state** %20, align 8
  br label %103

103:                                              ; preds = %96, %81
  %104 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %105 = icmp ne %struct.bpf_reg_state* %104, null
  br i1 %105, label %106, label %141

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @BPF_REG_SIZE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %141

110:                                              ; preds = %106
  %111 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %112 = call i64 @register_is_const(%struct.bpf_reg_state* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %116 = call i64 @register_is_null(%struct.bpf_reg_state* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %141, label %118

118:                                              ; preds = %114
  %119 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %120 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %118
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* @BPF_REG_FP, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %128, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %7, align 4
  br label %379

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %123
  %137 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %140 = call i32 @save_register_state(%struct.bpf_func_state* %137, i32 %138, %struct.bpf_reg_state* %139)
  br label %378

141:                                              ; preds = %118, %114, %110, %106, %103
  %142 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %143 = icmp ne %struct.bpf_reg_state* %142, null
  br i1 %143, label %144, label %273

144:                                              ; preds = %141
  %145 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %146 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @is_spillable_regtype(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %273

150:                                              ; preds = %144
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @BPF_REG_SIZE, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %155, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %159 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* @EACCES, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %7, align 4
  br label %379

162:                                              ; preds = %150
  %163 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %164 = load %struct.bpf_func_state*, %struct.bpf_func_state** %14, align 8
  %165 = icmp ne %struct.bpf_func_state* %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %168 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PTR_TO_STACK, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %174 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %173, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %379

177:                                              ; preds = %166, %162
  %178 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %179 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %268, label %182

182:                                              ; preds = %177
  store i32 0, i32* %21, align 4
  %183 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %184 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @STACK_SPILL, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %182
  %196 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %197 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %196, i32 0, i32 0
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = call i64 @register_is_const(%struct.bpf_reg_state* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %195
  store i32 1, i32* %21, align 4
  br label %206

206:                                              ; preds = %205, %195, %182
  store i32 0, i32* %15, align 4
  br label %207

207:                                              ; preds = %228, %206
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* @BPF_REG_SIZE, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %231

211:                                              ; preds = %207
  %212 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %213 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @STACK_MISC, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %211
  store i32 1, i32* %21, align 4
  br label %231

227:                                              ; preds = %211
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %207

231:                                              ; preds = %226, %207
  %232 = load i32, i32* %21, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %267

234:                                              ; preds = %231
  %235 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %236 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %235, i32 0, i32 0
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  store i32* %241, i32** %22, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sub nsw i32 0, %242
  %244 = sub nsw i32 %243, 1
  %245 = load i32, i32* @BPF_REG_SIZE, align 4
  %246 = mul nsw i32 %244, %245
  store i32 %246, i32* %23, align 4
  %247 = load i32*, i32** %22, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %234
  %251 = load i32*, i32** %22, align 8
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %23, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %257 = load i32, i32* %13, align 4
  %258 = load i32*, i32** %22, align 8
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %257, i32 %259, i32 %260)
  %262 = load i32, i32* @EINVAL, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %7, align 4
  br label %379

264:                                              ; preds = %250, %234
  %265 = load i32, i32* %23, align 4
  %266 = load i32*, i32** %22, align 8
  store i32 %265, i32* %266, align 4
  br label %267

267:                                              ; preds = %264, %231
  br label %268

268:                                              ; preds = %267, %177
  %269 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %270 = load i32, i32* %17, align 4
  %271 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %272 = call i32 @save_register_state(%struct.bpf_func_state* %269, i32 %270, %struct.bpf_reg_state* %271)
  br label %377

273:                                              ; preds = %144, %141
  %274 = load i64, i64* @STACK_MISC, align 8
  store i64 %274, i64* %24, align 8
  %275 = load i64, i64* @NOT_INIT, align 8
  %276 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %277 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %276, i32 0, i32 0
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %282, i32 0, i32 0
  store i64 %275, i64* %283, align 8
  %284 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %285 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %284, i32 0, i32 0
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @STACK_SPILL, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %318

296:                                              ; preds = %273
  store i32 0, i32* %15, align 4
  br label %297

297:                                              ; preds = %314, %296
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* @BPF_REG_SIZE, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %297
  %302 = load i64, i64* @STACK_MISC, align 8
  %303 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %304 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %303, i32 0, i32 0
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i64*, i64** %309, align 8
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %310, i64 %312
  store i64 %302, i64* %313, align 8
  br label %314

314:                                              ; preds = %301
  %315 = load i32, i32* %15, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %15, align 4
  br label %297

317:                                              ; preds = %297
  br label %318

318:                                              ; preds = %317, %273
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* @BPF_REG_SIZE, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %334

322:                                              ; preds = %318
  %323 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %324 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %325 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %324, i32 0, i32 0
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %325, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %323
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %322, %318
  %335 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %336 = icmp ne %struct.bpf_reg_state* %335, null
  br i1 %336, label %337, label %351

337:                                              ; preds = %334
  %338 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %20, align 8
  %339 = call i64 @register_is_null(%struct.bpf_reg_state* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %337
  %342 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %343 = load i32, i32* %12, align 4
  %344 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %342, i32 %343)
  store i32 %344, i32* %18, align 4
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load i32, i32* %18, align 4
  store i32 %348, i32* %7, align 4
  br label %379

349:                                              ; preds = %341
  %350 = load i64, i64* @STACK_ZERO, align 8
  store i64 %350, i64* %24, align 8
  br label %351

351:                                              ; preds = %349, %337, %334
  store i32 0, i32* %15, align 4
  br label %352

352:                                              ; preds = %373, %351
  %353 = load i32, i32* %15, align 4
  %354 = load i32, i32* %11, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %376

356:                                              ; preds = %352
  %357 = load i64, i64* %24, align 8
  %358 = load %struct.bpf_func_state*, %struct.bpf_func_state** %9, align 8
  %359 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %358, i32 0, i32 0
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = load i32, i32* %17, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 0
  %365 = load i64*, i64** %364, align 8
  %366 = load i32, i32* %16, align 4
  %367 = load i32, i32* %15, align 4
  %368 = sub nsw i32 %366, %367
  %369 = load i32, i32* @BPF_REG_SIZE, align 4
  %370 = srem i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %365, i64 %371
  store i64 %357, i64* %372, align 8
  br label %373

373:                                              ; preds = %356
  %374 = load i32, i32* %15, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %15, align 4
  br label %352

376:                                              ; preds = %352
  br label %377

377:                                              ; preds = %376, %268
  br label %378

378:                                              ; preds = %377, %136
  store i32 0, i32* %7, align 4
  br label %379

379:                                              ; preds = %378, %347, %255, %172, %154, %133, %76, %52
  %380 = load i32, i32* %7, align 4
  ret i32 %380
}

declare dso_local i32 @realloc_func_state(%struct.bpf_func_state*, i32, i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @register_is_const(%struct.bpf_reg_state*) #1

declare dso_local i64 @register_is_null(%struct.bpf_reg_state*) #1

declare dso_local i32 @mark_chain_precision(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @save_register_state(%struct.bpf_func_state*, i32, %struct.bpf_reg_state*) #1

declare dso_local i64 @is_spillable_regtype(i64) #1

declare dso_local i32 @verbose_linfo(%struct.bpf_verifier_env*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
