; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_byt_rt5640_prepare_and_enable_pll1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_byt_rt5640_prepare_and_enable_pll1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@byt_rt5640_quirk = common dso_local global i32 0, align 4
@BYT_RT5640_MCLK_EN = common dso_local global i32 0, align 4
@BYT_RT5640_SSP0_AIF1 = common dso_local global i32 0, align 4
@BYT_RT5640_SSP0_AIF2 = common dso_local global i32 0, align 4
@RT5640_PLL1_S_BCLK1 = common dso_local global i32 0, align 4
@BYT_RT5640_MCLK_25MHZ = common dso_local global i32 0, align 4
@RT5640_PLL1_S_MCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't set pll: %d\0A\00", align 1
@RT5640_SCLK_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can't set clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @byt_rt5640_prepare_and_enable_pll1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_rt5640_prepare_and_enable_pll1(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @byt_rt5640_quirk, align 4
  %8 = load i32, i32* @BYT_RT5640_MCLK_EN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @byt_rt5640_quirk, align 4
  %13 = load i32, i32* @BYT_RT5640_SSP0_AIF1, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @byt_rt5640_quirk, align 4
  %18 = load i32, i32* @BYT_RT5640_SSP0_AIF2, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16, %11
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = load i32, i32* @RT5640_PLL1_S_BCLK1, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 32
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 512
  %28 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %22, i32 0, i32 %23, i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %16
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %31 = load i32, i32* @RT5640_PLL1_S_BCLK1, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 50
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 512
  %36 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %30, i32 0, i32 %31, i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %21
  br label %56

38:                                               ; preds = %2
  %39 = load i32, i32* @byt_rt5640_quirk, align 4
  %40 = load i32, i32* @BYT_RT5640_MCLK_25MHZ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %45 = load i32, i32* @RT5640_PLL1_S_MCLK, align 4
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 512
  %48 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %44, i32 0, i32 %45, i32 25000000, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %55

49:                                               ; preds = %38
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %51 = load i32, i32* @RT5640_PLL1_S_MCLK, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 512
  %54 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %50, i32 0, i32 %51, i32 19200000, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %87

68:                                               ; preds = %56
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %70 = load i32, i32* @RT5640_SCLK_S_PLL1, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 512
  %73 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %74 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %69, i32 %70, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %77, %59
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
