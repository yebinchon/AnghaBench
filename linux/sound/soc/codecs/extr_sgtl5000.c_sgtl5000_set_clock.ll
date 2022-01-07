; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sgtl5000_priv = type { i32, i32 }

@SGTL5000_RATE_MODE_DIV_4 = common dso_local global i32 0, align 4
@SGTL5000_RATE_MODE_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_RATE_MODE_DIV_2 = common dso_local global i32 0, align 4
@SGTL5000_RATE_MODE_DIV_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SGTL5000_SYS_FS_32k = common dso_local global i32 0, align 4
@SGTL5000_SYS_FS_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_SYS_FS_44_1k = common dso_local global i32 0, align 4
@SGTL5000_SYS_FS_48k = common dso_local global i32 0, align 4
@SGTL5000_SYS_FS_96k = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"frame rate %d not supported\0A\00", align 1
@SGTL5000_MCLK_FREQ_256FS = common dso_local global i32 0, align 4
@SGTL5000_MCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_MCLK_FREQ_384FS = common dso_local global i32 0, align 4
@SGTL5000_MCLK_FREQ_512FS = common dso_local global i32 0, align 4
@SGTL5000_MCLK_FREQ_PLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PLL not supported in slave mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"%d ratio is not supported. SYS_MCLK needs to be 256, 384 or 512 * fs\0A\00", align 1
@SGTL5000_MCLK_FREQ_MASK = common dso_local global i32 0, align 4
@SGTL5000_PLL_INT_DIV_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_PLL_FRAC_DIV_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_CHIP_PLL_CTRL = common dso_local global i32 0, align 4
@SGTL5000_CHIP_CLK_TOP_CTRL = common dso_local global i32 0, align 4
@SGTL5000_INPUT_FREQ_DIV2 = common dso_local global i32 0, align 4
@SGTL5000_CHIP_ANA_POWER = common dso_local global i32 0, align 4
@SGTL5000_PLL_POWERUP = common dso_local global i32 0, align 4
@SGTL5000_VCOAMP_POWERUP = common dso_local global i32 0, align 4
@SGTL5000_CHIP_CLK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @sgtl5000_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_set_clock(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sgtl5000_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %17 = call %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.sgtl5000_priv* %17, %struct.sgtl5000_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %21 [
    i32 8000, label %19
    i32 16000, label %19
    i32 11025, label %20
    i32 22050, label %20
  ]

19:                                               ; preds = %2, %2
  store i32 32000, i32* %8, align 4
  br label %23

20:                                               ; preds = %2, %2
  store i32 44100, i32* %8, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %20, %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %24, %25
  switch i32 %26, label %45 [
    i32 4, label %27
    i32 2, label %33
    i32 1, label %39
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @SGTL5000_RATE_MODE_DIV_4, align 4
  %29 = load i32, i32* @SGTL5000_RATE_MODE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %48

33:                                               ; preds = %23
  %34 = load i32, i32* @SGTL5000_RATE_MODE_DIV_2, align 4
  %35 = load i32, i32* @SGTL5000_RATE_MODE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %23
  %40 = load i32, i32* @SGTL5000_RATE_MODE_DIV_1, align 4
  %41 = load i32, i32* @SGTL5000_RATE_MODE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %23
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %220

48:                                               ; preds = %39, %33, %27
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %74 [
    i32 32000, label %50
    i32 44100, label %56
    i32 48000, label %62
    i32 96000, label %68
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @SGTL5000_SYS_FS_32k, align 4
  %52 = load i32, i32* @SGTL5000_SYS_FS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %82

56:                                               ; preds = %48
  %57 = load i32, i32* @SGTL5000_SYS_FS_44_1k, align 4
  %58 = load i32, i32* @SGTL5000_SYS_FS_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %82

62:                                               ; preds = %48
  %63 = load i32, i32* @SGTL5000_SYS_FS_48k, align 4
  %64 = load i32, i32* @SGTL5000_SYS_FS_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %82

68:                                               ; preds = %48
  %69 = load i32, i32* @SGTL5000_SYS_FS_96k, align 4
  %70 = load i32, i32* @SGTL5000_SYS_FS_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %82

74:                                               ; preds = %48
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %220

82:                                               ; preds = %68, %62, %56, %50
  %83 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %84 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sdiv i32 %85, %86
  switch i32 %87, label %106 [
    i32 256, label %88
    i32 384, label %94
    i32 512, label %100
  ]

88:                                               ; preds = %82
  %89 = load i32, i32* @SGTL5000_MCLK_FREQ_256FS, align 4
  %90 = load i32, i32* @SGTL5000_MCLK_FREQ_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %134

94:                                               ; preds = %82
  %95 = load i32, i32* @SGTL5000_MCLK_FREQ_384FS, align 4
  %96 = load i32, i32* @SGTL5000_MCLK_FREQ_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %134

100:                                              ; preds = %82
  %101 = load i32, i32* @SGTL5000_MCLK_FREQ_512FS, align 4
  %102 = load i32, i32* @SGTL5000_MCLK_FREQ_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %134

106:                                              ; preds = %82
  %107 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %108 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @SGTL5000_MCLK_FREQ_PLL, align 4
  %113 = load i32, i32* @SGTL5000_MCLK_FREQ_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %133

117:                                              ; preds = %106
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %119 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %123 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %126 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %5, align 4
  %129 = sdiv i32 %127, %128
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %220

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %100, %94, %88
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @SGTL5000_MCLK_FREQ_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @SGTL5000_MCLK_FREQ_PLL, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %208

140:                                              ; preds = %134
  %141 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %142 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 17000000
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  %146 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %147 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 2
  store i32 %149, i32* %13, align 4
  br label %154

150:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  %151 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %152 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 44100
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 180633600, i32* %9, align 4
  br label %159

158:                                              ; preds = %154
  store i32 196608000, i32* %9, align 4
  br label %159

159:                                              ; preds = %158, %157
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @do_div(i32 %160, i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 %164, 2048
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @do_div(i32 %166, i32 %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @SGTL5000_PLL_INT_DIV_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @SGTL5000_PLL_FRAC_DIV_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = or i32 %172, %175
  store i32 %176, i32* %12, align 4
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %178 = load i32, i32* @SGTL5000_CHIP_PLL_CTRL, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %177, i32 %178, i32 %179)
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %159
  %184 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %185 = load i32, i32* @SGTL5000_CHIP_CLK_TOP_CTRL, align 4
  %186 = load i32, i32* @SGTL5000_INPUT_FREQ_DIV2, align 4
  %187 = load i32, i32* @SGTL5000_INPUT_FREQ_DIV2, align 4
  %188 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %184, i32 %185, i32 %186, i32 %187)
  br label %194

189:                                              ; preds = %159
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %191 = load i32, i32* @SGTL5000_CHIP_CLK_TOP_CTRL, align 4
  %192 = load i32, i32* @SGTL5000_INPUT_FREQ_DIV2, align 4
  %193 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %190, i32 %191, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %189, %183
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %196 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %197 = load i32, i32* @SGTL5000_PLL_POWERUP, align 4
  %198 = load i32, i32* @SGTL5000_VCOAMP_POWERUP, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @SGTL5000_PLL_POWERUP, align 4
  %201 = load i32, i32* @SGTL5000_VCOAMP_POWERUP, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %195, i32 %196, i32 %199, i32 %202)
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %205 = load i32, i32* @SGTL5000_CHIP_CLK_CTRL, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %204, i32 %205, i32 %206)
  br label %219

208:                                              ; preds = %134
  %209 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %210 = load i32, i32* @SGTL5000_CHIP_CLK_CTRL, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %209, i32 %210, i32 %211)
  %213 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %214 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %215 = load i32, i32* @SGTL5000_PLL_POWERUP, align 4
  %216 = load i32, i32* @SGTL5000_VCOAMP_POWERUP, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %213, i32 %214, i32 %217, i32 0)
  br label %219

219:                                              ; preds = %208, %194
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %219, %117, %74, %45
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
