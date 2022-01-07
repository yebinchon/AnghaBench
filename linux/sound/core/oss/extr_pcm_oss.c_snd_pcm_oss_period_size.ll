; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_period_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_period_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__, i32, %struct.snd_pcm_runtime* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i64, i32, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params*)* @snd_pcm_oss_period_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_period_size(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.snd_pcm_runtime*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 2
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %14, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_format(%struct.snd_pcm_hw_params* %21)
  %23 = call i32 @snd_pcm_format_physical_width(i32 %22)
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_channels(%struct.snd_pcm_hw_params* %24)
  %26 = mul nsw i32 %23, %25
  %27 = sdiv i32 %26, 8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %15, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %32 = call i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %30, i32 %31, i32* null)
  %33 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %29, i64 %32)
  %34 = load i64, i64* %15, align 8
  %35 = mul i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @rounddown_pow_of_two(i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %3
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 16
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %10, align 8
  br label %148

69:                                               ; preds = %55
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 1, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = udiv i64 %83, 2
  %85 = icmp ugt i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i64, i64* %9, align 8
  %88 = udiv i64 %87, 2
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %86, %75
  br label %147

90:                                               ; preds = %69
  %91 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %92 = call i32 @params_rate(%struct.snd_pcm_hw_params* %91)
  %93 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %94 = call i32 @params_format(%struct.snd_pcm_hw_params* %93)
  %95 = call i32 @snd_pcm_format_physical_width(i32 %94)
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %98 = call i32 @params_channels(%struct.snd_pcm_hw_params* %97)
  %99 = mul nsw i32 %96, %98
  %100 = sdiv i32 %99, 8
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %106, %90
  %104 = load i64, i64* %10, align 8
  %105 = udiv i64 %104, 2
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %17, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %103, label %110

110:                                              ; preds = %106
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %110
  store i32 4, i32* %16, align 4
  %117 = load i64, i64* %10, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = udiv i64 %117, %119
  %121 = icmp ugt i64 %120, 4096
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %16, align 4
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = load i64, i64* %10, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %126, %128
  %130 = icmp ult i64 %129, 4096
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 1, i32* %16, align 4
  br label %132

132:                                              ; preds = %131, %125
  br label %138

133:                                              ; preds = %110
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %133, %132
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %10, align 8
  %142 = udiv i64 %141, %140
  store i64 %142, i64* %10, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp ult i64 %143, 16
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i64 16, i64* %10, align 8
  br label %146

146:                                              ; preds = %145, %138
  br label %147

147:                                              ; preds = %146, %89
  br label %148

148:                                              ; preds = %147, %62
  %149 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %150 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %151 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %152 = call i64 @snd_pcm_hw_param_value_min(%struct.snd_pcm_hw_params* %150, i32 %151, i32* null)
  %153 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %149, i64 %152)
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %12, align 8
  %156 = mul i64 %155, %154
  store i64 %156, i64* %12, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i64 @roundup_pow_of_two(i64 %157)
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %12, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %148
  %163 = load i64, i64* %12, align 8
  store i64 %163, i64* %10, align 8
  br label %164

164:                                              ; preds = %162, %148
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %166 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %167 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %168 = call i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %166, i32 %167, i32* null)
  %169 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %165, i64 %168)
  store i64 %169, i64* %13, align 8
  %170 = load i64, i64* %15, align 8
  %171 = load i64, i64* %13, align 8
  %172 = mul i64 %171, %170
  store i64 %172, i64* %13, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i64 @rounddown_pow_of_two(i64 %173)
  store i64 %174, i64* %13, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* %13, align 8
  %177 = icmp ugt i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %164
  %179 = load i64, i64* %13, align 8
  store i64 %179, i64* %10, align 8
  br label %180

180:                                              ; preds = %178, %164
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = udiv i64 %181, %182
  store i64 %183, i64* %11, align 8
  %184 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %185 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %197

190:                                              ; preds = %180
  %191 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %192 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %11, align 8
  br label %197

197:                                              ; preds = %190, %180
  %198 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %199 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %200 = call i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %198, i32 %199, i32* null)
  store i64 %200, i64* %8, align 8
  %201 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %202 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %197
  %207 = load i64, i64* %8, align 8
  %208 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %209 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ugt i64 %207, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %215 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %8, align 8
  br label %218

218:                                              ; preds = %213, %206, %197
  %219 = load i64, i64* %11, align 8
  %220 = load i64, i64* %8, align 8
  %221 = icmp ugt i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i64, i64* %8, align 8
  store i64 %223, i64* %11, align 8
  br label %224

224:                                              ; preds = %222, %218
  %225 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %226 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %227 = call i64 @snd_pcm_hw_param_value_min(%struct.snd_pcm_hw_params* %225, i32 %226, i32* null)
  store i64 %227, i64* %8, align 8
  %228 = load i64, i64* %8, align 8
  %229 = icmp ult i64 %228, 2
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i64 2, i64* %8, align 8
  br label %231

231:                                              ; preds = %230, %224
  %232 = load i64, i64* %11, align 8
  %233 = load i64, i64* %8, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = load i64, i64* %8, align 8
  store i64 %236, i64* %11, align 8
  br label %237

237:                                              ; preds = %235, %231
  br label %238

238:                                              ; preds = %244, %237
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %11, align 8
  %241 = mul i64 %239, %240
  %242 = load i64, i64* %9, align 8
  %243 = icmp ugt i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load i64, i64* %10, align 8
  %246 = udiv i64 %245, 2
  store i64 %246, i64* %10, align 8
  br label %238

247:                                              ; preds = %238
  %248 = load i64, i64* %10, align 8
  %249 = icmp ult i64 %248, 16
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  br label %265

253:                                              ; preds = %247
  %254 = load i64, i64* %10, align 8
  %255 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %256 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 4
  store i64 %254, i64* %257, align 8
  %258 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %259 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 5
  store i32 1, i32* %260, align 8
  %261 = load i64, i64* %11, align 8
  %262 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %263 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 6
  store i64 %261, i64* %264, align 8
  store i32 0, i32* %4, align 4
  br label %265

265:                                              ; preds = %253, %250
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream*, i64) #1

declare dso_local i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i64 @rounddown_pow_of_two(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_pcm_hw_param_value_min(%struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
