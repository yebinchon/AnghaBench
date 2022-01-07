; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_eval_unary.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_eval_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ops = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"eval%d !\00", align 1
@eval_ops = common dso_local global i32 0, align 4
@LT_ERROR = common dso_local global i64 0, align 8
@LT_IF = common dso_local global i64 0, align 8
@LT_TRUE = common dso_local global i64 0, align 8
@LT_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"eval%d (\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"eval%d number\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"eval%d defined\00", align 1
@value = common dso_local global i8** null, align 8
@constexpr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"eval%d symbol\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"eval%d bad expr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"eval%d = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ops*, i32*, i8**)* @eval_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_unary(%struct.ops* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ops*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ops* %0, %struct.ops** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @skipcomment(i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 33
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load %struct.ops*, %struct.ops** %5, align 8
  %22 = load i32, i32* @eval_ops, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds %struct.ops, %struct.ops* %21, i64 %24
  %26 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.ops* %25)
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load %struct.ops*, %struct.ops** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @eval_unary(%struct.ops* %29, i32* %30, i8** %8)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @LT_ERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i64, i64* @LT_ERROR, align 8
  store i64 %36, i64* %4, align 8
  br label %285

37:                                               ; preds = %20
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @LT_IF, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i64, i64* @LT_TRUE, align 8
  br label %55

53:                                               ; preds = %41
  %54 = load i64, i64* @LT_FALSE, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %55, %37
  br label %273

58:                                               ; preds = %3
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 40
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load %struct.ops*, %struct.ops** %5, align 8
  %67 = load i32, i32* @eval_ops, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds %struct.ops, %struct.ops* %66, i64 %69
  %71 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.ops* %70)
  %72 = load i32, i32* @eval_ops, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @eval_table(i32 %72, i32* %73, i8** %8)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @LT_ERROR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i64, i64* @LT_ERROR, align 8
  store i64 %79, i64* %4, align 8
  br label %285

80:                                               ; preds = %63
  %81 = load i8*, i8** %8, align 8
  %82 = call i8* @skipcomment(i8* %81)
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 41
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i64, i64* @LT_ERROR, align 8
  store i64 %89, i64* %4, align 8
  br label %285

90:                                               ; preds = %80
  br label %272

91:                                               ; preds = %58
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isdigit(i8 zeroext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %91
  %97 = load %struct.ops*, %struct.ops** %5, align 8
  %98 = load i32, i32* @eval_ops, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds %struct.ops, %struct.ops* %97, i64 %100
  %102 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.ops* %101)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strtol(i8* %103, i8** %9, i32 0)
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i64, i64* @LT_ERROR, align 8
  store i64 %110, i64* %4, align 8
  br label %285

111:                                              ; preds = %96
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* @LT_TRUE, align 8
  br label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @LT_FALSE, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  store i64 %120, i64* %12, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = call i8* @skipsym(i8* %121)
  store i8* %122, i8** %8, align 8
  br label %271

123:                                              ; preds = %91
  %124 = load i8*, i8** %8, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %123
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @endsym(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %193

133:                                              ; preds = %127
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 7
  %136 = call i8* @skipcomment(i8* %135)
  store i8* %136, i8** %8, align 8
  %137 = load %struct.ops*, %struct.ops** %5, align 8
  %138 = load i32, i32* @eval_ops, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 0, %139
  %141 = getelementptr inbounds %struct.ops, %struct.ops* %137, i64 %140
  %142 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.ops* %141)
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 40
  br i1 %146, label %147, label %151

147:                                              ; preds = %133
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = call i8* @skipcomment(i8* %149)
  store i8* %150, i8** %8, align 8
  store i32 1, i32* %11, align 4
  br label %152

