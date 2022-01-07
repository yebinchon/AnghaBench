; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_normalizeM2.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_normalizeM2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16*, i64, i32*, i64, i64)* @FSE_normalizeM2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_normalizeM2(i16* %0, i64 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i16* %0, i16** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i16 -2, i16* %12, align 2
  store i64 0, i64* %14, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 %31, 3
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  %35 = lshr i64 %32, %34
  store i64 %35, i64* %17, align 8
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %96, %5
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i16*, i16** %7, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i16, i16* %47, i64 %48
  store i16 0, i16* %49, align 2
  br label %96

50:                                               ; preds = %40
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %16, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load i16*, i16** %7, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i16, i16* %59, i64 %60
  store i16 -1, i16* %61, align 2
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %96

71:                                               ; preds = %50
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %17, align 8
  %78 = icmp ule i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load i16*, i16** %7, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i16, i16* %80, i64 %81
  store i16 1, i16* %82, align 2
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %14, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %10, align 8
  br label %96

92:                                               ; preds = %71
  %93 = load i16*, i16** %7, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds i16, i16* %93, i64 %94
  store i16 -2, i16* %95, align 2
  br label %96

96:                                               ; preds = %92, %79, %58, %46
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %36

99:                                               ; preds = %36
  %100 = load i64, i64* %8, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %14, align 8
  %105 = sub i64 %103, %104
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %15, align 8
  %108 = udiv i64 %106, %107
  %109 = load i64, i64* %17, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %160

111:                                              ; preds = %99
  %112 = load i64, i64* %10, align 8
  %113 = mul i64 %112, 3
  %114 = load i64, i64* %15, align 8
  %115 = mul i64 %114, 2
  %116 = udiv i64 %113, %115
  store i64 %116, i64* %17, align 8
  store i64 0, i64* %13, align 8
  br label %117

117:                                              ; preds = %150, %111
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp ule i64 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %117
  %122 = load i16*, i16** %7, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds i16, i16* %122, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = icmp eq i32 %126, -2
  br i1 %127, label %128, label %149

128:                                              ; preds = %121
  %129 = load i32*, i32** %9, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* %17, align 8
  %135 = icmp ule i64 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %128
  %137 = load i16*, i16** %7, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds i16, i16* %137, i64 %138
  store i16 1, i16* %139, align 2
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %14, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %10, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %10, align 8
  br label %150

149:                                              ; preds = %128, %121
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i64, i64* %13, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %13, align 8
  br label %117

153:                                              ; preds = %117
  %154 = load i64, i64* %8, align 8
  %155 = trunc i64 %154 to i32
  %156 = shl i32 1, %155
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %14, align 8
  %159 = sub i64 %157, %158
  store i64 %159, i64* %15, align 8
  br label %160

160:                                              ; preds = %153, %99
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %162, 1
  %164 = icmp eq i64 %161, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %160
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %13, align 8
  br label %166

166:                                              ; preds = %186, %165
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* %11, align 8
  %169 = icmp ule i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32*, i32** %9, align 8
  %172 = load i64, i64* %13, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %19, align 8
  %177 = icmp ugt i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = load i64, i64* %13, align 8
  store i64 %179, i64* %18, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i64, i64* %13, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %19, align 8
  br label %185

185:                                              ; preds = %178, %170
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %13, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %13, align 8
  br label %166

189:                                              ; preds = %166
  %190 = load i64, i64* %15, align 8
  %191 = trunc i64 %190 to i16
  %192 = sext i16 %191 to i32
  %193 = load i16*, i16** %7, align 8
  %194 = load i64, i64* %18, align 8
  %195 = getelementptr inbounds i16, i16* %193, i64 %194
  %196 = load i16, i16* %195, align 2
  %197 = sext i16 %196 to i32
  %198 = add nsw i32 %197, %192
  %199 = trunc i32 %198 to i16
  store i16 %199, i16* %195, align 2
  store i64 0, i64* %6, align 8
  br label %300

200:                                              ; preds = %160
  %201 = load i64, i64* %10, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %200
  store i64 0, i64* %13, align 8
  br label %204

204:                                              ; preds = %223, %203
  %205 = load i64, i64* %15, align 8
  %206 = icmp ugt i64 %205, 0
  br i1 %206, label %207, label %229

207:                                              ; preds = %204
  %208 = load i16*, i16** %7, align 8
  %209 = load i64, i64* %13, align 8
  %210 = getelementptr inbounds i16, i16* %208, i64 %209
  %211 = load i16, i16* %210, align 2
  %212 = sext i16 %211 to i32
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %207
  %215 = load i64, i64* %15, align 8
  %216 = add i64 %215, -1
  store i64 %216, i64* %15, align 8
  %217 = load i16*, i16** %7, align 8
  %218 = load i64, i64* %13, align 8
  %219 = getelementptr inbounds i16, i16* %217, i64 %218
  %220 = load i16, i16* %219, align 2
  %221 = add i16 %220, 1
  store i16 %221, i16* %219, align 2
  br label %222

222:                                              ; preds = %214, %207
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %13, align 8
  %225 = add i64 %224, 1
  %226 = load i64, i64* %11, align 8
  %227 = add i64 %226, 1
  %228 = urem i64 %225, %227
  store i64 %228, i64* %13, align 8
  br label %204

229:                                              ; preds = %204
  store i64 0, i64* %6, align 8
  br label %300

230:                                              ; preds = %200
  %231 = load i64, i64* %8, align 8
  %232 = sub i64 62, %231
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = sub nsw i32 %234, 1
  %236 = zext i32 %235 to i64
  %237 = shl i64 1, %236
  %238 = sub i64 %237, 1
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %20, align 4
  %241 = shl i32 1, %240
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %15, align 8
  %244 = mul i64 %242, %243
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = add i64 %244, %246
  %248 = trunc i64 %247 to i32
  %249 = load i64, i64* %10, align 8
  %250 = call i32 @div_u64(i32 %248, i64 %249)
  store i32 %250, i32* %22, align 4
  %251 = load i32, i32* %21, align 4
  store i32 %251, i32* %23, align 4
  store i64 0, i64* %13, align 8
  br label %252

252:                                              ; preds = %296, %230
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %11, align 8
  %255 = icmp ule i64 %253, %254
  br i1 %255, label %256, label %299

256:                                              ; preds = %252
  %257 = load i16*, i16** %7, align 8
  %258 = load i64, i64* %13, align 8
  %259 = getelementptr inbounds i16, i16* %257, i64 %258
  %260 = load i16, i16* %259, align 2
  %261 = sext i16 %260 to i32
  %262 = icmp eq i32 %261, -2
  br i1 %262, label %263, label %295

263:                                              ; preds = %256
  %264 = load i32, i32* %23, align 4
  %265 = load i32*, i32** %9, align 8
  %266 = load i64, i64* %13, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %22, align 4
  %270 = mul i32 %268, %269
  %271 = add i32 %264, %270
  store i32 %271, i32* %24, align 4
  %272 = load i32, i32* %23, align 4
  %273 = load i32, i32* %20, align 4
  %274 = ashr i32 %272, %273
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %25, align 8
  %276 = load i32, i32* %24, align 4
  %277 = load i32, i32* %20, align 4
  %278 = ashr i32 %276, %277
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %26, align 8
  %280 = load i64, i64* %26, align 8
  %281 = load i64, i64* %25, align 8
  %282 = sub i64 %280, %281
  store i64 %282, i64* %27, align 8
  %283 = load i64, i64* %27, align 8
  %284 = icmp ult i64 %283, 1
  br i1 %284, label %285, label %288

285:                                              ; preds = %263
  %286 = load i32, i32* @GENERIC, align 4
  %287 = call i64 @ERROR(i32 %286)
  store i64 %287, i64* %6, align 8
  br label %300

288:                                              ; preds = %263
  %289 = load i64, i64* %27, align 8
  %290 = trunc i64 %289 to i16
  %291 = load i16*, i16** %7, align 8
  %292 = load i64, i64* %13, align 8
  %293 = getelementptr inbounds i16, i16* %291, i64 %292
  store i16 %290, i16* %293, align 2
  %294 = load i32, i32* %24, align 4
  store i32 %294, i32* %23, align 4
  br label %295

295:                                              ; preds = %288, %256
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %13, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %13, align 8
  br label %252

299:                                              ; preds = %252
  store i64 0, i64* %6, align 8
  br label %300

300:                                              ; preds = %299, %285, %229, %189
  %301 = load i64, i64* %6, align 8
  ret i64 %301
}

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
