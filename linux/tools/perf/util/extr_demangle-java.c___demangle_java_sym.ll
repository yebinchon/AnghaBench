; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_demangle-java.c___demangle_java_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_demangle-java.c___demangle_java_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_PREFIX = common dso_local global i32 0, align 4
@MODE_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@MODE_CLASS = common dso_local global i32 0, align 4
@MODE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@base_types = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@MODE_FUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32, i32)* @__demangle_java_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__demangle_java_sym(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %18, %5
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %15, align 8
  br label %26

26:                                               ; preds = %303, %24
  %27 = load i8*, i8** %15, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %306

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %306

36:                                               ; preds = %30
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %294 [
    i32 76, label %40
    i32 66, label %95
    i32 67, label %95
    i32 68, label %95
    i32 70, label %95
    i32 73, label %95
    i32 74, label %95
    i32 83, label %95
    i32 90, label %95
    i32 86, label %159
    i32 91, label %199
    i32 40, label %207
    i32 41, label %221
    i32 59, label %234
    i32 47, label %274
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MODE_PREFIX, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MODE_CTYPE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @MODE_CTYPE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %59, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %55, %52
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %48
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %73, i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MODE_PREFIX, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @MODE_CLASS, align 4
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %69
  br label %94

86:                                               ; preds = %44
  %87 = load i8*, i8** %15, align 8
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  br label %94

94:                                               ; preds = %86, %85
  br label %302

95:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MODE_TYPE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %150

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %106, i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %102, %99
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32*, i32** @base_types, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 %124, 65
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %117, i32 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %136, %113
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %13, align 4
  %135 = icmp ne i32 %133, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %141, %142
  %144 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %140, i32 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %132

147:                                              ; preds = %132
  store i32 0, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %158

150:                                              ; preds = %95
  %151 = load i8*, i8** %15, align 8
  %152 = load i8, i8* %151, align 1
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8 %152, i8* %157, align 1
  br label %158

158:                                              ; preds = %150, %147
  br label %302

159:                                              ; preds = %36
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @MODE_TYPE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %190

163:                                              ; preds = %159
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sub nsw i32 %168, %169
  %171 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %167, i32 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %178, %163
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %13, align 4
  %177 = icmp ne i32 %175, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %12, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %182, i32 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %12, align 4
  br label %174

189:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %198

190:                                              ; preds = %159
  %191 = load i8*, i8** %15, align 8
  %192 = load i8, i8* %191, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 %192, i8* %197, align 1
  br label %198

198:                                              ; preds = %190, %189
  br label %302

199:                                              ; preds = %36
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @MODE_TYPE, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %312

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %302

207:                                              ; preds = %36
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @MODE_FUNC, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %312

212:                                              ; preds = %207
  %213 = load i8*, i8** %15, align 8
  %214 = load i8, i8* %213, align 1
  %215 = load i8*, i8** %9, align 8
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  store i8 %214, i8* %219, align 1
  %220 = load i32, i32* @MODE_TYPE, align 4
  store i32 %220, i32* %11, align 4
  br label %302

221:                                              ; preds = %36
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @MODE_TYPE, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %312

226:                                              ; preds = %221
  %227 = load i8*, i8** %15, align 8
  %228 = load i8, i8* %227, align 1
  %229 = load i8*, i8** %9, align 8
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8 %228, i8* %233, align 1
  store i32 0, i32* %14, align 4
  br label %302

234:                                              ; preds = %36
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @MODE_CLASS, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @MODE_CTYPE, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %312

243:                                              ; preds = %238, %234
  %244 = load i8*, i8** %15, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  %246 = load i8, i8* %245, align 1
  %247 = call i32 @isalpha(i8 signext %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %243
  %250 = load i8*, i8** %9, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %254, %255
  %257 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %253, i32 %256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %12, align 4
  br label %260

260:                                              ; preds = %249, %243
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* @MODE_CLASS, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i32, i32* @MODE_FUNC, align 4
  store i32 %265, i32* %11, align 4
  br label %273

266:                                              ; preds = %260
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* @MODE_CTYPE, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i32, i32* @MODE_TYPE, align 4
  store i32 %271, i32* %11, align 4
  br label %272

272:                                              ; preds = %270, %266
  br label %273

273:                                              ; preds = %272, %264
  br label %302

274:                                              ; preds = %36
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @MODE_CLASS, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* @MODE_CTYPE, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  br label %312

283:                                              ; preds = %278, %274
  %284 = load i8*, i8** %9, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %12, align 4
  %290 = sub nsw i32 %288, %289
  %291 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %287, i32 %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %12, align 4
  br label %302

294:                                              ; preds = %36
  %295 = load i8*, i8** %15, align 8
  %296 = load i8, i8* %295, align 1
  %297 = load i8*, i8** %9, align 8
  %298 = load i32, i32* %12, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %12, align 4
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  store i8 %296, i8* %301, align 1
  br label %302

302:                                              ; preds = %294, %283, %273, %226, %212, %204, %198, %158, %94
  br label %303

303:                                              ; preds = %302
  %304 = load i8*, i8** %15, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %15, align 8
  br label %26

306:                                              ; preds = %35, %26
  %307 = load i8*, i8** %9, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  store i8 0, i8* %310, align 1
  %311 = load i8*, i8** %9, align 8
  store i8* %311, i8** %6, align 8
  br label %313

312:                                              ; preds = %282, %242, %225, %211, %203
  store i8* null, i8** %6, align 8
  br label %313

313:                                              ; preds = %312, %306
  %314 = load i8*, i8** %6, align 8
  ret i8* %314
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @isalpha(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
