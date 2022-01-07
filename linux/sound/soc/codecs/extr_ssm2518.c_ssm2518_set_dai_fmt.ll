; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ssm2518 = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_BCLK_INVERT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FMT_I2S = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FMT_LJ = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL1_FMT_RJ_24BIT = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_LRCLK_PULSE = common dso_local global i32 0, align 4
@SSM2518_SAI_CTRL2_LRCLK_INVERT = common dso_local global i32 0, align 4
@SSM2518_REG_SAI_CTRL1 = common dso_local global i32 0, align 4
@SSM2518_REG_SAI_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ssm2518_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2518_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssm2518*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ssm2518* @snd_soc_component_get_drvdata(i32 %13)
  store %struct.ssm2518* %14, %struct.ssm2518** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %19 [
    i32 137, label %18
  ]

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %109

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %36 [
    i32 129, label %26
    i32 132, label %27
    i32 130, label %31
    i32 133, label %32
  ]

26:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load i32, i32* @SSM2518_SAI_CTRL2_BCLK_INVERT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %39

31:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @SSM2518_SAI_CTRL2_BCLK_INVERT, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %109

39:                                               ; preds = %32, %31, %27, %26
  %40 = load %struct.ssm2518*, %struct.ssm2518** %6, align 8
  %41 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %81 [
    i32 134, label %45
    i32 131, label %49
    i32 128, label %57
    i32 136, label %67
    i32 135, label %74
  ]

45:                                               ; preds = %39
  %46 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_I2S, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %84

49:                                               ; preds = %39
  %50 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_LJ, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %84

57:                                               ; preds = %39
  %58 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_RJ_24BIT, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ssm2518*, %struct.ssm2518** %6, align 8
  %62 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %9, align 4
  br label %84

67:                                               ; preds = %39
  %68 = load i32, i32* @SSM2518_SAI_CTRL2_LRCLK_PULSE, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_I2S, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %84

74:                                               ; preds = %39
  %75 = load i32, i32* @SSM2518_SAI_CTRL2_LRCLK_PULSE, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @SSM2518_SAI_CTRL1_FMT_LJ, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %84

81:                                               ; preds = %39
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %109

84:                                               ; preds = %74, %67, %57, %49, %45
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @SSM2518_SAI_CTRL2_LRCLK_INVERT, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.ssm2518*, %struct.ssm2518** %6, align 8
  %93 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SSM2518_REG_SAI_CTRL1, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @regmap_write(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %91
  %103 = load %struct.ssm2518*, %struct.ssm2518** %6, align 8
  %104 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SSM2518_REG_SAI_CTRL2, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @regmap_write(i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %100, %81, %36, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.ssm2518* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
