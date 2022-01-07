; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ARIZONA_FMT_DSP_MODE_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DSP_B not valid in slave mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ARIZONA_FMT_DSP_MODE_B = common dso_local global i32 0, align 4
@ARIZONA_FMT_I2S_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"LEFT_J not valid in slave mode\0A\00", align 1
@ARIZONA_FMT_LEFT_JUSTIFIED_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unsupported DAI format %d\0A\00", align 1
@ARIZONA_AIF1TX_LRCLK_MSTR = common dso_local global i32 0, align 4
@ARIZONA_AIF1_BCLK_MSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported master mode %d\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@ARIZONA_AIF1TX_LRCLK_INV = common dso_local global i32 0, align 4
@ARIZONA_AIF_BCLK_CTRL = common dso_local global i64 0, align 8
@ARIZONA_AIF_TX_PIN_CTRL = common dso_local global i64 0, align 8
@ARIZONA_AIF_RX_PIN_CTRL = common dso_local global i64 0, align 8
@ARIZONA_AIF1RX_LRCLK_INV = common dso_local global i32 0, align 4
@ARIZONA_AIF1RX_LRCLK_MSTR = common dso_local global i32 0, align 4
@ARIZONA_AIF_FORMAT = common dso_local global i64 0, align 8
@ARIZONA_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @arizona_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.arizona_priv*, align 8
  %8 = alloca %struct.arizona*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.arizona_priv* %17, %struct.arizona_priv** %7, align 8
  %18 = load %struct.arizona_priv*, %struct.arizona_priv** %7, align 8
  %19 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %18, i32 0, i32 0
  %20 = load %struct.arizona*, %struct.arizona** %19, align 8
  store %struct.arizona* %20, %struct.arizona** %8, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %57 [
    i32 135, label %29
    i32 134, label %31
    i32 133, label %43
    i32 130, label %45
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @ARIZONA_FMT_DSP_MODE_A, align 4
  store i32 %30, i32* %11, align 4
  br label %65

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 139
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %38 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_err(%struct.snd_soc_dai* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %163

41:                                               ; preds = %31
  %42 = load i32, i32* @ARIZONA_FMT_DSP_MODE_B, align 4
  store i32 %42, i32* %11, align 4
  br label %65

43:                                               ; preds = %2
  %44 = load i32, i32* @ARIZONA_FMT_I2S_MODE, align 4
  store i32 %44, i32* %11, align 4
  br label %65

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 139
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %52 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_err(%struct.snd_soc_dai* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %163

55:                                               ; preds = %45
  %56 = load i32, i32* @ARIZONA_FMT_LEFT_JUSTIFIED_MODE, align 4
  store i32 %56, i32* %11, align 4
  br label %65

57:                                               ; preds = %2
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_err(%struct.snd_soc_dai* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %163

65:                                               ; preds = %55, %43, %41, %29
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %85 [
    i32 136, label %69
    i32 137, label %70
    i32 138, label %74
    i32 139, label %78
  ]

69:                                               ; preds = %65
  br label %93

70:                                               ; preds = %65
  %71 = load i32, i32* @ARIZONA_AIF1TX_LRCLK_MSTR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %93

74:                                               ; preds = %65
  %75 = load i32, i32* @ARIZONA_AIF1_BCLK_MSTR, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %93

78:                                               ; preds = %65
  %79 = load i32, i32* @ARIZONA_AIF1_BCLK_MSTR, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @ARIZONA_AIF1TX_LRCLK_MSTR, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %93

85:                                               ; preds = %65
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_err(%struct.snd_soc_dai* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %163

93:                                               ; preds = %78, %74, %70, %69
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %113 [
    i32 128, label %97
    i32 132, label %98
    i32 131, label %105
    i32 129, label %109
  ]

97:                                               ; preds = %93
  br label %116

98:                                               ; preds = %93
  %99 = load i32, i32* @ARIZONA_AIF1_BCLK_INV, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @ARIZONA_AIF1TX_LRCLK_INV, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %116

105:                                              ; preds = %93
  %106 = load i32, i32* @ARIZONA_AIF1_BCLK_INV, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %116

109:                                              ; preds = %93
  %110 = load i32, i32* @ARIZONA_AIF1TX_LRCLK_INV, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %116

113:                                              ; preds = %93
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %163

116:                                              ; preds = %109, %105, %98, %97
  %117 = load %struct.arizona*, %struct.arizona** %8, align 8
  %118 = getelementptr inbounds %struct.arizona, %struct.arizona* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @ARIZONA_AIF_BCLK_CTRL, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i32, i32* @ARIZONA_AIF1_BCLK_INV, align 4
  %125 = load i32, i32* @ARIZONA_AIF1_BCLK_MSTR, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @regmap_update_bits_async(i32 %119, i64 %123, i32 %126, i32 %127)
  %129 = load %struct.arizona*, %struct.arizona** %8, align 8
  %130 = getelementptr inbounds %struct.arizona, %struct.arizona* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @ARIZONA_AIF_TX_PIN_CTRL, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i32, i32* @ARIZONA_AIF1TX_LRCLK_INV, align 4
  %137 = load i32, i32* @ARIZONA_AIF1TX_LRCLK_MSTR, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @regmap_update_bits_async(i32 %131, i64 %135, i32 %138, i32 %139)
  %141 = load %struct.arizona*, %struct.arizona** %8, align 8
  %142 = getelementptr inbounds %struct.arizona, %struct.arizona* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* @ARIZONA_AIF_RX_PIN_CTRL, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i32, i32* @ARIZONA_AIF1RX_LRCLK_INV, align 4
  %149 = load i32, i32* @ARIZONA_AIF1RX_LRCLK_MSTR, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @regmap_update_bits_async(i32 %143, i64 %147, i32 %150, i32 %151)
  %153 = load %struct.arizona*, %struct.arizona** %8, align 8
  %154 = getelementptr inbounds %struct.arizona, %struct.arizona* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* @ARIZONA_AIF_FORMAT, align 8
  %159 = add nsw i64 %157, %158
  %160 = load i32, i32* @ARIZONA_AIF1_FMT_MASK, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @regmap_update_bits(i32 %155, i64 %159, i32 %160, i32 %161)
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %116, %113, %85, %57, %50, %36
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_aif_err(%struct.snd_soc_dai*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits_async(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
