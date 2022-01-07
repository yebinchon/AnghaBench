; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_mem_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_mem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64 }
%struct.bpf_reg_state = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_func_state = type { i32 }

@PTR_TO_MAP_VALUE = common dso_local global i32 0, align 4
@BPF_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"R%d leaks addr into map\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_READ = common dso_local global i32 0, align 4
@PTR_TO_CTX = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"R%d leaks addr into ctx\0A\00", align 1
@DEF_NOT_SUBREG = common dso_local global i32 0, align 4
@PTR_TO_STACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot write into packet\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"R%d leaks addr into packet\0A\00", align 1
@PTR_TO_FLOW_KEYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"R%d leaks addr into flow keys\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"R%d cannot write into %s\0A\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@PTR_TO_TP_BUFFER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"R%d invalid mem access '%s'\0A\00", align 1
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32, i32, i32, i32, i32, i32)* @check_mem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mem_access(%struct.bpf_verifier_env* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_verifier_env*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bpf_reg_state*, align 8
  %19 = alloca %struct.bpf_reg_state*, align 8
  %20 = alloca %struct.bpf_func_state*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %25 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %24)
  store %struct.bpf_reg_state* %25, %struct.bpf_reg_state** %18, align 8
  %26 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %26, i64 %28
  store %struct.bpf_reg_state* %29, %struct.bpf_reg_state** %19, align 8
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @bpf_size_to_bytes(i32 %30)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* %21, align 4
  store i32 %35, i32* %9, align 4
  br label %481

