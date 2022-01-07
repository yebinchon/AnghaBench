; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.bcm2835_i2s_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@BCM2835_I2S_CS_A_REG = common dso_local global i32 0, align 4
@BCM2835_I2S_TXON = common dso_local global i32 0, align 4
@BCM2835_I2S_RXON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@BCM2835_I2S_CHEN = common dso_local global i32 0, align 4
@BCM2835_I2S_CHWEX = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unstable slave config detected, L/R may be swapped\00", align 1
@BCM2835_I2S_RXC_A_REG = common dso_local global i32 0, align 4
@BCM2835_I2S_TXC_A_REG = common dso_local global i32 0, align 4
@BCM2835_I2S_FTXP = common dso_local global i32 0, align 4
@BCM2835_I2S_FRXP = common dso_local global i32 0, align 4
@BCM2835_I2S_CLKM = common dso_local global i32 0, align 4
@BCM2835_I2S_FSM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@BCM2835_I2S_CLKI = common dso_local global i32 0, align 4
@BCM2835_I2S_FSI = common dso_local global i32 0, align 4
@BCM2835_I2S_MODE_A_REG = common dso_local global i32 0, align 4
@BCM2835_I2S_DMAEN = common dso_local global i32 0, align 4
@BCM2835_I2S_DREQ_A_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"slots: %d width: %d rx mask: 0x%02x tx_mask: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"frame len: %d sync len: %d data len: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rx pos: %d,%d tx pos: %d,%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"sampling rate: %d bclk rate: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"CLKM: %d CLKI: %d FSM: %d FSI: %d frame start: %s edge\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"falling\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rising\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @bcm2835_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.bcm2835_i2s_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %31 = call %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %30)
  store %struct.bcm2835_i2s_dev* %31, %struct.bcm2835_i2s_dev** %8, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %29, align 4
  %32 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %33 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %28)
  %37 = load i32, i32* %28, align 4
  %38 = load i32, i32* @BCM2835_I2S_TXON, align 4
  %39 = load i32, i32* @BCM2835_I2S_RXON, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %459

44:                                               ; preds = %3
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @params_width(%struct.snd_pcm_hw_params* %45)
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %23, align 4
  %47 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %48 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %53 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %12, align 4
  %55 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %56 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %59 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %15, align 4
  %61 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %62 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %65 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %18, align 4
  %67 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %68 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %71 = call i32 @params_rate(%struct.snd_pcm_hw_params* %70)
  %72 = mul nsw i32 %69, %71
  store i32 %72, i32* %16, align 4
  br label %90

73:                                               ; preds = %44
  store i32 2, i32* %12, align 4
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %75 = call i32 @params_width(%struct.snd_pcm_hw_params* %74)
  store i32 %75, i32* %13, align 4
  store i32 3, i32* %17, align 4
  store i32 3, i32* %18, align 4
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %77 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %4, align 4
  br label %459

82:                                               ; preds = %73
  %83 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %84 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %4, align 4
  br label %459

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %51
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %459

97:                                               ; preds = %90
  %98 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %99 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %102 = and i32 %100, %101
  switch i32 %102, label %105 [
    i32 137, label %103
    i32 138, label %103
    i32 139, label %104
    i32 140, label %104
  ]

103:                                              ; preds = %97, %97
  store i32 1, i32* %25, align 4
  br label %108

104:                                              ; preds = %97, %97
  store i32 0, i32* %25, align 4
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %459

108:                                              ; preds = %104, %103
  %109 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %110 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %113 = and i32 %111, %112
  switch i32 %113, label %116 [
    i32 137, label %114
    i32 139, label %114
    i32 138, label %115
    i32 140, label %115
  ]

114:                                              ; preds = %108, %108
  store i32 1, i32* %26, align 4
  br label %119

115:                                              ; preds = %108, %108
  store i32 0, i32* %26, align 4
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %459

119:                                              ; preds = %115, %114
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %119
  %123 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %124 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %129 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %164

133:                                              ; preds = %127, %122
  %134 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %135 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %134, i32 0, i32 10
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %140 = call i32 @bcm2835_i2s_stop_clock(%struct.bcm2835_i2s_dev* %139)
  br label %141

