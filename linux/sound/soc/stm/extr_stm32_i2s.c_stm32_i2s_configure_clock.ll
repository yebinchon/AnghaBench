; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_configure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.stm32_i2s_data = type { i32, i32, i32, i32, i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@STM32_I2S_CGFR_REG = common dso_local global i32 0, align 4
@I2S_CGFR_CHLEN = common dso_local global i32 0, align 4
@I2S_CGFR_ODD_SHIFT = common dso_local global i32 0, align 4
@I2S_CGFR_I2SDIV_MASK = common dso_local global i32 0, align 4
@I2S_CGFR_ODD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"I2S clk: %ld, SCLK: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Divider: 2*%d(div)+%d(odd) = %d\0A\00", align 1
@I2S_CGFR_I2SDIV_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Wrong divider setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"real divider forced to 1\0A\00", align 1
@STM32_I2S_CFG2_REG = common dso_local global i32 0, align 4
@I2S_CFG2_AFCNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @stm32_i2s_configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_configure_clock(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.stm32_i2s_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = call %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.stm32_i2s_data* %19, %struct.stm32_i2s_data** %6, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = urem i32 %22, 11025
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %27 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_set_parent(i32 %28, i32 %31)
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %35 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %38 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_set_parent(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %43 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @clk_get_rate(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %47 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %53 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DIV_ROUND_CLOSEST(i64 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %87

56:                                               ; preds = %41
  store i32 32, i32* %12, align 4
  %57 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %58 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 16, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %56
  %66 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %67 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @STM32_I2S_CGFR_REG, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %15)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %3, align 4
  br label %166

75:                                               ; preds = %65
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @I2S_CGFR_CHLEN, align 4
  %79 = and i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = mul i32 %76, %80
  store i32 %81, i32* %11, align 4
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul i32 %83, %84
  %86 = call i32 @DIV_ROUND_CLOSEST(i64 %82, i32 %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %75, %50
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 1
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %8, align 4
  %91 = lshr i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @I2S_CGFR_I2SDIV_SET(i32 %92)
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @I2S_CGFR_ODD_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* @I2S_CGFR_I2SDIV_MASK, align 4
  %99 = load i32, i32* @I2S_CGFR_ODD, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %9, align 4
  %102 = mul i32 2, %101
  %103 = load i32, i32* %17, align 4
  %104 = add i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %7, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %13, align 4
  %111 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %113 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %124

121:                                              ; preds = %87
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121, %87
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @I2S_CGFR_I2SDIV_MAX, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124, %121
  %129 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %130 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %166

135:                                              ; preds = %124
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %143 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dev_warn(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %138, %135
  %147 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %148 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @STM32_I2S_CGFR_REG, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @regmap_update_bits(i32 %149, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %3, align 4
  br label %166

158:                                              ; preds = %146
  %159 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %160 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @STM32_I2S_CFG2_REG, align 4
  %163 = load i32, i32* @I2S_CFG2_AFCNTR, align 4
  %164 = load i32, i32* @I2S_CFG2_AFCNTR, align 4
  %165 = call i32 @regmap_update_bits(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %158, %156, %128, %73
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @I2S_CGFR_I2SDIV_SET(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
