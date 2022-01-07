; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs42l51_ratios = type { i32, i32, i64 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l51_private = type { i32, i32, i32 }

@master_ratios = common dso_local global %struct.cs42l51_ratios* null, align 8
@slave_ratios = common dso_local global %struct.cs42l51_ratios* null, align 8
@slave_auto_ratios = common dso_local global %struct.cs42l51_ratios* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"could not find matching ratio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS42L51_INTF_CTL = common dso_local global i32 0, align 4
@CS42L51_MIC_POWER_CTL = common dso_local global i32 0, align 4
@CS42L51_INTF_CTL_MASTER = common dso_local global i32 0, align 4
@CS42L51_INTF_CTL_ADC_I2S = common dso_local global i32 0, align 4
@CS42L51_MIC_POWER_CTL_MCLK_DIV2 = common dso_local global i32 0, align 4
@CS42L51_DSM_MODE = common dso_local global i32 0, align 4
@CS42L51_MIC_POWER_CTL_AUTO = common dso_local global i32 0, align 4
@CS42L51_DAC_DIF_I2S = common dso_local global i32 0, align 4
@CS42L51_DAC_DIF_LJ24 = common dso_local global i32 0, align 4
@CS42L51_DAC_DIF_RJ16 = common dso_local global i32 0, align 4
@CS42L51_DAC_DIF_RJ18 = common dso_local global i32 0, align 4
@CS42L51_DAC_DIF_RJ20 = common dso_local global i32 0, align 4
@CS42L51_DAC_DIF_RJ24 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs42l51_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l51_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs42l51_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cs42l51_ratios*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %8, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = call %struct.cs42l51_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.cs42l51_private* %24, %struct.cs42l51_private** %9, align 8
  store %struct.cs42l51_ratios* null, %struct.cs42l51_ratios** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.cs42l51_private*, %struct.cs42l51_private** %9, align 8
  %26 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %40 [
    i32 133, label %28
    i32 132, label %32
    i32 131, label %36
  ]

28:                                               ; preds = %3
  %29 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** @master_ratios, align 8
  store %struct.cs42l51_ratios* %29, %struct.cs42l51_ratios** %14, align 8
  %30 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** @master_ratios, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.cs42l51_ratios* %30)
  store i32 %31, i32* %15, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** @slave_ratios, align 8
  store %struct.cs42l51_ratios* %33, %struct.cs42l51_ratios** %14, align 8
  %34 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** @slave_ratios, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.cs42l51_ratios* %34)
  store i32 %35, i32* %15, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** @slave_auto_ratios, align 8
  store %struct.cs42l51_ratios* %37, %struct.cs42l51_ratios** %14, align 8
  %38 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** @slave_auto_ratios, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.cs42l51_ratios* %38)
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %3, %36, %32, %28
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_rate(%struct.snd_pcm_hw_params* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.cs42l51_private*, %struct.cs42l51_private** %9, align 8
  %44 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = udiv i32 %45, %46
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %63, %40
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** %14, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %53, i64 %55
  %57 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %66

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %48

66:                                               ; preds = %61, %48
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %216

77:                                               ; preds = %66
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %79 = load i32, i32* @CS42L51_INTF_CTL, align 4
  %80 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i32, i32* @CS42L51_MIC_POWER_CTL, align 4
  %83 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %81, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* @CS42L51_INTF_CTL_MASTER, align 4
  %85 = load i32, i32* @CS42L51_INTF_CTL_ADC_I2S, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @CS42L51_INTF_CTL_DAC_FORMAT(i32 7)
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %16, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = call i32 @CS42L51_MIC_POWER_CTL_SPEED(i32 3)
  %93 = load i32, i32* @CS42L51_MIC_POWER_CTL_MCLK_DIV2, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %17, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load %struct.cs42l51_private*, %struct.cs42l51_private** %9, align 8
  %99 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %138 [
    i32 133, label %101
    i32 132, label %124
    i32 131, label %134
  ]

101:                                              ; preds = %77
  %102 = load i32, i32* @CS42L51_INTF_CTL_MASTER, align 4
  %103 = load i32, i32* %16, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %16, align 4
  %105 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** %14, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %105, i64 %107
  %109 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ugt i32 %111, 50000
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* @CS42L51_DSM_MODE, align 4
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %113, %101
  %116 = load i32, i32* %19, align 4
  %117 = call i32 @CS42L51_MIC_POWER_CTL_SPEED(i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* @CS42L51_MIC_POWER_CTL_AUTO, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %17, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %17, align 4
  br label %138

124:                                              ; preds = %77
  %125 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** %14, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %125, i64 %127
  %129 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CS42L51_MIC_POWER_CTL_SPEED(i32 %130)
  %132 = load i32, i32* %17, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %17, align 4
  br label %138

134:                                              ; preds = %77
  %135 = load i32, i32* @CS42L51_MIC_POWER_CTL_AUTO, align 4
  %136 = load i32, i32* %17, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %77, %134, %124, %115
  %139 = load %struct.cs42l51_private*, %struct.cs42l51_private** %9, align 8
  %140 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %178 [
    i32 130, label %142
    i32 129, label %150
    i32 128, label %155
  ]

142:                                              ; preds = %138
  %143 = load i32, i32* @CS42L51_INTF_CTL_ADC_I2S, align 4
  %144 = load i32, i32* %16, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* @CS42L51_DAC_DIF_I2S, align 4
  %147 = call i32 @CS42L51_INTF_CTL_DAC_FORMAT(i32 %146)
  %148 = load i32, i32* %16, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %16, align 4
  br label %185

150:                                              ; preds = %138
  %151 = load i32, i32* @CS42L51_DAC_DIF_LJ24, align 4
  %152 = call i32 @CS42L51_INTF_CTL_DAC_FORMAT(i32 %151)
  %153 = load i32, i32* %16, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %16, align 4
  br label %185

155:                                              ; preds = %138
  %156 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %157 = call i32 @params_width(%struct.snd_pcm_hw_params* %156)
  switch i32 %157, label %166 [
    i32 16, label %158
    i32 18, label %160
    i32 20, label %162
    i32 24, label %164
  ]

158:                                              ; preds = %155
  %159 = load i32, i32* @CS42L51_DAC_DIF_RJ16, align 4
  store i32 %159, i32* %18, align 4
  br label %173

160:                                              ; preds = %155
  %161 = load i32, i32* @CS42L51_DAC_DIF_RJ18, align 4
  store i32 %161, i32* %18, align 4
  br label %173

162:                                              ; preds = %155
  %163 = load i32, i32* @CS42L51_DAC_DIF_RJ20, align 4
  store i32 %163, i32* %18, align 4
  br label %173

164:                                              ; preds = %155
  %165 = load i32, i32* @CS42L51_DAC_DIF_RJ24, align 4
  store i32 %165, i32* %18, align 4
  br label %173

166:                                              ; preds = %155
  %167 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %168 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %216

173:                                              ; preds = %164, %162, %160, %158
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @CS42L51_INTF_CTL_DAC_FORMAT(i32 %174)
  %176 = load i32, i32* %16, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %16, align 4
  br label %185

178:                                              ; preds = %138
  %179 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %180 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_err(i32 %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %216

185:                                              ; preds = %173, %150, %142
  %186 = load %struct.cs42l51_ratios*, %struct.cs42l51_ratios** %14, align 8
  %187 = load i32, i32* %11, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %186, i64 %188
  %190 = getelementptr inbounds %struct.cs42l51_ratios, %struct.cs42l51_ratios* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load i32, i32* @CS42L51_MIC_POWER_CTL_MCLK_DIV2, align 4
  %195 = load i32, i32* %17, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %17, align 4
  br label %197

197:                                              ; preds = %193, %185
  %198 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %199 = load i32, i32* @CS42L51_INTF_CTL, align 4
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %198, i32 %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %4, align 4
  br label %216

206:                                              ; preds = %197
  %207 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %208 = load i32, i32* @CS42L51_MIC_POWER_CTL, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %207, i32 %208, i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %4, align 4
  br label %216

215:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %213, %204, %178, %166, %70
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.cs42l51_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cs42l51_ratios*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @CS42L51_INTF_CTL_DAC_FORMAT(i32) #1

declare dso_local i32 @CS42L51_MIC_POWER_CTL_SPEED(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