141:                                              ; preds = %138, %133
  %142 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %143 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %141
  %148 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %149 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @clk_set_rate(i32 %150, i32 %151)
  store i32 %152, i32* %29, align 4
  %153 = load i32, i32* %29, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %29, align 4
  store i32 %156, i32* %4, align 4
  br label %459

157:                                              ; preds = %147
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %160 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %157, %141
  %162 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %163 = call i32 @bcm2835_i2s_start_clock(%struct.bcm2835_i2s_dev* %162)
  br label %164

164:                                              ; preds = %161, %127, %119
  %165 = load i32, i32* @BCM2835_I2S_CHEN, align 4
  store i32 %165, i32* %24, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp uge i32 %166, 24
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* @BCM2835_I2S_CHWEX, align 4
  %170 = load i32, i32* %24, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %24, align 4
  br label %172

172:                                              ; preds = %168, %164
  %173 = load i32, i32* %9, align 4
  %174 = sub i32 %173, 8
  %175 = and i32 %174, 15
  %176 = call i32 @BCM2835_I2S_CHWID(i32 %175)
  %177 = load i32, i32* %24, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %24, align 4
  %179 = load i32, i32* %24, align 4
  %180 = call i32 @BCM2835_I2S_CH1(i32 %179)
  %181 = load i32, i32* %24, align 4
  %182 = call i32 @BCM2835_I2S_CH2(i32 %181)
  %183 = or i32 %180, %182
  store i32 %183, i32* %24, align 4
  %184 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %185 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %188 = and i32 %186, %187
  switch i32 %188, label %237 [
    i32 134, label %189
    i32 131, label %201
    i32 128, label %213
    i32 136, label %235
    i32 135, label %236
  ]

189:                                              ; preds = %172
  %190 = load i32, i32* %12, align 4
  %191 = and i32 %190, 1
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %4, align 4
  br label %459

196:                                              ; preds = %189
  %197 = load i32, i32* %12, align 4
  %198 = lshr i32 %197, 1
  store i32 %198, i32* %14, align 4
  store i32 1, i32* %10, align 4
  %199 = load i32, i32* %15, align 4
  %200 = sdiv i32 %199, 2
  store i32 %200, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %240

201:                                              ; preds = %172
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %4, align 4
  br label %459

208:                                              ; preds = %201
  %209 = load i32, i32* %12, align 4
  %210 = lshr i32 %209, 1
  store i32 %210, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %211 = load i32, i32* %15, align 4
  %212 = sdiv i32 %211, 2
  store i32 %212, i32* %11, align 4
  store i32 0, i32* %27, align 4
  br label %240

213:                                              ; preds = %172
  %214 = load i32, i32* %12, align 4
  %215 = and i32 %214, 1
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %4, align 4
  br label %459

220:                                              ; preds = %213
  %221 = load i32, i32* %15, align 4
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %4, align 4
  br label %459

227:                                              ; preds = %220
  %228 = load i32, i32* %12, align 4
  %229 = lshr i32 %228, 1
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %9, align 4
  %232 = sub i32 %230, %231
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %15, align 4
  %234 = sdiv i32 %233, 2
  store i32 %234, i32* %11, align 4
  store i32 0, i32* %27, align 4
  br label %240

235:                                              ; preds = %172
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %27, align 4
  br label %240

236:                                              ; preds = %172
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %27, align 4
  br label %240

237:                                              ; preds = %172
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %459

