; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_is_branch_taken.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_is_branch_taken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@S32_MIN = common dso_local global i64 0, align 8
@S32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_reg_state*, i32, i32, i32)* @is_branch_taken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_branch_taken(%struct.bpf_reg_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_reg_state, align 8
  %11 = alloca i64, align 8
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %13 = call i64 @__is_pointer_value(i32 0, %struct.bpf_reg_state* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %264

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %21 = bitcast %struct.bpf_reg_state* %10 to i8*
  %22 = bitcast %struct.bpf_reg_state* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 40, i1 false)
  store %struct.bpf_reg_state* %10, %struct.bpf_reg_state** %6, align 8
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %24 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %23, i32 4)
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = xor i64 %27, %30
  %32 = and i64 %31, 2147483648
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load i64, i64* @S32_MIN, align 8
  %36 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @S32_MAX, align 8
  %39 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %40 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %19
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %51 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %11, align 8
  br label %58

55:                                               ; preds = %16
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %263 [
    i32 138, label %60
    i32 133, label %79
    i32 132, label %97
    i32 136, label %127
    i32 130, label %145
    i32 134, label %161
    i32 128, label %179
    i32 137, label %195
    i32 131, label %213
    i32 135, label %229
    i32 129, label %247
  ]

60:                                               ; preds = %58
  %61 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %62 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %61, i32 0, i32 4
  %63 = bitcast %struct.TYPE_3__* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @tnum_is_const(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %69 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %68, i32 0, i32 4
  %70 = load i32, i32* %7, align 4
  %71 = bitcast %struct.TYPE_3__* %69 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @tnum_equals_const(i64 %72, i32 %70)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %264

78:                                               ; preds = %60
  br label %263

79:                                               ; preds = %58
  %80 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %81 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %80, i32 0, i32 4
  %82 = bitcast %struct.TYPE_3__* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @tnum_is_const(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %88 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %87, i32 0, i32 4
  %89 = load i32, i32* %7, align 4
  %90 = bitcast %struct.TYPE_3__* %88 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @tnum_equals_const(i64 %91, i32 %89)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %264

96:                                               ; preds = %79
  br label %263

97:                                               ; preds = %58
  %98 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %99 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = xor i32 %101, -1
  %103 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %104 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %102, %106
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  store i32 1, i32* %5, align 4
  br label %264

112:                                              ; preds = %97
  %113 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %114 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %118 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %116, %120
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %264

126:                                              ; preds = %112
  br label %263

127:                                              ; preds = %58
  %128 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %129 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp ugt i64 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %264

135:                                              ; preds = %127
  %136 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %137 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ule i64 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %264

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143
  br label %263

145:                                              ; preds = %58
  %146 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %147 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %11, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* %5, align 4
  br label %264

152:                                              ; preds = %145
  %153 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %154 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %264

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159
  br label %263

161:                                              ; preds = %58
  %162 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %163 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i32 1, i32* %5, align 4
  br label %264

169:                                              ; preds = %161
  %170 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %171 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp uge i64 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %264

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177
  br label %263

179:                                              ; preds = %58
  %180 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %181 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %11, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 1, i32* %5, align 4
  br label %264

186:                                              ; preds = %179
  %187 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %188 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %11, align 8
  %191 = icmp sge i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 0, i32* %5, align 4
  br label %264

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193
  br label %263

195:                                              ; preds = %58
  %196 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %197 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = icmp uge i64 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  store i32 1, i32* %5, align 4
  br label %264

203:                                              ; preds = %195
  %204 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %205 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  store i32 0, i32* %5, align 4
  br label %264

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %211
  br label %263

213:                                              ; preds = %58
  %214 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %215 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %11, align 8
  %218 = icmp sge i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store i32 1, i32* %5, align 4
  br label %264

220:                                              ; preds = %213
  %221 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %222 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %11, align 8
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  store i32 0, i32* %5, align 4
  br label %264

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227
  br label %263

229:                                              ; preds = %58
  %230 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %231 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp ule i64 %232, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  store i32 1, i32* %5, align 4
  br label %264

237:                                              ; preds = %229
  %238 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %239 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp ugt i64 %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  store i32 0, i32* %5, align 4
  br label %264

245:                                              ; preds = %237
  br label %246

246:                                              ; preds = %245
  br label %263

247:                                              ; preds = %58
  %248 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %249 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %11, align 8
  %252 = icmp sle i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  store i32 1, i32* %5, align 4
  br label %264

254:                                              ; preds = %247
  %255 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %256 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %11, align 8
  %259 = icmp sgt i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  store i32 0, i32* %5, align 4
  br label %264

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %58, %262, %246, %228, %212, %194, %178, %160, %144, %126, %96, %78
  store i32 -1, i32* %5, align 4
  br label %264

264:                                              ; preds = %263, %260, %253, %244, %236, %226, %219, %210, %202, %192, %185, %176, %168, %158, %151, %142, %134, %125, %111, %86, %67, %15
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i64 @__is_pointer_value(i32, %struct.bpf_reg_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coerce_reg_to_size(%struct.bpf_reg_state*, i32) #1

declare dso_local i32 @tnum_is_const(i64) #1

declare dso_local i32 @tnum_equals_const(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