36:                                               ; preds = %8
  %37 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @check_ptr_alignment(%struct.bpf_verifier_env* %37, %struct.bpf_reg_state* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %22, align 4
  store i32 %46, i32* %9, align 4
  br label %481

47:                                               ; preds = %36
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %49 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %56 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %110

60:                                               ; preds = %47
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @BPF_WRITE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32, i32* %16, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EACCES, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %481

78:                                               ; preds = %67, %64, %60
  %79 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @check_map_access_type(%struct.bpf_verifier_env* %79, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %22, align 4
  store i32 %88, i32* %9, align 4
  br label %481

89:                                               ; preds = %78
  %90 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @check_map_access(%struct.bpf_verifier_env* %90, i32 %91, i32 %92, i32 %93, i32 0)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @BPF_READ, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* %16, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %106 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %105, %struct.bpf_reg_state* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %101, %97, %89
  br label %449

110:                                              ; preds = %47
  %111 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %112 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PTR_TO_CTX, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %202

116:                                              ; preds = %110
  %117 = load i32, i32* @SCALAR_VALUE, align 4
  store i32 %117, i32* %23, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @BPF_WRITE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load i32, i32* %16, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %126 = load i32, i32* %16, align 4
  %127 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EACCES, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %481

135:                                              ; preds = %124, %121, %116
  %136 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %137 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @check_ctx_reg(%struct.bpf_verifier_env* %136, %struct.bpf_reg_state* %137, i32 %138)
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %22, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* %22, align 4
  store i32 %143, i32* %9, align 4
  br label %481

144:                                              ; preds = %135
  %145 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @check_ctx_access(%struct.bpf_verifier_env* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32* %23)
  store i32 %150, i32* %22, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %201, label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @BPF_READ, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %201

157:                                              ; preds = %153
  %158 = load i32, i32* %16, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %201

160:                                              ; preds = %157
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* @SCALAR_VALUE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %166 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %165, %struct.bpf_reg_state* %166, i32 %167)
  br label %194

169:                                              ; preds = %160
  %170 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %171 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @mark_reg_known_zero(%struct.bpf_verifier_env* %170, %struct.bpf_reg_state* %171, i32 %172)
  %174 = load i32, i32* %23, align 4
  %175 = call i64 @reg_type_may_be_null(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %169
  %178 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %179 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %182, i64 %184
  %186 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %185, i32 0, i32 3
  store i64 %181, i64* %186, align 8
  br label %187

187:                                              ; preds = %177, %169
  %188 = load i32, i32* @DEF_NOT_SUBREG, align 4
  %189 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %189, i64 %191
  %193 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %192, i32 0, i32 2
  store i32 %188, i32* %193, align 8
  br label %194

194:                                              ; preds = %187, %164
  %195 = load i32, i32* %23, align 4
  %196 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %196, i64 %198
  %200 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %199, i32 0, i32 0
  store i32 %195, i32* %200, align 8
  br label %201

201:                                              ; preds = %194, %157, %153, %144
  br label %448

202:                                              ; preds = %110
  %203 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %204 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @PTR_TO_STACK, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %258

208:                                              ; preds = %202
  %209 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %210 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %212
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %13, align 4
  %217 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %218 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %21, align 4
  %221 = call i32 @check_stack_access(%struct.bpf_verifier_env* %217, %struct.bpf_reg_state* %218, i32 %219, i32 %220)
  store i32 %221, i32* %22, align 4
  %222 = load i32, i32* %22, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %208
  %225 = load i32, i32* %22, align 4
  store i32 %225, i32* %9, align 4
  br label %481

226:                                              ; preds = %208
  %227 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %228 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %229 = call %struct.bpf_func_state* @func(%struct.bpf_verifier_env* %227, %struct.bpf_reg_state* %228)
  store %struct.bpf_func_state* %229, %struct.bpf_func_state** %20, align 8
  %230 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %231 = load %struct.bpf_func_state*, %struct.bpf_func_state** %20, align 8
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @update_stack_depth(%struct.bpf_verifier_env* %230, %struct.bpf_func_state* %231, i32 %232)
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %22, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = load i32, i32* %22, align 4
  store i32 %237, i32* %9, align 4
  br label %481

238:                                              ; preds = %226
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* @BPF_WRITE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %244 = load %struct.bpf_func_state*, %struct.bpf_func_state** %20, align 8
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @check_stack_write(%struct.bpf_verifier_env* %243, %struct.bpf_func_state* %244, i32 %245, i32 %246, i32 %247, i32 %248)
  store i32 %249, i32* %22, align 4
  br label %257

250:                                              ; preds = %238
  %251 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %252 = load %struct.bpf_func_state*, %struct.bpf_func_state** %20, align 8
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* %16, align 4
  %256 = call i32 @check_stack_read(%struct.bpf_verifier_env* %251, %struct.bpf_func_state* %252, i32 %253, i32 %254, i32 %255)
  store i32 %256, i32* %22, align 4
  br label %257

257:                                              ; preds = %250, %242
  br label %447

258:                                              ; preds = %202
  %259 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %260 = call i64 @reg_is_pkt_pointer(%struct.bpf_reg_state* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %315

262:                                              ; preds = %258
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* @BPF_WRITE, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %276

266:                                              ; preds = %262
  %267 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %268 = load i32, i32* %15, align 4
  %269 = call i32 @may_access_direct_pkt_data(%struct.bpf_verifier_env* %267, i32* null, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %273 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %272, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %274 = load i32, i32* @EACCES, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %9, align 4
  br label %481

276:                                              ; preds = %266, %262
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* @BPF_WRITE, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %276
  %281 = load i32, i32* %16, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %285 = load i32, i32* %16, align 4
  %286 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %290 = load i32, i32* %16, align 4
  %291 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %289, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* @EACCES, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %9, align 4
  br label %481

294:                                              ; preds = %283, %280, %276
  %295 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %21, align 4
  %299 = call i32 @check_packet_access(%struct.bpf_verifier_env* %295, i32 %296, i32 %297, i32 %298, i32 0)
  store i32 %299, i32* %22, align 4
  %300 = load i32, i32* %22, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %314, label %302

302:                                              ; preds = %294
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* @BPF_READ, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load i32, i32* %16, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %311 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %312 = load i32, i32* %16, align 4
  %313 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %310, %struct.bpf_reg_state* %311, i32 %312)
  br label %314

314:                                              ; preds = %309, %306, %302, %294
  br label %446

315:                                              ; preds = %258
  %316 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %317 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @PTR_TO_FLOW_KEYS, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %359

321:                                              ; preds = %315
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* @BPF_WRITE, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %339

325:                                              ; preds = %321
  %326 = load i32, i32* %16, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %339

328:                                              ; preds = %325
  %329 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %330 = load i32, i32* %16, align 4
  %331 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %335 = load i32, i32* %16, align 4
  %336 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %334, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* @EACCES, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %9, align 4
  br label %481

339:                                              ; preds = %328, %325, %321
  %340 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %21, align 4
  %343 = call i32 @check_flow_keys_access(%struct.bpf_verifier_env* %340, i32 %341, i32 %342)
  store i32 %343, i32* %22, align 4
  %344 = load i32, i32* %22, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %358, label %346

346:                                              ; preds = %339
  %347 = load i32, i32* %15, align 4
  %348 = load i32, i32* @BPF_READ, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = load i32, i32* %16, align 4
  %352 = icmp sge i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %355 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %356 = load i32, i32* %16, align 4
  %357 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %354, %struct.bpf_reg_state* %355, i32 %356)
  br label %358

358:                                              ; preds = %353, %350, %346, %339
  br label %445

359:                                              ; preds = %315
  %360 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %361 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i64 @type_is_sk_pointer(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %401

365:                                              ; preds = %359
  %366 = load i32, i32* %15, align 4
  %367 = load i32, i32* @BPF_WRITE, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %382

369:                                              ; preds = %365
  %370 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %371 = load i32, i32* %12, align 4
  %372 = load i32*, i32** @reg_type_str, align 8
  %373 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %374 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %372, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %370, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %371, i32 %378)
  %380 = load i32, i32* @EACCES, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %9, align 4
  br label %481

382:                                              ; preds = %365
  %383 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %21, align 4
  %388 = load i32, i32* %15, align 4
  %389 = call i32 @check_sock_access(%struct.bpf_verifier_env* %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388)
  store i32 %389, i32* %22, align 4
  %390 = load i32, i32* %22, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %400, label %392

392:                                              ; preds = %382
  %393 = load i32, i32* %16, align 4
  %394 = icmp sge i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %392
  %396 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %397 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %398 = load i32, i32* %16, align 4
  %399 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %396, %struct.bpf_reg_state* %397, i32 %398)
  br label %400

400:                                              ; preds = %395, %392, %382
  br label %444

401:                                              ; preds = %359
  %402 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %403 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = sext i32 %404 to i64
  %406 = load i64, i64* @PTR_TO_TP_BUFFER, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %430

408:                                              ; preds = %401
  %409 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %410 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %411 = load i32, i32* %12, align 4
  %412 = load i32, i32* %13, align 4
  %413 = load i32, i32* %21, align 4
  %414 = call i32 @check_tp_buffer_access(%struct.bpf_verifier_env* %409, %struct.bpf_reg_state* %410, i32 %411, i32 %412, i32 %413)
  store i32 %414, i32* %22, align 4
  %415 = load i32, i32* %22, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %429, label %417

417:                                              ; preds = %408
  %418 = load i32, i32* %15, align 4
  %419 = load i32, i32* @BPF_READ, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %429

421:                                              ; preds = %417
  %422 = load i32, i32* %16, align 4
  %423 = icmp sge i32 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %421
  %425 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %426 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %427 = load i32, i32* %16, align 4
  %428 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %425, %struct.bpf_reg_state* %426, i32 %427)
  br label %429