240:                                              ; preds = %236, %235, %227, %208, %196
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @bcm2835_i2s_calc_channel_pos(i32* %19, i32* %20, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @bcm2835_i2s_calc_channel_pos(i32* %21, i32* %22, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %19, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %240
  %254 = load i32, i32* %21, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %253, %240
  %257 = load i32, i32* %26, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %256
  %260 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %261 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @dev_warn(i32 %262, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %264

264:                                              ; preds = %259, %256, %253
  %265 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %266 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @BCM2835_I2S_RXC_A_REG, align 4
  %269 = load i32, i32* %24, align 4
  %270 = load i32, i32* %19, align 4
  %271 = call i32 @BCM2835_I2S_CH1_POS(i32 %270)
  %272 = or i32 %269, %271
  %273 = load i32, i32* %20, align 4
  %274 = call i32 @BCM2835_I2S_CH2_POS(i32 %273)
  %275 = or i32 %272, %274
  %276 = call i32 @regmap_write(i32 %267, i32 %268, i32 %275)
  %277 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %278 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @BCM2835_I2S_TXC_A_REG, align 4
  %281 = load i32, i32* %24, align 4
  %282 = load i32, i32* %21, align 4
  %283 = call i32 @BCM2835_I2S_CH1_POS(i32 %282)
  %284 = or i32 %281, %283
  %285 = load i32, i32* %22, align 4
  %286 = call i32 @BCM2835_I2S_CH2_POS(i32 %285)
  %287 = or i32 %284, %286
  %288 = call i32 @regmap_write(i32 %279, i32 %280, i32 %287)
  %289 = load i32, i32* %9, align 4
  %290 = icmp ule i32 %289, 16
  br i1 %290, label %291, label %297

291:                                              ; preds = %264
  %292 = load i32, i32* @BCM2835_I2S_FTXP, align 4
  %293 = load i32, i32* @BCM2835_I2S_FRXP, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* %23, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %23, align 4
  br label %297

297:                                              ; preds = %291, %264
  %298 = load i32, i32* %15, align 4
  %299 = sub nsw i32 %298, 1
  %300 = call i32 @BCM2835_I2S_FLEN(i32 %299)
  %301 = load i32, i32* %23, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %23, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @BCM2835_I2S_FSLEN(i32 %303)
  %305 = load i32, i32* %23, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %23, align 4
  %307 = load i32, i32* %25, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %297
  %310 = load i32, i32* @BCM2835_I2S_CLKM, align 4
  %311 = load i32, i32* %23, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %23, align 4
  br label %313

313:                                              ; preds = %309, %297
  %314 = load i32, i32* %26, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* @BCM2835_I2S_FSM, align 4
  %318 = load i32, i32* %23, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %23, align 4
  br label %320

320:                                              ; preds = %316, %313
  %321 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %322 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %325 = and i32 %323, %324
  switch i32 %325, label %331 [
    i32 129, label %326
    i32 130, label %326
    i32 132, label %330
    i32 133, label %330
  ]

326:                                              ; preds = %320, %320
  %327 = load i32, i32* @BCM2835_I2S_CLKI, align 4
  %328 = load i32, i32* %23, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %23, align 4
  br label %334

330:                                              ; preds = %320, %320
  br label %334

331:                                              ; preds = %320
  %332 = load i32, i32* @EINVAL, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %4, align 4
  br label %459

334:                                              ; preds = %330, %326
  %335 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %336 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %339 = and i32 %337, %338
  switch i32 %339, label %356 [
    i32 129, label %340
    i32 132, label %340
    i32 130, label %348
    i32 133, label %348
  ]

340:                                              ; preds = %334, %334
  %341 = load i32, i32* %27, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load i32, i32* @BCM2835_I2S_FSI, align 4
  %345 = load i32, i32* %23, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %23, align 4
  br label %347

347:                                              ; preds = %343, %340
  br label %359

348:                                              ; preds = %334, %334
  %349 = load i32, i32* %27, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* @BCM2835_I2S_FSI, align 4
  %353 = load i32, i32* %23, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %23, align 4
  br label %355

355:                                              ; preds = %351, %348
  br label %359

356:                                              ; preds = %334
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %4, align 4
  br label %459

359:                                              ; preds = %355, %347
  %360 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %361 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %360, i32 0, i32 8
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @BCM2835_I2S_MODE_A_REG, align 4
  %364 = load i32, i32* %23, align 4
  %365 = call i32 @regmap_write(i32 %362, i32 %363, i32 %364)
  %366 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %367 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %370 = call i32 @BCM2835_I2S_RXTHR(i32 1)
  %371 = call i32 @BCM2835_I2S_TXTHR(i32 1)
  %372 = or i32 %370, %371
  %373 = load i32, i32* @BCM2835_I2S_DMAEN, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @regmap_update_bits(i32 %368, i32 %369, i32 %374, i32 -1)
  %376 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %377 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %376, i32 0, i32 8
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @BCM2835_I2S_DREQ_A_REG, align 4
  %380 = call i32 @BCM2835_I2S_TX_PANIC(i32 16)
  %381 = call i32 @BCM2835_I2S_RX_PANIC(i32 48)
  %382 = or i32 %380, %381
  %383 = call i32 @BCM2835_I2S_TX(i32 48)
  %384 = or i32 %382, %383
  %385 = call i32 @BCM2835_I2S_RX(i32 32)
  %386 = or i32 %384, %385
  %387 = call i32 @regmap_update_bits(i32 %378, i32 %379, i32 %386, i32 -1)
  %388 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %389 = call i32 @bcm2835_i2s_clear_fifos(%struct.bcm2835_i2s_dev* %388, i32 1, i32 1)
  %390 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %391 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %390, i32 0, i32 7
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %13, align 4
  %395 = load i32, i32* %17, align 4
  %396 = load i32, i32* %18, align 4
  %397 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %392, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %393, i32 %394, i32 %395, i32 %396)
  %398 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %399 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %15, align 4
  %402 = load i32, i32* %11, align 4
  %403 = load i32, i32* %9, align 4
  %404 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %400, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %401, i32 %402, i32 %403)
  %405 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %406 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %405, i32 0, i32 7
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %19, align 4
  %409 = load i32, i32* %20, align 4
  %410 = load i32, i32* %21, align 4
  %411 = load i32, i32* %22, align 4
  %412 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %407, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %408, i32 %409, i32 %410, i32 %411)
  %413 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %414 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %413, i32 0, i32 7
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %417 = call i32 @params_rate(%struct.snd_pcm_hw_params* %416)
  %418 = load i32, i32* %16, align 4
  %419 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %415, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %417, i32 %418)
  %420 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %421 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %23, align 4
  %424 = load i32, i32* @BCM2835_I2S_CLKM, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  %427 = xor i1 %426, true
  %428 = xor i1 %427, true
  %429 = zext i1 %428 to i32
  %430 = load i32, i32* %23, align 4
  %431 = load i32, i32* @BCM2835_I2S_CLKI, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  %434 = xor i1 %433, true
  %435 = xor i1 %434, true
  %436 = zext i1 %435 to i32
  %437 = load i32, i32* %23, align 4
  %438 = load i32, i32* @BCM2835_I2S_FSM, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  %441 = xor i1 %440, true
  %442 = xor i1 %441, true
  %443 = zext i1 %442 to i32
  %444 = load i32, i32* %23, align 4
  %445 = load i32, i32* @BCM2835_I2S_FSI, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = load i32, i32* %23, align 4
  %452 = load i32, i32* @BCM2835_I2S_FSI, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  %455 = zext i1 %454 to i64
  %456 = select i1 %454, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %457 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %422, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %429, i32 %436, i32 %443, i32 %450, i8* %456)
  %458 = load i32, i32* %29, align 4
  store i32 %458, i32* %4, align 4
  br label %459