151:                                              ; preds = %133
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %151, %147
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 @findsym(i8* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i64, i64* @LT_IF, align 8
  store i64 %158, i64* %12, align 8
  br label %177

159:                                              ; preds = %152
  %160 = load i8**, i8*** @value, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  %166 = zext i1 %165 to i32
  %167 = load i32*, i32** %6, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %159
  %172 = load i64, i64* @LT_TRUE, align 8
  br label %175

173:                                              ; preds = %159
  %174 = load i64, i64* @LT_FALSE, align 8
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i64 [ %172, %171 ], [ %174, %173 ]
  store i64 %176, i64* %12, align 8
  br label %177

177:                                              ; preds = %175, %157
  %178 = load i8*, i8** %8, align 8
  %179 = call i8* @skipsym(i8* %178)
  store i8* %179, i8** %8, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = call i8* @skipcomment(i8* %180)
  store i8* %181, i8** %8, align 8
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %8, align 8
  %187 = load i8, i8* %185, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 41
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i64, i64* @LT_ERROR, align 8
  store i64 %191, i64* %4, align 8
  br label %285

192:                                              ; preds = %184, %177
  store i32 0, i32* @constexpr, align 4
  br label %270

193:                                              ; preds = %127, %123
  %194 = load i8*, i8** %8, align 8
  %195 = load i8, i8* %194, align 1
  %196 = call i64 @endsym(i8 signext %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %261, label %198

198:                                              ; preds = %193
  %199 = load %struct.ops*, %struct.ops** %5, align 8
  %200 = load i32, i32* @eval_ops, align 4
  %201 = sext i32 %200 to i64
  %202 = sub i64 0, %201
  %203 = getelementptr inbounds %struct.ops, %struct.ops* %199, i64 %202
  %204 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.ops* %203)
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @findsym(i8* %205)
  store i32 %206, i32* %10, align 4
  %207 = load i8*, i8** %8, align 8
  %208 = call i8* @skipsym(i8* %207)
  store i8* %208, i8** %8, align 8
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %198
  %212 = load i64, i64* @LT_IF, align 8
  store i64 %212, i64* %12, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = call i8* @skipargs(i8* %213)
  store i8* %214, i8** %8, align 8
  br label %260

215:                                              ; preds = %198
  %216 = load i8**, i8*** @value, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i32*, i32** %6, align 8
  store i32 0, i32* %223, align 4
  %224 = load i64, i64* @LT_FALSE, align 8
  store i64 %224, i64* %12, align 8
  br label %259

225:                                              ; preds = %215
  %226 = load i8**, i8*** @value, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @strtol(i8* %230, i8** %9, i32 0)
  %232 = load i32*, i32** %6, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i8*, i8** %9, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %225
  %238 = load i8*, i8** %9, align 8
  %239 = load i8**, i8*** @value, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = icmp eq i8* %238, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %237, %225
  %246 = load i64, i64* @LT_ERROR, align 8
  store i64 %246, i64* %4, align 8
  br label %285

247:                                              ; preds = %237
  %248 = load i32*, i32** %6, align 8
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i64, i64* @LT_TRUE, align 8
  br label %255

253:                                              ; preds = %247
  %254 = load i64, i64* @LT_FALSE, align 8
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i64 [ %252, %251 ], [ %254, %253 ]
  store i64 %256, i64* %12, align 8
  %257 = load i8*, i8** %8, align 8
  %258 = call i8* @skipargs(i8* %257)
  store i8* %258, i8** %8, align 8
  br label %259

259:                                              ; preds = %255, %222
  br label %260

260:                                              ; preds = %259, %211
  store i32 0, i32* @constexpr, align 4
  br label %269

261:                                              ; preds = %193
  %262 = load %struct.ops*, %struct.ops** %5, align 8
  %263 = load i32, i32* @eval_ops, align 4
  %264 = sext i32 %263 to i64
  %265 = sub i64 0, %264
  %266 = getelementptr inbounds %struct.ops, %struct.ops* %262, i64 %265
  %267 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.ops* %266)
  %268 = load i64, i64* @LT_ERROR, align 8
  store i64 %268, i64* %4, align 8
  br label %285

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269, %192
  br label %271

271:                                              ; preds = %270, %119
  br label %272

272:                                              ; preds = %271, %90
  br label %273

273:                                              ; preds = %272, %57
  %274 = load i8*, i8** %8, align 8
  %275 = load i8**, i8*** %7, align 8
  store i8* %274, i8** %275, align 8
  %276 = load %struct.ops*, %struct.ops** %5, align 8
  %277 = load i32, i32* @eval_ops, align 4
  %278 = sext i32 %277 to i64
  %279 = sub i64 0, %278
  %280 = getelementptr inbounds %struct.ops, %struct.ops* %276, i64 %279
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, %struct.ops*, ...) @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.ops* %280, i32 %282)
  %284 = load i64, i64* %12, align 8
  store i64 %284, i64* %4, align 8
  br label %285

285:                                              ; preds = %273, %261, %245, %190, %109, %88, %78, %35
  %286 = load i64, i64* %4, align 8
  ret i64 %286
}

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i32 @debug(i8*, %struct.ops*, ...) #1

declare dso_local i64 @eval_table(i32, i32*, i8**) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @skipsym(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @endsym(i8 signext) #1

declare dso_local i32 @findsym(i8*) #1

declare dso_local i8* @skipargs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
