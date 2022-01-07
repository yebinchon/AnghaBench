; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_common_hw_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_common_hw_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, i64, i32*, i32, i64*, i32, i32, i32, i32, i64, i32, %struct.snd_dmaengine_dai_dma_data* }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@MCASP_VERSION_3 = common dso_local global i64 0, align 8
@DAVINCI_MCASP_PWREMUMGT_REG = common dso_local global i64 0, align 8
@MCASP_SOFT = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXSTAT_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_XEVTCTL_REG = common dso_local global i32 0, align 4
@TXDATADMADIS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@DAVINCI_MCASP_RXSTAT_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_REVTCTL_REG = common dso_local global i32 0, align 4
@RXDATADMADIS = common dso_local global i32 0, align 4
@TX_MODE = common dso_local global i64 0, align 8
@DISMOD_MASK = common dso_local global i32 0, align 4
@RX_MODE = common dso_local global i64 0, align 8
@SRMOD_INACTIVE = common dso_local global i32 0, align 4
@SRMOD_MASK = common dso_local global i32 0, align 4
@INACTIVE_MODE = common dso_local global i64 0, align 8
@MCASP_WFIFOCTL_OFFSET = common dso_local global i64 0, align 8
@MCASP_RFIFOCTL_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"stream has more channels (%d) than are enabled in mcasp (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Invalid combination of period words and active serializers: %d, %d\0A\00", align 1
@NUMDMA_MASK = common dso_local global i32 0, align 4
@NUMEVT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*, i32, i32, i32)* @mcasp_common_hw_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcasp_common_hw_param(%struct.davinci_mcasp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.davinci_mcasp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %22 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %21, i32 0, i32 11
  %23 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %23, i64 %25
  store %struct.snd_dmaengine_dai_dma_data* %26, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %28 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %14, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %15, align 4
  %36 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %37 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MCASP_VERSION_3, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %43 = load i64, i64* @DAVINCI_MCASP_PWREMUMGT_REG, align 8
  %44 = load i64, i64* @MCASP_SOFT, align 8
  %45 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %42, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %52 = load i32, i32* @DAVINCI_MCASP_TXSTAT_REG, align 4
  %53 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %51, i32 %52, i32 -1)
  %54 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %55 = load i32, i32* @DAVINCI_MCASP_XEVTCTL_REG, align 4
  %56 = load i32, i32* @TXDATADMADIS, align 4
  %57 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %17, align 4
  %59 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %60 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  br label %81

65:                                               ; preds = %46
  %66 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %67 = load i32, i32* @DAVINCI_MCASP_RXSTAT_REG, align 4
  %68 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %66, i32 %67, i32 -1)
  %69 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %70 = load i32, i32* @DAVINCI_MCASP_REVTCTL_REG, align 4
  %71 = load i32, i32* @RXDATADMADIS, align 4
  %72 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %69, i32 %70, i32 %71)
  %73 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %74 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %65, %50
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %184, %81
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %85 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %187

88:                                               ; preds = %82
  %89 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @DAVINCI_MCASP_XRSRCTL_REG(i32 %90)
  %92 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %93 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %92, i32 0, i32 4
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %89, i64 %91, i64 %98)
  %100 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %101 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %100, i32 0, i32 4
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TX_MODE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %88
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @DAVINCI_MCASP_XRSRCTL_REG(i32 %115)
  %117 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %118 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @DISMOD_MASK, align 4
  %121 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %114, i64 %116, i32 %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @PIN_BIT_AXR(i32 %122)
  %124 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %125 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %124, i32 0, i32 10
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %183

129:                                              ; preds = %109, %88
  %130 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %131 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %130, i32 0, i32 4
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RX_MODE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @PIN_BIT_AXR(i32 %144)
  %146 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %147 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %146, i32 0, i32 10
  %148 = call i32 @clear_bit(i32 %145, i32* %147)
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %182

