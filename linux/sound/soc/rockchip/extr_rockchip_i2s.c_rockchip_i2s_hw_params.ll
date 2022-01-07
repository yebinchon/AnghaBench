; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_rockchip_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_rockchip_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.rk_i2s_dev = type { i32, %struct.TYPE_4__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2S_CKR = common dso_local global i32 0, align 4
@I2S_CKR_MDIV_MASK = common dso_local global i32 0, align 4
@I2S_CKR_TSD_MASK = common dso_local global i32 0, align 4
@I2S_CKR_RSD_MASK = common dso_local global i32 0, align 4
@I2S_CHN_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid channel: %d\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@I2S_RXCR = common dso_local global i32 0, align 4
@I2S_RXCR_VDW_MASK = common dso_local global i32 0, align 4
@I2S_RXCR_CSR_MASK = common dso_local global i32 0, align 4
@I2S_TXCR = common dso_local global i32 0, align 4
@I2S_TXCR_VDW_MASK = common dso_local global i32 0, align 4
@I2S_TXCR_CSR_MASK = common dso_local global i32 0, align 4
@I2S_IO_4CH_OUT_6CH_IN = common dso_local global i32 0, align 4
@I2S_IO_6CH_OUT_4CH_IN = common dso_local global i32 0, align 4
@I2S_IO_8CH_OUT_2CH_IN = common dso_local global i32 0, align 4
@I2S_IO_2CH_OUT_8CH_IN = common dso_local global i32 0, align 4
@I2S_IO_DIRECTION_MASK = common dso_local global i32 0, align 4
@I2S_DMACR = common dso_local global i32 0, align 4
@I2S_DMACR_TDL_MASK = common dso_local global i32 0, align 4
@I2S_DMACR_RDL_MASK = common dso_local global i32 0, align 4
@I2S_CKR_TRCM_TXRX = common dso_local global i32 0, align 4
@I2S_CKR_TRCM_TXONLY = common dso_local global i32 0, align 4
@I2S_CKR_TRCM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rockchip_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.rk_i2s_dev*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.rk_i2s_dev* @to_info(%struct.snd_soc_dai* %15)
  store %struct.rk_i2s_dev* %16, %struct.rk_i2s_dev** %8, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %18, align 8
  store %struct.snd_soc_pcm_runtime* %19, %struct.snd_soc_pcm_runtime** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %21 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %3
  %25 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %26 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_get_rate(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_rate(%struct.snd_pcm_hw_params* %29)
  %31 = mul i32 64, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = urem i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %244

42:                                               ; preds = %34, %24
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %48 = call i32 @params_rate(%struct.snd_pcm_hw_params* %47)
  %49 = udiv i32 %46, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %51 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @I2S_CKR, align 4
  %54 = load i32, i32* @I2S_CKR_MDIV_MASK, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @I2S_CKR_MDIV(i32 %55)
  %57 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %56)
  %58 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %59 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I2S_CKR, align 4
  %62 = load i32, i32* @I2S_CKR_TSD_MASK, align 4
  %63 = load i32, i32* @I2S_CKR_RSD_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @I2S_CKR_TSD(i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @I2S_CKR_RSD(i32 %67)
  %69 = or i32 %66, %68
  %70 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %42, %3
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %73 = call i32 @params_format(%struct.snd_pcm_hw_params* %72)
  switch i32 %73, label %94 [
    i32 128, label %74
    i32 132, label %78
    i32 131, label %82
    i32 130, label %86
    i32 129, label %90
  ]

74:                                               ; preds = %71
  %75 = call i32 @I2S_TXCR_VDW(i32 8)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %97

78:                                               ; preds = %71
  %79 = call i32 @I2S_TXCR_VDW(i32 16)
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %97

82:                                               ; preds = %71
  %83 = call i32 @I2S_TXCR_VDW(i32 20)
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %97

86:                                               ; preds = %71
  %87 = call i32 @I2S_TXCR_VDW(i32 24)
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %97

90:                                               ; preds = %71
  %91 = call i32 @I2S_TXCR_VDW(i32 32)
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %97

94:                                               ; preds = %71
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %244

97:                                               ; preds = %90, %86, %82, %78, %74
  %98 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %99 = call i32 @params_channels(%struct.snd_pcm_hw_params* %98)
  switch i32 %99, label %113 [
    i32 8, label %100
    i32 6, label %103
    i32 4, label %106
    i32 2, label %109
  ]

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, 133
  store i32 %102, i32* %10, align 4
  br label %122

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, 134
  store i32 %105, i32* %10, align 4
  br label %122

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, 135
  store i32 %108, i32* %10, align 4
  br label %122

109:                                              ; preds = %97
  %110 = load i32, i32* @I2S_CHN_2, align 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %122

113:                                              ; preds = %97
  %114 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %115 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %118 = call i32 @params_channels(%struct.snd_pcm_hw_params* %117)
  %119 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %244

122:                                              ; preds = %109, %106, %103, %100
  %123 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %130 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @I2S_RXCR, align 4
  %133 = load i32, i32* @I2S_RXCR_VDW_MASK, align 4
  %134 = load i32, i32* @I2S_RXCR_CSR_MASK, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @regmap_update_bits(i32 %131, i32 %132, i32 %135, i32 %136)
  br label %148

138:                                              ; preds = %122
  %139 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %140 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @I2S_TXCR, align 4
  %143 = load i32, i32* @I2S_TXCR_VDW_MASK, align 4
  %144 = load i32, i32* @I2S_TXCR_CSR_MASK, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @regmap_update_bits(i32 %141, i32 %142, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %128
  %149 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %150 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @IS_ERR(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %205, label %154

154:                                              ; preds = %148
  %155 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %156 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = icmp ne %struct.TYPE_4__* %157, null
  br i1 %158, label %159, label %205

159:                                              ; preds = %154
  %160 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %161 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @I2S_TXCR, align 4
  %164 = call i32 @regmap_read(i32 %162, i32 %163, i32* %10)
  %165 = load i32, i32* @I2S_TXCR_CSR_MASK, align 4
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  switch i32 %168, label %175 [
    i32 135, label %169
    i32 134, label %171
    i32 133, label %173
  ]

169:                                              ; preds = %159
  %170 = load i32, i32* @I2S_IO_4CH_OUT_6CH_IN, align 4
  store i32 %170, i32* %10, align 4
  br label %177

171:                                              ; preds = %159
  %172 = load i32, i32* @I2S_IO_6CH_OUT_4CH_IN, align 4
  store i32 %172, i32* %10, align 4
  br label %177

173:                                              ; preds = %159
  %174 = load i32, i32* @I2S_IO_8CH_OUT_2CH_IN, align 4
  store i32 %174, i32* %10, align 4
  br label %177

175:                                              ; preds = %159
  %176 = load i32, i32* @I2S_IO_2CH_OUT_8CH_IN, align 4
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %175, %173, %171, %169
  %178 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %179 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = shl i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* @I2S_IO_DIRECTION_MASK, align 4
  %186 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %187 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %186, i32 0, i32 1
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %185, %190
  %192 = shl i32 %191, 16
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %196 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %199 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @regmap_write(i32 %197, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %177, %154, %148
  %206 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %207 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @I2S_DMACR, align 4
  %210 = load i32, i32* @I2S_DMACR_TDL_MASK, align 4
  %211 = call i32 @I2S_DMACR_TDL(i32 16)
  %212 = call i32 @regmap_update_bits(i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %214 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @I2S_DMACR, align 4
  %217 = load i32, i32* @I2S_DMACR_RDL_MASK, align 4
  %218 = call i32 @I2S_DMACR_RDL(i32 16)
  %219 = call i32 @regmap_update_bits(i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* @I2S_CKR_TRCM_TXRX, align 4
  store i32 %220, i32* %10, align 4
  %221 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %222 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %205
  %228 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %229 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i32, i32* @I2S_CKR_TRCM_TXONLY, align 4
  store i32 %235, i32* %10, align 4
  br label %236

236:                                              ; preds = %234, %227, %205
  %237 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %8, align 8
  %238 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @I2S_CKR, align 4
  %241 = load i32, i32* @I2S_CKR_TRCM_MASK, align 4
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @regmap_update_bits(i32 %239, i32 %240, i32 %241, i32 %242)
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %236, %113, %94, %39
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local %struct.rk_i2s_dev* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @I2S_CKR_MDIV(i32) #1

declare dso_local i32 @I2S_CKR_TSD(i32) #1

declare dso_local i32 @I2S_CKR_RSD(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @I2S_TXCR_VDW(i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @I2S_DMACR_TDL(i32) #1

declare dso_local i32 @I2S_DMACR_RDL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
