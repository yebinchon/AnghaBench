; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_byt_rt5651_prepare_and_enable_pll1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_byt_rt5651_prepare_and_enable_pll1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@byt_rt5651_quirk = common dso_local global i32 0, align 4
@BYT_RT5651_MCLK_EN = common dso_local global i32 0, align 4
@RT5651_PLL1_S_BCLK1 = common dso_local global i32 0, align 4
@RT5651_PLL1_S_MCLK = common dso_local global i32 0, align 4
@BYT_RT5651_MCLK_25MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't set pll: %d\0A\00", align 1
@RT5651_SCLK_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can't set clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @byt_rt5651_prepare_and_enable_pll1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_rt5651_prepare_and_enable_pll1(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @byt_rt5651_quirk, align 4
  %12 = load i32, i32* @BYT_RT5651_MCLK_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @RT5651_PLL1_S_BCLK1, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @RT5651_PLL1_S_MCLK, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @byt_rt5651_quirk, align 4
  %23 = load i32, i32* @BYT_RT5651_MCLK_25MHZ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 25000000, i32* %9, align 4
  br label %28

27:                                               ; preds = %20
  store i32 19200000, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 512
  %35 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %30, i32 0, i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %66

47:                                               ; preds = %29
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %49 = load i32, i32* @RT5651_SCLK_S_PLL1, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 512
  %52 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %53 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %48, i32 %49, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %56, %38
  %67 = load i32, i32* %4, align 4
  ret i32 %67
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
