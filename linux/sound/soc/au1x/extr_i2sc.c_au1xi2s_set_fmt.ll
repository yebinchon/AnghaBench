; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_au1xi2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_au1xi2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.au1xpsc_audio_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CFG_FM_MASK = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@CFG_FM_I2S = common dso_local global i64 0, align 8
@CFG_FM_RJ = common dso_local global i64 0, align 8
@CFG_FM_LJ = common dso_local global i64 0, align 8
@CFG_IC = common dso_local global i64 0, align 8
@CFG_ICK = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @au1xi2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xi2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1xpsc_audio_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = call %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.au1xpsc_audio_data* %9, %struct.au1xpsc_audio_data** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %13 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @CFG_FM_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %34 [
    i32 134, label %22
    i32 130, label %26
    i32 131, label %30
  ]

22:                                               ; preds = %2
  %23 = load i64, i64* @CFG_FM_I2S, align 8
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %35

26:                                               ; preds = %2
  %27 = load i64, i64* @CFG_FM_RJ, align 8
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %35

30:                                               ; preds = %2
  %31 = load i64, i64* @CFG_FM_LJ, align 8
  %32 = load i64, i64* %6, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %35

34:                                               ; preds = %2
  br label %71

35:                                               ; preds = %30, %26, %22
  %36 = load i64, i64* @CFG_IC, align 8
  %37 = load i64, i64* @CFG_ICK, align 8
  %38 = or i64 %36, %37
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %60 [
    i32 128, label %45
    i32 129, label %51
    i32 132, label %55
    i32 133, label %59
  ]

45:                                               ; preds = %35
  %46 = load i64, i64* @CFG_IC, align 8
  %47 = load i64, i64* @CFG_ICK, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %61

51:                                               ; preds = %35
  %52 = load i64, i64* @CFG_IC, align 8
  %53 = load i64, i64* %6, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %61

55:                                               ; preds = %35
  %56 = load i64, i64* @CFG_ICK, align 8
  %57 = load i64, i64* %6, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %61

59:                                               ; preds = %35
  br label %61

60:                                               ; preds = %35
  br label %71

61:                                               ; preds = %59, %55, %51, %45
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %66 [
    i32 135, label %65
  ]

65:                                               ; preds = %61
  br label %67

66:                                               ; preds = %61
  br label %71

67:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %70 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %66, %60, %34
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