151:                                              ; preds = %139, %129
  %152 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i64 @DAVINCI_MCASP_XRSRCTL_REG(i32 %153)
  %155 = load i32, i32* @SRMOD_INACTIVE, align 4
  %156 = load i32, i32* @SRMOD_MASK, align 4
  %157 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %152, i64 %154, i32 %155, i32 %156)
  %158 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %159 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %158, i32 0, i32 4
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @INACTIVE_MODE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %151
  %168 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i64 @DAVINCI_MCASP_XRSRCTL_REG(i32 %169)
  %171 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %172 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @DISMOD_MASK, align 4
  %175 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %168, i64 %170, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %151
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @PIN_BIT_AXR(i32 %177)
  %179 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %180 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %179, i32 0, i32 10
  %181 = call i32 @clear_bit(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %176, %143
  br label %183

183:                                              ; preds = %182, %113
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %82

187:                                              ; preds = %82
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %18, align 4
  %193 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %194 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %19, align 4
  %196 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %197 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MCASP_WFIFOCTL_OFFSET, align 8
  %200 = add nsw i64 %198, %199
  store i64 %200, i64* %20, align 8
  br label %211

201:                                              ; preds = %187
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %18, align 4
  %203 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %204 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %19, align 4
  %206 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %207 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @MCASP_RFIFOCTL_OFFSET, align 8
  %210 = add nsw i64 %208, %209
  store i64 %210, i64* %20, align 8
  br label %211

211:                                              ; preds = %201, %191
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %217 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %14, align 4
  %222 = mul nsw i32 %220, %221
  %223 = call i32 @dev_warn(i32 %218, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %219, i32 %222)
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %5, align 4
  br label %306

226:                                              ; preds = %211
  %227 = load i32, i32* %19, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %18, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i32, i32* %18, align 4
  %234 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %235 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  br label %239

236:                                              ; preds = %229
  %237 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %238 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %232
  br label %298

240:                                              ; preds = %226
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %18, align 4
  %243 = srem i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %240
  %246 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %247 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %18, align 4
  %251 = call i32 @dev_err(i32 %248, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %5, align 4
  br label %306

254:                                              ; preds = %240
  %255 = load i32, i32* %19, align 4
  %256 = load i32, i32* %18, align 4
  %257 = sdiv i32 %255, %256
  %258 = load i32, i32* %18, align 4
  %259 = mul nsw i32 %257, %258
  store i32 %259, i32* %19, align 4
  br label %260

260:                                              ; preds = %270, %254
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %19, align 4
  %263 = srem i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i32, i32* %19, align 4
  %267 = icmp sgt i32 %266, 0
  br label %268

268:                                              ; preds = %265, %260
  %269 = phi i1 [ false, %260 ], [ %267, %265 ]
  br i1 %269, label %270, label %274

270:                                              ; preds = %268
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %19, align 4
  %273 = sub nsw i32 %272, %271
  store i32 %273, i32* %19, align 4
  br label %260

274:                                              ; preds = %268
  %275 = load i32, i32* %19, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i32, i32* %18, align 4
  store i32 %278, i32* %19, align 4
  br label %279

279:                                              ; preds = %277, %274
  %280 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %281 = load i64, i64* %20, align 8
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* @NUMDMA_MASK, align 4
  %284 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %280, i64 %281, i32 %282, i32 %283)
  %285 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %286 = load i64, i64* %20, align 8
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @NUMEVT(i32 %287)
  %289 = load i32, i32* @NUMEVT_MASK, align 4
  %290 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %285, i64 %286, i32 %288, i32 %289)
  %291 = load i32, i32* %19, align 4
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %294

293:                                              ; preds = %279
  store i32 0, i32* %19, align 4
  br label %294

294:                                              ; preds = %293, %279
  %295 = load i32, i32* %19, align 4
  %296 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %297 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %239
  %299 = load i32, i32* %18, align 4
  %300 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %301 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %299, i32* %305, align 4
  store i32 0, i32* %5, align 4
  br label %306

306:                                              ; preds = %298, %245, %215
  %307 = load i32, i32* %5, align 4
  ret i32 %307
}

declare dso_local i32 @mcasp_set_bits(%struct.davinci_mcasp*, i64, i64) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i64 @DAVINCI_MCASP_XRSRCTL_REG(i32) #1

declare dso_local i32 @mcasp_mod_bits(%struct.davinci_mcasp*, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @PIN_BIT_AXR(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @NUMEVT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
