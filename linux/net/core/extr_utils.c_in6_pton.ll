; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_utils.c_in6_pton.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_utils.c_in6_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN6PTON_XDIGIT = common dso_local global i32 0, align 4
@IN6PTON_NULL = common dso_local global i32 0, align 4
@IN6PTON_DELIM = common dso_local global i32 0, align 4
@IN6PTON_COLON_MASK = common dso_local global i32 0, align 4
@IN6PTON_DOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pton(i8* %0, i32 %1, i64* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca [16 x i64], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i8* null, i8** %12, align 8
  store i64* null, i64** %14, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @IN6PTON_XDIGIT, align 4
  %22 = or i32 129, %21
  %23 = load i32, i32* @IN6PTON_NULL, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %26 = call i32 @memset(i64* %25, i32 0, i32 128)
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %11, align 8
  %28 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  store i64* %28, i64** %13, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %5
  br label %35

35:                                               ; preds = %34, %217
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @xdigit2bin(i8 signext %45, i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %18, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %277

53:                                               ; preds = %43
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* @IN6PTON_DELIM, align 4
  %56 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %53
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @IN6PTON_NULL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %19, align 4
  %67 = ashr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %13, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %13, align 8
  store i64 %69, i64* %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = and i32 %72, 255
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %13, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %13, align 8
  store i64 %74, i64* %75, align 8
  br label %77

77:                                               ; preds = %65, %60
  store i32 0, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* @IN6PTON_DELIM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %222

83:                                               ; preds = %77
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %110 [
    i32 128, label %87
    i32 131, label %104
    i32 130, label %107
    i32 129, label %109
  ]

87:                                               ; preds = %83
  %88 = load i64*, i64** %13, align 8
  store i64* %88, i64** %14, align 8
  %89 = load i32, i32* @IN6PTON_XDIGIT, align 4
  %90 = load i32, i32* @IN6PTON_DELIM, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %18, align 4
  %92 = load i64*, i64** %14, align 8
  %93 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %94 = ptrtoint i64* %92 to i64
  %95 = ptrtoint i64* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = icmp uge i64 %97, 128
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load i32, i32* @IN6PTON_NULL, align 4
  %101 = load i32, i32* %18, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %99, %87
  br label %111

104:                                              ; preds = %83
  %105 = load i32, i32* @IN6PTON_XDIGIT, align 4
  %106 = or i32 %105, 128
  store i32 %106, i32* %18, align 4
  br label %111

107:                                              ; preds = %83
  %108 = load i32, i32* @IN6PTON_XDIGIT, align 4
  store i32 %108, i32* %18, align 4
  br label %111

109:                                              ; preds = %83
  store i32 128, i32* %18, align 4
  br label %111

110:                                              ; preds = %83
  store i32 0, i32* %18, align 4
  br label %111

111:                                              ; preds = %110, %109, %107, %104, %103
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %12, align 8
  br label %186

114:                                              ; preds = %53
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* @IN6PTON_DOT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = load i8*, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i8*, i8** %12, align 8
  br label %126

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i8* [ %123, %122 ], [ %125, %124 ]
  %128 = load i32, i32* %7, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = add nsw i32 %128, %134
  %136 = load i64*, i64** %13, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @in4_pton(i8* %127, i32 %135, i64* %136, i32 %137, i8** %11)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %126
  %142 = load i64*, i64** %13, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 4
  store i64* %143, i64** %13, align 8
  br label %222

144:                                              ; preds = %126
  br label %277

145:                                              ; preds = %114
  %146 = load i32, i32* %19, align 4
  %147 = shl i32 %146, 4
  %148 = load i32, i32* %20, align 4
  %149 = and i32 255, %148
  %150 = or i32 %147, %149
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* @IN6PTON_DELIM, align 4
  %152 = or i32 130, %151
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %19, align 4
  %154 = and i32 %153, 61440
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = load i32, i32* @IN6PTON_XDIGIT, align 4
  %158 = load i32, i32* %18, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %156, %145
  %161 = load i64*, i64** %14, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %176, label %163

163:                                              ; preds = %160
  %164 = load i64*, i64** %13, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 2
  %166 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %167 = getelementptr inbounds i64, i64* %166, i64 128
  %168 = icmp ult i64* %165, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i32, i32* %18, align 4
  %171 = or i32 %170, 129
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* @IN6PTON_DELIM, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %18, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %18, align 4
  br label %176

176:                                              ; preds = %169, %163, %160
  %177 = load i64*, i64** %13, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 2
  %179 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %180 = getelementptr inbounds i64, i64* %179, i64 128
  %181 = icmp uge i64* %178, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* %18, align 4
  %184 = and i32 %183, -132
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %182, %176
  br label %186

186:                                              ; preds = %185, %111
  %187 = load i64*, i64** %14, align 8
  %188 = icmp ne i64* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i64*, i64** %13, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 4
  %192 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %193 = getelementptr inbounds i64, i64* %192, i64 128
  %194 = icmp ult i64* %191, %193
  br i1 %194, label %201, label %195

195:                                              ; preds = %189, %186
  %196 = load i64*, i64** %13, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 4
  %198 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %199 = getelementptr inbounds i64, i64* %198, i64 128
  %200 = icmp eq i64* %197, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195, %189
  %202 = load i32, i32* @IN6PTON_DOT, align 4
  %203 = load i32, i32* %18, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %18, align 4
  br label %205

205:                                              ; preds = %201, %195
  %206 = load i64*, i64** %13, align 8
  %207 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %208 = getelementptr inbounds i64, i64* %207, i64 128
  %209 = icmp uge i64* %206, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = load i32, i32* @IN6PTON_XDIGIT, align 4
  %212 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %18, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %18, align 4
  br label %217

217:                                              ; preds = %210, %205
  %218 = load i8*, i8** %11, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %11, align 8
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %7, align 4
  br label %35

222:                                              ; preds = %141, %82
  store i32 15, i32* %17, align 4
  %223 = load i64*, i64** %13, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 -1
  store i64* %224, i64** %13, align 8
  %225 = load i64*, i64** %14, align 8
  %226 = icmp ne i64* %225, null
  br i1 %226, label %227, label %272

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %232, %227
  %229 = load i64*, i64** %13, align 8
  %230 = load i64*, i64** %14, align 8
  %231 = icmp uge i64* %229, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load i64*, i64** %13, align 8
  %234 = getelementptr inbounds i64, i64* %233, i32 -1
  store i64* %234, i64** %13, align 8
  %235 = load i64, i64* %233, align 8
  %236 = load i64*, i64** %8, align 8
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %17, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i64, i64* %236, i64 %239
  store i64 %235, i64* %240, align 8
  br label %228

241:                                              ; preds = %228
  br label %242

242:                                              ; preds = %252, %241
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = load i64*, i64** %14, align 8
  %246 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %247 = ptrtoint i64* %245 to i64
  %248 = ptrtoint i64* %246 to i64
  %249 = sub i64 %247, %248
  %250 = sdiv exact i64 %249, 8
  %251 = icmp sge i64 %244, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %242
  %253 = load i64*, i64** %8, align 8
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %17, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i64, i64* %253, i64 %256
  store i64 0, i64* %257, align 8
  br label %242

258:                                              ; preds = %242
  br label %259

259:                                              ; preds = %262, %258
  %260 = load i32, i32* %17, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load i64*, i64** %13, align 8
  %264 = getelementptr inbounds i64, i64* %263, i32 -1
  store i64* %264, i64** %13, align 8
  %265 = load i64, i64* %263, align 8
  %266 = load i64*, i64** %8, align 8
  %267 = load i32, i32* %17, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %17, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i64, i64* %266, i64 %269
  store i64 %265, i64* %270, align 8
  br label %259

271:                                              ; preds = %259
  br label %276

272:                                              ; preds = %222
  %273 = load i64*, i64** %8, align 8
  %274 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %275 = call i32 @memcpy(i64* %273, i64* %274, i32 128)
  br label %276

276:                                              ; preds = %272, %271
  store i32 1, i32* %16, align 4
  br label %277

277:                                              ; preds = %276, %144, %52
  %278 = load i8**, i8*** %10, align 8
  %279 = icmp ne i8** %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i8*, i8** %11, align 8
  %282 = load i8**, i8*** %10, align 8
  store i8* %281, i8** %282, align 8
  br label %283

283:                                              ; preds = %280, %277
  %284 = load i32, i32* %16, align 4
  ret i32 %284
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xdigit2bin(i8 signext, i32) #1

declare dso_local i32 @in4_pton(i8*, i32, i64*, i32, i8**) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
