; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_esai = type { i32*, i32*, i32*, i32, %struct.clk*, i64, %struct.clk* }
%struct.clk = type { i32 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%sput freq of HCK%c should not be 0Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ESAI_xCCR_xHCKD = common dso_local global i32 0, align 4
@ESAI_ECR_ETI = common dso_local global i32 0, align 4
@ESAI_ECR_ERI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"no assigned %s clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fsys\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to derive required HCK%c rate\0A\00", align 1
@ESAI_ECR_ETO = common dso_local global i32 0, align 4
@ESAI_ECR_ERO = common dso_local global i32 0, align 4
@REG_ESAI_ECR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @fsl_esai_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_esai*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %19 = call %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.fsl_esai* %19, %struct.fsl_esai** %10, align 8
  %20 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %21 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %20, i32 0, i32 4
  %22 = load %struct.clk*, %struct.clk** %21, align 8
  store %struct.clk* %22, %struct.clk** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 129
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %27 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %4
  %31 = phi i1 [ true, %4 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 84, i32 82
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %284

54:                                               ; preds = %30
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %57 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %55, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %67 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %65, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %284

75:                                               ; preds = %64, %54
  %76 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %77 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 1, i32* %81, align 4
  %82 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %83 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @REG_ESAI_xCCR(i32 %85)
  %87 = load i32, i32* @ESAI_xCCR_xHCKD, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  br label %93

91:                                               ; preds = %75
  %92 = load i32, i32* @ESAI_xCCR_xHCKD, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 0, %90 ], [ %92, %91 ]
  %95 = call i32 @regmap_update_bits(i32 %84, i32 %86, i32 %87, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %251

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  switch i32 %100, label %122 [
    i32 128, label %101
    i32 130, label %101
    i32 129, label %105
    i32 131, label %109
  ]

101:                                              ; preds = %99, %99
  %102 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %103 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %102, i32 0, i32 6
  %104 = load %struct.clk*, %struct.clk** %103, align 8
  store %struct.clk* %104, %struct.clk** %11, align 8
  br label %125

105:                                              ; preds = %99
  %106 = load i32, i32* @ESAI_ECR_ETI, align 4
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %15, align 4
  br label %125

109:                                              ; preds = %99
  %110 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %111 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @ESAI_ECR_ETI, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @ESAI_ECR_ERI, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = load i32, i32* %15, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %15, align 4
  br label %125

122:                                              ; preds = %99
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %284

125:                                              ; preds = %118, %105, %101
  %126 = load %struct.clk*, %struct.clk** %11, align 8
  %127 = call i64 @IS_ERR(%struct.clk* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %131 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = srem i32 %133, 2
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %138 = call i32 (i32, i8*, ...) @dev_err(i32 %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  %139 = load %struct.clk*, %struct.clk** %11, align 8
  %140 = call i32 @PTR_ERR(%struct.clk* %139)
  store i32 %140, i32* %5, align 4
  br label %284

141:                                              ; preds = %125
  %142 = load %struct.clk*, %struct.clk** %11, align 8
  %143 = call i64 @clk_get_rate(%struct.clk* %142)
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = udiv i64 %144, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %8, align 4
  %151 = mul i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %16, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %141
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %8, align 4
  %158 = mul i32 %156, %157
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %16, align 8
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %17, align 4
  br label %180

163:                                              ; preds = %141
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %8, align 4
  %166 = mul i32 %164, %165
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %16, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %163
  %171 = load i64, i64* %16, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %8, align 4
  %174 = mul i32 %172, %173
  %175 = zext i32 %174 to i64
  %176 = sub i64 %171, %175
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %17, align 4
  br label %179

178:                                              ; preds = %163
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %178, %170
  br label %180

180:                                              ; preds = %179, %155
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %180
  %184 = load i64, i64* %16, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = udiv i64 %184, %186
  %188 = icmp ult i64 %187, 1000
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %191 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 84, i32 82
  %197 = call i32 (i32, i8*, ...) @dev_err(i32 %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %284

200:                                              ; preds = %183, %180
  %201 = load i32, i32* %14, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %220

203:                                              ; preds = %200
  %204 = load %struct.clk*, %struct.clk** %11, align 8
  %205 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %206 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %205, i32 0, i32 4
  %207 = load %struct.clk*, %struct.clk** %206, align 8
  %208 = icmp eq %struct.clk* %204, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %203
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* @ESAI_ECR_ETO, align 4
  br label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @ESAI_ECR_ERO, align 4
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = load i32, i32* %15, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %15, align 4
  br label %251

220:                                              ; preds = %203, %200
  %221 = load i32, i32* %14, align 4
  %222 = icmp ult i32 %221, 2
  br i1 %222, label %223, label %234

223:                                              ; preds = %220
  %224 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %225 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 84, i32 82
  %231 = call i32 (i32, i8*, ...) @dev_err(i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %5, align 4
  br label %284

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %14, align 4
  %239 = call i32 @fsl_esai_divisor_cal(%struct.snd_soc_dai* %236, i32 %237, i32 %238, i32 0, i32 0)
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %17, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i32, i32* %17, align 4
  store i32 %243, i32* %5, align 4
  br label %284

244:                                              ; preds = %235
  %245 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %246 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 0, i32* %250, align 4
  br label %251

251:                                              ; preds = %244, %216, %98
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %254 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %252, i32* %258, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %261 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  %266 = load %struct.fsl_esai*, %struct.fsl_esai** %10, align 8
  %267 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @REG_ESAI_ECR, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %251
  %273 = load i32, i32* @ESAI_ECR_ETI, align 4
  %274 = load i32, i32* @ESAI_ECR_ETO, align 4
  %275 = or i32 %273, %274
  br label %280

276:                                              ; preds = %251
  %277 = load i32, i32* @ESAI_ECR_ERI, align 4
  %278 = load i32, i32* @ESAI_ECR_ERO, align 4
  %279 = or i32 %277, %278
  br label %280

280:                                              ; preds = %276, %272
  %281 = phi i32 [ %275, %272 ], [ %279, %276 ]
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @regmap_update_bits(i32 %268, i32 %269, i32 %281, i32 %282)
  store i32 0, i32* %5, align 4
  br label %284

284:                                              ; preds = %280, %242, %223, %189, %129, %122, %74, %39
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @REG_ESAI_xCCR(i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @fsl_esai_divisor_cal(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
