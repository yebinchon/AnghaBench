; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_reg_set_min_max.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_reg_set_min_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i8*, i8*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_reg_state*, %struct.bpf_reg_state*, i32, i32, i32)* @reg_set_min_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_set_min_max(%struct.bpf_reg_state* %0, %struct.bpf_reg_state* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca %struct.bpf_reg_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = alloca %struct.TYPE_7__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %6, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %26 = call i64 @__is_pointer_value(i32 0, %struct.bpf_reg_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %315

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = trunc i64 %42 to i32
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %301 [
    i32 138, label %49
    i32 133, label %49
    i32 132, label %84
    i32 137, label %115
    i32 136, label %115
    i32 131, label %166
    i32 130, label %166
    i32 135, label %208
    i32 134, label %208
    i32 129, label %259
    i32 128, label %259
  ]

49:                                               ; preds = %46, %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 138
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  br label %56

54:                                               ; preds = %49
  %55 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi %struct.bpf_reg_state* [ %53, %52 ], [ %55, %54 ]
  store %struct.bpf_reg_state* %57, %struct.bpf_reg_state** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %62 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %71 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %75 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 4
  br label %83

79:                                               ; preds = %56
  %80 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %60
  br label %302

84:                                               ; preds = %46
  %85 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %86 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %85, i32 0, i32 4
  %87 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %88 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %87, i32 0, i32 4
  %89 = load i32, i32* %8, align 4
  %90 = xor i32 %89, -1
  %91 = call i32 @tnum_const(i32 %90)
  %92 = bitcast %struct.TYPE_7__* %88 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @tnum_and(i64 %93, i32 %91)
  %95 = bitcast %struct.TYPE_7__* %15 to i64*
  store i64 %94, i64* %95, align 4
  %96 = bitcast %struct.TYPE_7__* %86 to i8*
  %97 = bitcast %struct.TYPE_7__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 8, i1 false)
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @is_power_of_2(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %84
  %102 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %103 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %102, i32 0, i32 4
  %104 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %105 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %104, i32 0, i32 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @tnum_const(i32 %106)
  %108 = bitcast %struct.TYPE_7__* %105 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @tnum_or(i64 %109, i32 %107)
  %111 = bitcast %struct.TYPE_7__* %16 to i64*
  store i64 %110, i64* %111, align 4
  %112 = bitcast %struct.TYPE_7__* %103 to i8*
  %113 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 4 %113, i64 8, i1 false)
  br label %114

114:                                              ; preds = %101, %84
  br label %302

115:                                              ; preds = %46, %46
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 136
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  br label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 1
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i32 [ %119, %118 ], [ %122, %120 ]
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 136
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  br label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %127
  %133 = phi i32 [ %129, %127 ], [ %131, %130 ]
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %138 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %137, i32 0, i32 4
  %139 = bitcast %struct.TYPE_7__* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @gen_hi_max(i64 %140)
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %17, align 4
  %144 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %145 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %144, i32 0, i32 4
  %146 = bitcast %struct.TYPE_7__* %145 to i64*
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @gen_hi_min(i64 %147)
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %18, align 4
  br label %151

151:                                              ; preds = %136, %132
  %152 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %153 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i8* @min(i8* %154, i32 %155)
  %157 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %158 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %160 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = call i8* @max(i8* %161, i32 %162)
  %164 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %165 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  br label %302

166:                                              ; preds = %46, %46
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %167, 130
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  br label %174

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  %173 = sub nsw i32 %172, 1
  br label %174

174:                                              ; preds = %171, %169
  %175 = phi i32 [ %170, %169 ], [ %173, %171 ]
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 130
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  br label %183

181:                                              ; preds = %174
  %182 = load i32, i32* %11, align 4
  br label %183

183:                                              ; preds = %181, %178
  %184 = phi i32 [ %180, %178 ], [ %182, %181 ]
  store i32 %184, i32* %20, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %190 = call i32 @cmp_val_with_extended_s64(i32 %188, %struct.bpf_reg_state* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  br label %302

193:                                              ; preds = %187, %183
  %194 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %195 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %19, align 4
  %198 = call i8* @min(i8* %196, i32 %197)
  %199 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %200 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %202 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* %20, align 4
  %205 = call i8* @max(i8* %203, i32 %204)
  %206 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %207 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  br label %302

208:                                              ; preds = %46, %46
  %209 = load i32, i32* %9, align 4
  %210 = icmp eq i32 %209, 134
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  br label %216

213:                                              ; preds = %208
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  br label %216

216:                                              ; preds = %213, %211
  %217 = phi i32 [ %212, %211 ], [ %215, %213 ]
  store i32 %217, i32* %21, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp eq i32 %218, 134
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i32, i32* %8, align 4
  %222 = sub nsw i32 %221, 1
  br label %225

223:                                              ; preds = %216
  %224 = load i32, i32* %8, align 4
  br label %225

225:                                              ; preds = %223, %220
  %226 = phi i32 [ %222, %220 ], [ %224, %223 ]
  store i32 %226, i32* %22, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %225
  %230 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %231 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %230, i32 0, i32 4
  %232 = bitcast %struct.TYPE_7__* %231 to i64*
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @gen_hi_min(i64 %233)
  %235 = load i32, i32* %21, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %21, align 4
  %237 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %238 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %237, i32 0, i32 4
  %239 = bitcast %struct.TYPE_7__* %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @gen_hi_max(i64 %240)
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %22, align 4
  br label %244

244:                                              ; preds = %229, %225
  %245 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %246 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = load i32, i32* %21, align 4
  %249 = call i8* @max(i8* %247, i32 %248)
  %250 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %251 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  %252 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %253 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = load i32, i32* %22, align 4
  %256 = call i8* @min(i8* %254, i32 %255)
  %257 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %258 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  br label %302

259:                                              ; preds = %46, %46
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %260, 128
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load i32, i32* %11, align 4
  br label %267

264:                                              ; preds = %259
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi i32 [ %263, %262 ], [ %266, %264 ]
  store i32 %268, i32* %23, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp eq i32 %269, 128
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load i32, i32* %11, align 4
  %273 = sub nsw i32 %272, 1
  br label %276

274:                                              ; preds = %267
  %275 = load i32, i32* %11, align 4
  br label %276

276:                                              ; preds = %274, %271
  %277 = phi i32 [ %273, %271 ], [ %275, %274 ]
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load i32, i32* %11, align 4
  %282 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %283 = call i32 @cmp_val_with_extended_s64(i32 %281, %struct.bpf_reg_state* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  br label %302

286:                                              ; preds = %280, %276
  %287 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %288 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* %23, align 4
  %291 = call i8* @max(i8* %289, i32 %290)
  %292 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %293 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %292, i32 0, i32 1
  store i8* %291, i8** %293, align 8
  %294 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %295 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = load i32, i32* %24, align 4
  %298 = call i8* @min(i8* %296, i32 %297)
  %299 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %300 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  br label %302

301:                                              ; preds = %46
  br label %302

302:                                              ; preds = %301, %286, %285, %244, %193, %192, %151, %114, %83
  %303 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %304 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %303)
  %305 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %306 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %305)
  %307 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %308 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %307)
  %309 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %310 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %309)
  %311 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %312 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %311)
  %313 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %314 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %313)
  br label %315

315:                                              ; preds = %302, %28
  ret void
}

declare dso_local i64 @__is_pointer_value(i32, %struct.bpf_reg_state*) #1

declare dso_local i32 @__mark_reg_known(%struct.bpf_reg_state*, i32) #1

declare dso_local i64 @tnum_and(i64, i32) #1

declare dso_local i32 @tnum_const(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @tnum_or(i64, i32) #1

declare dso_local i32 @gen_hi_max(i64) #1

declare dso_local i32 @gen_hi_min(i64) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @cmp_val_with_extended_s64(i32, %struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_deduce_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_bound_offset(%struct.bpf_reg_state*) #1

declare dso_local i32 @__update_reg_bounds(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