459:                                              ; preds = %359, %356, %331, %237, %224, %217, %205, %193, %155, %116, %105, %94, %87, %80, %43
  %460 = load i32, i32* %4, align 4
  ret i32 %460
}

declare dso_local %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @bcm2835_i2s_stop_clock(%struct.bcm2835_i2s_dev*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @bcm2835_i2s_start_clock(%struct.bcm2835_i2s_dev*) #1

declare dso_local i32 @BCM2835_I2S_CHWID(i32) #1

declare dso_local i32 @BCM2835_I2S_CH1(i32) #1

declare dso_local i32 @BCM2835_I2S_CH2(i32) #1

declare dso_local i32 @bcm2835_i2s_calc_channel_pos(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BCM2835_I2S_CH1_POS(i32) #1

declare dso_local i32 @BCM2835_I2S_CH2_POS(i32) #1

declare dso_local i32 @BCM2835_I2S_FLEN(i32) #1

declare dso_local i32 @BCM2835_I2S_FSLEN(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BCM2835_I2S_RXTHR(i32) #1

declare dso_local i32 @BCM2835_I2S_TXTHR(i32) #1

declare dso_local i32 @BCM2835_I2S_TX_PANIC(i32) #1

declare dso_local i32 @BCM2835_I2S_RX_PANIC(i32) #1

declare dso_local i32 @BCM2835_I2S_TX(i32) #1

declare dso_local i32 @BCM2835_I2S_RX(i32) #1

declare dso_local i32 @bcm2835_i2s_clear_fifos(%struct.bcm2835_i2s_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
