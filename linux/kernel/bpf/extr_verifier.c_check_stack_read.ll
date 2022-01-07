; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_stack_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_stack_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { i32, %struct.bpf_reg_state*, %struct.TYPE_2__* }
%struct.bpf_reg_state = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bpf_reg_state, i64* }

@BPF_REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"invalid read from stack off %d+0 size %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@STACK_SPILL = common dso_local global i64 0, align 8
@SCALAR_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid size of register fill\0A\00", align 1
@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@REG_LIVE_READ64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"corrupted spill memory\0A\00", align 1
@STACK_MISC = common dso_local global i64 0, align 8
@STACK_ZERO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"invalid read from stack off %d+%d size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32, i32, i32)* @check_stack_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stack_read(%struct.bpf_verifier_env* %0, %struct.bpf_func_state* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_func_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_verifier_state*, align 8
  %13 = alloca %struct.bpf_func_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_reg_state*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %20, i32 0, i32 1
  %22 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %21, align 8
  store %struct.bpf_verifier_state* %22, %struct.bpf_verifier_state** %12, align 8
  %23 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %12, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %23, i32 0, i32 1
  %25 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %24, align 8
  %26 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %12, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %25, i64 %28
  %30 = load %struct.bpf_func_state*, %struct.bpf_func_state** %29, align 8
  store %struct.bpf_func_state* %30, %struct.bpf_func_state** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 0, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @BPF_REG_SIZE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %38 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %5
  %43 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %268

49:                                               ; preds = %5
  %50 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %51 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %18, align 8
  %58 = load %struct.bpf_func_state*, %struct.bpf_func_state** %8, align 8
  %59 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.bpf_reg_state* %64, %struct.bpf_reg_state** %17, align 8
  %65 = load i64*, i64** %18, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @STACK_SPILL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %175

70:                                               ; preds = %49
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @BPF_REG_SIZE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %118

74:                                               ; preds = %70
  %75 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %76 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SCALAR_VALUE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %82 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %83 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %81, i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %87 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @EACCES, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %268

90:                                               ; preds = %74
  %91 = load i32, i32* %11, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %95 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %96 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %95, i32 0, i32 1
  %97 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %94, %struct.bpf_reg_state* %97, i32 %98)
  %100 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %101 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %102 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %101, i32 0, i32 1
  %103 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %103, i64 %105
  %107 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %100
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %93, %90
  %111 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %112 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %113 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %114 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @REG_LIVE_READ64, align 4
  %117 = call i32 @mark_reg_read(%struct.bpf_verifier_env* %111, %struct.bpf_reg_state* %112, i32 %115, i32 %116)
  store i32 0, i32* %6, align 4
  br label %268

118:                                              ; preds = %70
  store i32 1, i32* %14, align 4
  br label %119

119:                                              ; preds = %141, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @BPF_REG_SIZE, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %119
  %124 = load i64*, i64** %18, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @BPF_REG_SIZE, align 4
  %129 = srem i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %124, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @STACK_SPILL, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %123
  %136 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %137 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @EACCES, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %268

140:                                              ; preds = %123
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %119

144:                                              ; preds = %119
  %145 = load i32, i32* %11, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %144
  %148 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %149 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %148, i32 0, i32 1
  %150 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %150, i64 %152
  %154 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %155 = bitcast %struct.bpf_reg_state* %153 to i8*
  %156 = bitcast %struct.bpf_reg_state* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 24, i1 false)
  %157 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %158 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %159 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %158, i32 0, i32 1
  %160 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %160, i64 %162
  %164 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %157
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %147, %144
  %168 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %169 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %170 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %171 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @REG_LIVE_READ64, align 4
  %174 = call i32 @mark_reg_read(%struct.bpf_verifier_env* %168, %struct.bpf_reg_state* %169, i32 %172, i32 %173)
  br label %267

175:                                              ; preds = %49
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %216, %175
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %219

180:                                              ; preds = %176
  %181 = load i64*, i64** %18, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* @BPF_REG_SIZE, align 4
  %186 = srem i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %181, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @STACK_MISC, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %216

193:                                              ; preds = %180
  %194 = load i64*, i64** %18, align 8
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %14, align 4
  %197 = sub nsw i32 %195, %196
  %198 = load i32, i32* @BPF_REG_SIZE, align 4
  %199 = srem i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %194, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @STACK_ZERO, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %193
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %216

208:                                              ; preds = %193
  %209 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %209, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* @EACCES, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %6, align 4
  br label %268

216:                                              ; preds = %205, %192
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %176

219:                                              ; preds = %176
  %220 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %221 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %222 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %17, align 8
  %223 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @REG_LIVE_READ64, align 4
  %226 = call i32 @mark_reg_read(%struct.bpf_verifier_env* %220, %struct.bpf_reg_state* %221, i32 %224, i32 %225)
  %227 = load i32, i32* %11, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %266

229:                                              ; preds = %219
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %229
  %234 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %235 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %234, i32 0, i32 1
  %236 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %236, i64 %238
  %240 = call i32 @__mark_reg_const_zero(%struct.bpf_reg_state* %239)
  %241 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %242 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %241, i32 0, i32 1
  %243 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %243, i64 %245
  %247 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %246, i32 0, i32 1
  store i32 1, i32* %247, align 8
  br label %255

248:                                              ; preds = %229
  %249 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %250 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %251 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %250, i32 0, i32 1
  %252 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %249, %struct.bpf_reg_state* %252, i32 %253)
  br label %255

255:                                              ; preds = %248, %233
  %256 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %257 = load %struct.bpf_func_state*, %struct.bpf_func_state** %13, align 8
  %258 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %257, i32 0, i32 1
  %259 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %259, i64 %261
  %263 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %256
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %255, %219
  br label %267

267:                                              ; preds = %266, %167
  store i32 0, i32* %6, align 4
  br label %268

268:                                              ; preds = %267, %208, %135, %110, %80, %42
  %269 = load i32, i32* %6, align 4
  ret i32 %269
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @verbose_linfo(%struct.bpf_verifier_env*, i32, i8*) #1

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32) #1

declare dso_local i32 @mark_reg_read(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__mark_reg_const_zero(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
