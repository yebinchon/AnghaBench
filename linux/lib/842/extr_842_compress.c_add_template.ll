; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_template.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i64*, i64*, i64*, i64*, i64*, i64* }

@comp_ops = common dso_local global i64** null, align 8
@OPS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"template %x\0A\00", align 1
@OP_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"op %x\0A\00", align 1
@OP_AMOUNT = common dso_local global i64 0, align 8
@OP_ACTION_INDEX = common dso_local global i64 0, align 8
@I8_BITS = common dso_local global i32 0, align 4
@OP_ACTION_DATA = common dso_local global i64 0, align 8
@I4_BITS = common dso_local global i32 0, align 4
@I2_BITS = common dso_local global i32 0, align 4
@OP_ACTION_NOOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid templ %x op %d : %x %x %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid template %x len %x : %x %x %x %x\0A\00", align 1
@sw842_template_counts = common dso_local global i64 0, align 8
@template_count = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i64)* @add_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_template(%struct.sw842_param* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64**, i64*** @comp_ops, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64*, i64** %11, i64 %12
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @OPS_MAX, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %314

21:                                               ; preds = %2
  %22 = load i64*, i64** %9, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 4
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @OP_BITS, align 4
  %31 = call i32 @add_bits(%struct.sw842_param* %26, i64 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %314

36:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %279, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %282

40:                                               ; preds = %37
  %41 = load i64*, i64** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i64*, i64** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OP_AMOUNT, align 8
  %53 = and i64 %51, %52
  switch i64 %53, label %240 [
    i64 128, label %54
    i64 129, label %97
    i64 130, label %167
    i64 131, label %224
  ]

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %96

58:                                               ; preds = %54
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @OP_ACTION_INDEX, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %69 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %70 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @I8_BITS, align 4
  %75 = call i32 @add_bits(%struct.sw842_param* %68, i64 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %95

76:                                               ; preds = %58
  %77 = load i64*, i64** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OP_ACTION_DATA, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %87 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %88 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @add_bits(%struct.sw842_param* %86, i64 %91, i32 64)
  store i32 %92, i32* %6, align 4
  br label %94

93:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %94, %67
  br label %96

96:                                               ; preds = %95, %57
  br label %241

97:                                               ; preds = %40
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i64*, i64** %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OP_ACTION_DATA, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %110 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %111 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %112 = call i64 @get_input_data(%struct.sw842_param* %111, i32 2, i32 32)
  %113 = call i32 @add_bits(%struct.sw842_param* %110, i64 %112, i32 32)
  store i32 %113, i32* %6, align 4
  br label %166

114:                                              ; preds = %100, %97
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 4
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %165

121:                                              ; preds = %117, %114
  %122 = load i64*, i64** %9, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @OP_ACTION_INDEX, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %121
  %131 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %132 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %133 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = ashr i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @I4_BITS, align 4
  %141 = call i32 @add_bits(%struct.sw842_param* %131, i64 %139, i32 %140)
  store i32 %141, i32* %6, align 4
  br label %164

142:                                              ; preds = %121
  %143 = load i64*, i64** %9, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @OP_ACTION_DATA, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %142
  %152 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %153 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %154 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = ashr i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @add_bits(%struct.sw842_param* %152, i64 %160, i32 32)
  store i32 %161, i32* %6, align 4
  br label %163

162:                                              ; preds = %142
  store i32 1, i32* %10, align 4
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %130
  br label %165

165:                                              ; preds = %164, %120
  br label %166

166:                                              ; preds = %165, %109
  br label %241

167:                                              ; preds = %40
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 2
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 4
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 6
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 1, i32* %10, align 4
  br label %180

180:                                              ; preds = %179, %176, %173, %170, %167
  %181 = load i64*, i64** %9, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @OP_ACTION_INDEX, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %180
  %190 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %191 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %192 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %191, i32 0, i32 4
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = ashr i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @I2_BITS, align 4
  %200 = call i32 @add_bits(%struct.sw842_param* %190, i64 %198, i32 %199)
  store i32 %200, i32* %6, align 4
  br label %223

201:                                              ; preds = %180
  %202 = load i64*, i64** %9, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @OP_ACTION_DATA, align 8
  %208 = and i64 %206, %207
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %201
  %211 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %212 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %213 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %212, i32 0, i32 5
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = ashr i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %214, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @add_bits(%struct.sw842_param* %211, i64 %219, i32 16)
  store i32 %220, i32* %6, align 4
  br label %222

221:                                              ; preds = %201
  store i32 1, i32* %10, align 4
  br label %222

222:                                              ; preds = %221, %210
  br label %223

223:                                              ; preds = %222, %189
  br label %241

224:                                              ; preds = %40
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 8
  br i1 %226, label %237, label %227

227:                                              ; preds = %224
  %228 = load i64*, i64** %9, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @OP_ACTION_NOOP, align 8
  %234 = and i64 %232, %233
  %235 = icmp ne i64 %234, 0
  %236 = xor i1 %235, true
  br label %237

237:                                              ; preds = %227, %224
  %238 = phi i1 [ true, %224 ], [ %236, %227 ]
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %10, align 4
  br label %241

240:                                              ; preds = %40
  store i32 1, i32* %10, align 4
  br label %241

241:                                              ; preds = %240, %237, %223, %166, %96
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i32, i32* %6, align 4
  store i32 %245, i32* %3, align 4
  br label %314

246:                                              ; preds = %241
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %246
  %250 = load i64, i64* %5, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i64*, i64** %9, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64*, i64** %9, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64*, i64** %9, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 2
  %260 = load i64, i64* %259, align 8
  %261 = load i64*, i64** %9, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 3
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %250, i32 %251, i64 %254, i64 %257, i64 %260, i64 %263)
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %3, align 4
  br label %314

267:                                              ; preds = %246
  %268 = load i64*, i64** %9, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @OP_AMOUNT, align 8
  %274 = and i64 %272, %273
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = add i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %267
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %37

282:                                              ; preds = %37
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 8
  br i1 %284, label %285, label %303

285:                                              ; preds = %282
  %286 = load i64, i64* %5, align 8
  %287 = load i32, i32* %8, align 4
  %288 = load i64*, i64** %9, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64*, i64** %9, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64*, i64** %9, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 2
  %296 = load i64, i64* %295, align 8
  %297 = load i64*, i64** %9, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 3
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %286, i32 %287, i64 %290, i64 %293, i64 %296, i64 %299)
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %314

303:                                              ; preds = %282
  %304 = load i64, i64* @sw842_template_counts, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load i32*, i32** @template_count, align 8
  %308 = load i64*, i64** %9, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 4
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = call i32 @atomic_inc(i32* %311)
  br label %313

313:                                              ; preds = %306, %303
  store i32 0, i32* %3, align 4
  br label %314

314:                                              ; preds = %313, %285, %249, %244, %34, %18
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @add_bits(%struct.sw842_param*, i64, i32) #1

declare dso_local i64 @get_input_data(%struct.sw842_param*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