429:                                              ; preds = %424, %421, %417, %408
  br label %443

430:                                              ; preds = %401
  %431 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %432 = load i32, i32* %12, align 4
  %433 = load i32*, i32** @reg_type_str, align 8
  %434 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %19, align 8
  %435 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %433, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %431, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %432, i32 %439)
  %441 = load i32, i32* @EACCES, align 4
  %442 = sub nsw i32 0, %441
  store i32 %442, i32* %9, align 4
  br label %481

443:                                              ; preds = %429
  br label %444

444:                                              ; preds = %443, %400
  br label %445

445:                                              ; preds = %444, %358
  br label %446

446:                                              ; preds = %445, %314
  br label %447

447:                                              ; preds = %446, %257
  br label %448

448:                                              ; preds = %447, %201
  br label %449

449:                                              ; preds = %448, %109
  %450 = load i32, i32* %22, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %479, label %452

452:                                              ; preds = %449
  %453 = load i32, i32* %21, align 4
  %454 = load i32, i32* @BPF_REG_SIZE, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %456, label %479

456:                                              ; preds = %452
  %457 = load i32, i32* %16, align 4
  %458 = icmp sge i32 %457, 0
  br i1 %458, label %459, label %479

459:                                              ; preds = %456
  %460 = load i32, i32* %15, align 4
  %461 = load i32, i32* @BPF_READ, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %479

463:                                              ; preds = %459
  %464 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %465 = load i32, i32* %16, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %464, i64 %466
  %468 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @SCALAR_VALUE, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %479

472:                                              ; preds = %463
  %473 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %18, align 8
  %474 = load i32, i32* %16, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %473, i64 %475
  %477 = load i32, i32* %21, align 4
  %478 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %476, i32 %477)
  br label %479

479:                                              ; preds = %472, %463, %459, %456, %452, %449
  %480 = load i32, i32* %22, align 4
  store i32 %480, i32* %9, align 4
  br label %481

481:                                              ; preds = %479, %430, %369, %333, %288, %271, %236, %224, %142, %129, %87, %72, %45, %34
  %482 = load i32, i32* %9, align 4
  ret i32 %482
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @bpf_size_to_bytes(i32) #1

declare dso_local i32 @check_ptr_alignment(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32) #1

declare dso_local i64 @is_pointer_value(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @check_map_access_type(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @check_map_access(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32) #1

declare dso_local i32 @check_ctx_reg(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32) #1

declare dso_local i32 @check_ctx_access(%struct.bpf_verifier_env*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mark_reg_known_zero(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32) #1

declare dso_local i64 @reg_type_may_be_null(i32) #1

declare dso_local i32 @check_stack_access(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32) #1

declare dso_local %struct.bpf_func_state* @func(%struct.bpf_verifier_env*, %struct.bpf_reg_state*) #1

declare dso_local i32 @update_stack_depth(%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32) #1

declare dso_local i32 @check_stack_write(%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32, i32, i32, i32) #1

declare dso_local i32 @check_stack_read(%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32, i32, i32) #1

declare dso_local i64 @reg_is_pkt_pointer(%struct.bpf_reg_state*) #1

declare dso_local i32 @may_access_direct_pkt_data(%struct.bpf_verifier_env*, i32*, i32) #1

declare dso_local i32 @check_packet_access(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @check_flow_keys_access(%struct.bpf_verifier_env*, i32, i32) #1

declare dso_local i64 @type_is_sk_pointer(i32) #1

declare dso_local i32 @check_sock_access(%struct.bpf_verifier_env*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_tp_buffer_access(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32) #1

declare dso_local i32 @coerce_reg_to_size(%struct.bpf_reg_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
