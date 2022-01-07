; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { i32, %struct.clk**, i32, i64 }
%struct.clk = type { i32 }
%struct.i2s_dai = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MOD_DC2_EN = common dso_local global i32 0, align 4
@MOD_DC1_EN = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%d channels not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MOD_BLCS_MASK = common dso_local global i32 0, align 4
@MOD_BLCP_MASK = common dso_local global i32 0, align 4
@MOD_BLC_MASK = common dso_local global i32 0, align 4
@MOD_BLCS_8BIT = common dso_local global i32 0, align 4
@MOD_BLCP_8BIT = common dso_local global i32 0, align 4
@MOD_BLC_8BIT = common dso_local global i32 0, align 4
@MOD_BLCS_16BIT = common dso_local global i32 0, align 4
@MOD_BLCP_16BIT = common dso_local global i32 0, align 4
@MOD_BLC_16BIT = common dso_local global i32 0, align 4
@MOD_BLCS_24BIT = common dso_local global i32 0, align 4
@MOD_BLCP_24BIT = common dso_local global i32 0, align 4
@MOD_BLC_24BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Format(%d) not supported\0A\00", align 1
@I2SMOD = common dso_local global i64 0, align 8
@CLK_I2S_RCLK_SRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.samsung_i2s_priv*, align 8
  %9 = alloca %struct.i2s_dai*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.clk*, align 8
  %14 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.samsung_i2s_priv* %16, %struct.samsung_i2s_priv** %8, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.i2s_dai* @to_info(%struct.snd_soc_dai* %17)
  store %struct.i2s_dai* %18, %struct.i2s_dai** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_active(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %28 = call i64 @is_secondary(%struct.i2s_dai* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @MOD_DC2_EN, align 4
  %32 = load i32, i32* @MOD_DC1_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_channels(%struct.snd_pcm_hw_params* %37)
  switch i32 %38, label %77 [
    i32 6, label %39
    i32 4, label %43
    i32 2, label %47
    i32 1, label %62
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @MOD_DC2_EN, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %36, %39
  %44 = load i32, i32* @MOD_DC1_EN, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %87

47:                                               ; preds = %36
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %55 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %59 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %87

62:                                               ; preds = %36
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %70 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %74 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 2, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %87

77:                                               ; preds = %36
  %78 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %79 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %83 = call i32 @params_channels(%struct.snd_pcm_hw_params* %82)
  %84 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %239

87:                                               ; preds = %76, %61, %43
  %88 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %89 = call i64 @is_secondary(%struct.i2s_dai* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @MOD_BLCS_MASK, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @MOD_BLCP_MASK, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %101 = call i64 @is_manager(%struct.i2s_dai* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @MOD_BLC_MASK, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %109 = call i32 @params_width(%struct.snd_pcm_hw_params* %108)
  switch i32 %109, label %173 [
    i32 8, label %110
    i32 16, label %131
    i32 24, label %152
  ]

110:                                              ; preds = %107
  %111 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %112 = call i64 @is_secondary(%struct.i2s_dai* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @MOD_BLCS_8BIT, align 4
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %122

118:                                              ; preds = %110
  %119 = load i32, i32* @MOD_BLCP_8BIT, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %124 = call i64 @is_manager(%struct.i2s_dai* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @MOD_BLC_8BIT, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %183

131:                                              ; preds = %107
  %132 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %133 = call i64 @is_secondary(%struct.i2s_dai* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @MOD_BLCS_16BIT, align 4
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %143

139:                                              ; preds = %131
  %140 = load i32, i32* @MOD_BLCP_16BIT, align 4
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %145 = call i64 @is_manager(%struct.i2s_dai* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @MOD_BLC_16BIT, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %143
  br label %183

152:                                              ; preds = %107
  %153 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %154 = call i64 @is_secondary(%struct.i2s_dai* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @MOD_BLCS_24BIT, align 4
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %164

160:                                              ; preds = %152
  %161 = load i32, i32* @MOD_BLCP_24BIT, align 4
  %162 = load i32, i32* %12, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %160, %156
  %165 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %166 = call i64 @is_manager(%struct.i2s_dai* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* @MOD_BLC_24BIT, align 4
  %170 = load i32, i32* %12, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %168, %164
  br label %183

173:                                              ; preds = %107
  %174 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %175 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %179 = call i32 @params_format(%struct.snd_pcm_hw_params* %178)
  %180 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %4, align 4
  br label %239

183:                                              ; preds = %172, %151, %130
  %184 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %185 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %184, i32 0, i32 2
  %186 = load i64, i64* %14, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %189 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @I2SMOD, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @readl(i64 %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = xor i32 %195, -1
  %197 = and i32 %194, %196
  %198 = load i32, i32* %12, align 4
  %199 = or i32 %197, %198
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %202 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @I2SMOD, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @writel(i32 %200, i64 %205)
  %207 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %208 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %207, i32 0, i32 2
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %212 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %213 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %212, i32 0, i32 2
  %214 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %215 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %214, i32 0, i32 1
  %216 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %211, %struct.TYPE_5__* %213, %struct.TYPE_6__* %215)
  %217 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %218 = call i32 @params_rate(%struct.snd_pcm_hw_params* %217)
  %219 = load %struct.i2s_dai*, %struct.i2s_dai** %9, align 8
  %220 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %222 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %221, i32 0, i32 1
  %223 = load %struct.clk**, %struct.clk*** %222, align 8
  %224 = load i64, i64* @CLK_I2S_RCLK_SRC, align 8
  %225 = getelementptr inbounds %struct.clk*, %struct.clk** %223, i64 %224
  %226 = load %struct.clk*, %struct.clk** %225, align 8
  store %struct.clk* %226, %struct.clk** %13, align 8
  %227 = load %struct.clk*, %struct.clk** %13, align 8
  %228 = icmp ne %struct.clk* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %183
  %230 = load %struct.clk*, %struct.clk** %13, align 8
  %231 = call i32 @IS_ERR(%struct.clk* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %229
  %234 = load %struct.clk*, %struct.clk** %13, align 8
  %235 = call i32 @clk_get_rate(%struct.clk* %234)
  %236 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %8, align 8
  %237 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %233, %229, %183
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %173, %77
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_active(i32) #1

declare dso_local i64 @is_secondary(%struct.i2s_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @is_manager(%struct.i2s_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
