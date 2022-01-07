; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_stack_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_stack_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_call_arg_meta = type { i32, i32, i64 }
%struct.bpf_reg_state = type { i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.bpf_func_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@PTR_TO_STACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"R%d type=%s expected=%s\0A\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"R%d indirect variable offset stack access prohibited for !root, var_off=%s\0A\00", align 1
@BPF_MAX_VAR_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"R%d unbounded indirect variable offset stack access\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"R%d min value is outside of stack bound\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"R%d max value is outside of stack bound\0A\00", align 1
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_MISC = common dso_local global i64 0, align 8
@STACK_ZERO = common dso_local global i64 0, align 8
@STACK_SPILL = common dso_local global i64 0, align 8
@SCALAR_VALUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"invalid indirect read from stack off %d+%d size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"invalid indirect read from stack var_off %s+%d size %d\0A\00", align 1
@REG_LIVE_READ64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32, i32, %struct.bpf_call_arg_meta*)* @check_stack_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stack_boundary(%struct.bpf_verifier_env* %0, i32 %1, i32 %2, i32 %3, %struct.bpf_call_arg_meta* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_call_arg_meta*, align 8
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_func_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [48 x i8], align 16
  %22 = alloca i64*, align 8
  %23 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bpf_call_arg_meta* %4, %struct.bpf_call_arg_meta** %11, align 8
  %24 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.bpf_reg_state* @reg_state(%struct.bpf_verifier_env* %24, i32 %25)
  store %struct.bpf_reg_state* %26, %struct.bpf_reg_state** %12, align 8
  %27 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %29 = call %struct.bpf_func_state* @func(%struct.bpf_verifier_env* %27, %struct.bpf_reg_state* %28)
  store %struct.bpf_func_state* %29, %struct.bpf_func_state** %13, align 8
  %30 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %31 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PTR_TO_STACK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %43 = call i64 @register_is_null(%struct.bpf_reg_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %357

46:                                               ; preds = %41, %38, %35
  %47 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** @reg_type_str, align 8
  %50 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %51 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @reg_type_str, align 8
  %56 = load i64, i64* @PTR_TO_STACK, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %54, i32 %58)
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %357

62:                                               ; preds = %5
  %63 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %64 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @tnum_is_const(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %62
  %70 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %71 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %75 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %16, align 4
  store i32 %77, i32* %15, align 4
  %78 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @__check_stack_boundary(%struct.bpf_verifier_env* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %6, align 4
  br label %357

88:                                               ; preds = %69
  br label %178

89:                                               ; preds = %62
  %90 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %91 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds [48 x i8], [48 x i8]* %21, i64 0, i64 0
  %96 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %97 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @tnum_strn(i8* %95, i32 48, i32 %99)
  %101 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = getelementptr inbounds [48 x i8], [48 x i8]* %21, i64 0, i64 0
  %104 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %101, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %102, i8* %103)
  %105 = load i32, i32* @EACCES, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %357

107:                                              ; preds = %89
  %108 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %109 = icmp ne %struct.bpf_call_arg_meta* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %112 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store %struct.bpf_call_arg_meta* null, %struct.bpf_call_arg_meta** %11, align 8
  br label %116

116:                                              ; preds = %115, %110, %107
  %117 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %118 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %124 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp sle i32 %125, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %122, %116
  %130 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %130, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EACCES, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %357

135:                                              ; preds = %122
  %136 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %137 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %140 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %15, align 4
  %143 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %144 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %147 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %145, %148
  store i32 %149, i32* %16, align 4
  %150 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @__check_stack_boundary(%struct.bpf_verifier_env* %150, i32 %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %135
  %159 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %6, align 4
  br label %357

163:                                              ; preds = %135
  %164 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @__check_stack_boundary(%struct.bpf_verifier_env* %164, i32 %165, i32 %166, i32 %167, i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %173, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %6, align 4
  br label %357

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %88
  %179 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %180 = icmp ne %struct.bpf_call_arg_meta* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %183 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %189 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %192 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  store i32 0, i32* %6, align 4
  br label %357

193:                                              ; preds = %181, %178
  %194 = load i32, i32* %15, align 4
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %349, %193
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %197, %198
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %352

201:                                              ; preds = %195
  %202 = load i32, i32* %17, align 4
  %203 = sub nsw i32 0, %202
  %204 = sub nsw i32 %203, 1
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* @BPF_REG_SIZE, align 4
  %207 = sdiv i32 %205, %206
  store i32 %207, i32* %20, align 4
  %208 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %209 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %19, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %201
  br label %297

214:                                              ; preds = %201
  %215 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %216 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %215, i32 0, i32 1
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load i32, i32* %20, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @BPF_REG_SIZE, align 4
  %225 = srem i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %222, i64 %226
  store i64* %227, i64** %22, align 8
  %228 = load i64*, i64** %22, align 8
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @STACK_MISC, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %214
  br label %329

233:                                              ; preds = %214
  %234 = load i64*, i64** %22, align 8
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @STACK_ZERO, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i64, i64* @STACK_MISC, align 8
  %240 = load i64*, i64** %22, align 8
  store i64 %239, i64* %240, align 8
  br label %329

241:                                              ; preds = %233
  %242 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %243 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %242, i32 0, i32 1
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @STACK_SPILL, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %296

254:                                              ; preds = %241
  %255 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %256 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %255, i32 0, i32 1
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SCALAR_VALUE, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %296

266:                                              ; preds = %254
  %267 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %268 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %267, i32 0, i32 1
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = call i32 @__mark_reg_unknown(%struct.TYPE_8__* %273)
  store i32 0, i32* %18, align 4
  br label %275

275:                                              ; preds = %292, %266
  %276 = load i32, i32* %18, align 4
  %277 = load i32, i32* @BPF_REG_SIZE, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %295

279:                                              ; preds = %275
  %280 = load i64, i64* @STACK_MISC, align 8
  %281 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %282 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %281, i32 0, i32 1
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = load i32, i32* %20, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %18, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  store i64 %280, i64* %291, align 8
  br label %292

292:                                              ; preds = %279
  %293 = load i32, i32* %18, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %18, align 4
  br label %275

295:                                              ; preds = %275
  br label %329

296:                                              ; preds = %254, %241
  br label %297

297:                                              ; preds = %296, %213
  %298 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %299 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @tnum_is_const(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %297
  %305 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %15, align 4
  %309 = sub nsw i32 %307, %308
  %310 = load i32, i32* %9, align 4
  %311 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %305, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %306, i32 %309, i32 %310)
  br label %326

312:                                              ; preds = %297
  %313 = getelementptr inbounds [48 x i8], [48 x i8]* %23, i64 0, i64 0
  %314 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %315 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @tnum_strn(i8* %313, i32 48, i32 %317)
  %319 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %320 = getelementptr inbounds [48 x i8], [48 x i8]* %23, i64 0, i64 0
  %321 = load i32, i32* %17, align 4
  %322 = load i32, i32* %15, align 4
  %323 = sub nsw i32 %321, %322
  %324 = load i32, i32* %9, align 4
  %325 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %319, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %320, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %312, %304
  %327 = load i32, i32* @EACCES, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %6, align 4
  br label %357

329:                                              ; preds = %295, %238, %232
  %330 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %331 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %332 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %331, i32 0, i32 1
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %332, align 8
  %334 = load i32, i32* %20, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %339 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %338, i32 0, i32 1
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @REG_LIVE_READ64, align 4
  %348 = call i32 @mark_reg_read(%struct.bpf_verifier_env* %330, %struct.TYPE_8__* %337, i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %329
  %350 = load i32, i32* %17, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %17, align 4
  br label %195

352:                                              ; preds = %195
  %353 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %354 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %355 = load i32, i32* %15, align 4
  %356 = call i32 @update_stack_depth(%struct.bpf_verifier_env* %353, %struct.bpf_func_state* %354, i32 %355)
  store i32 %356, i32* %6, align 4
  br label %357

357:                                              ; preds = %352, %326, %186, %172, %158, %129, %94, %86, %46, %45
  %358 = load i32, i32* %6, align 4
  ret i32 %358
}

declare dso_local %struct.bpf_reg_state* @reg_state(%struct.bpf_verifier_env*, i32) #1

declare dso_local %struct.bpf_func_state* @func(%struct.bpf_verifier_env*, %struct.bpf_reg_state*) #1

declare dso_local i64 @register_is_null(%struct.bpf_reg_state*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @tnum_is_const(i32) #1

declare dso_local i32 @__check_stack_boundary(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @tnum_strn(i8*, i32, i32) #1

declare dso_local i32 @__mark_reg_unknown(%struct.TYPE_8__*) #1

declare dso_local i32 @mark_reg_read(%struct.bpf_verifier_env*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @update_stack_depth(%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
