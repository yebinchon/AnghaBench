; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.cs35l36_private = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS35L36_ASP_TX_PIN_CTRL = common dso_local global i32 0, align 4
@CS35L36_SCLK_MSTR_MASK = common dso_local global i32 0, align 4
@CS35L36_SCLK_MSTR_SHIFT = common dso_local global i32 0, align 4
@CS35L36_ASP_RATE_CTRL = common dso_local global i32 0, align 4
@CS35L36_LRCLK_MSTR_MASK = common dso_local global i32 0, align 4
@CS35L36_LRCLK_MSTR_SHIFT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CLOCK_MASK = common dso_local global i32 0, align 4
@CS35L36_SCLK_FRC_MASK = common dso_local global i32 0, align 4
@CS35L36_SCLK_FRC_SHIFT = common dso_local global i32 0, align 4
@CS35L36_LRCLK_FRC_MASK = common dso_local global i32 0, align 4
@CS35L36_LRCLK_FRC_SHIFT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@CS35L36_LRCLK_INV_MASK = common dso_local global i32 0, align 4
@CS35L36_LRCLK_INV_SHIFT = common dso_local global i32 0, align 4
@CS35L36_SCLK_INV_MASK = common dso_local global i32 0, align 4
@CS35L36_SCLK_INV_SHIFT = common dso_local global i32 0, align 4
@CS35L36_ASP_FORMAT = common dso_local global i32 0, align 4
@CS35L36_ASP_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs35l36_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs35l36_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cs35l36_private* @snd_soc_component_get_drvdata(i32 %14)
  store %struct.cs35l36_private* %15, %struct.cs35l36_private** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %21 [
    i32 137, label %19
    i32 136, label %20
  ]

19:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %24

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %115

24:                                               ; preds = %20, %19
  %25 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %26 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS35L36_ASP_TX_PIN_CTRL, align 4
  %29 = load i32, i32* @CS35L36_SCLK_MSTR_MASK, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CS35L36_SCLK_MSTR_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %32)
  %34 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %35 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CS35L36_ASP_RATE_CTRL, align 4
  %38 = load i32, i32* @CS35L36_LRCLK_MSTR_MASK, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @CS35L36_LRCLK_MSTR_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SND_SOC_DAIFMT_CLOCK_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %48 [
    i32 135, label %46
    i32 133, label %47
  ]

46:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %51

47:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %51

48:                                               ; preds = %24
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %115

51:                                               ; preds = %47, %46
  %52 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %53 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CS35L36_ASP_TX_PIN_CTRL, align 4
  %56 = load i32, i32* @CS35L36_SCLK_FRC_MASK, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @CS35L36_SCLK_FRC_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %62 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CS35L36_ASP_RATE_CTRL, align 4
  %65 = load i32, i32* @CS35L36_LRCLK_FRC_MASK, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @CS35L36_LRCLK_FRC_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %75 [
    i32 134, label %73
    i32 132, label %74
  ]

73:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %78

74:                                               ; preds = %51
  store i32 2, i32* %7, align 4
  br label %78

75:                                               ; preds = %51
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %115

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %86 [
    i32 129, label %82
    i32 130, label %83
    i32 131, label %84
    i32 128, label %85
  ]

82:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %89

83:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %89

84:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %89

85:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %115

89:                                               ; preds = %85, %84, %83, %82
  %90 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %91 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CS35L36_ASP_RATE_CTRL, align 4
  %94 = load i32, i32* @CS35L36_LRCLK_INV_MASK, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @CS35L36_LRCLK_INV_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = call i32 @regmap_update_bits(i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %100 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CS35L36_ASP_TX_PIN_CTRL, align 4
  %103 = load i32, i32* @CS35L36_SCLK_INV_MASK, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @CS35L36_SCLK_INV_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = call i32 @regmap_update_bits(i32 %101, i32 %102, i32 %103, i32 %106)
  %108 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %109 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CS35L36_ASP_FORMAT, align 4
  %112 = load i32, i32* @CS35L36_ASP_FMT_MASK, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %89, %86, %75, %48, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.cs35l36_private* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
