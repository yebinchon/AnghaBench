; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.au1xpsc_audio_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PSC_I2SCFG_XM = common dso_local global i64 0, align 8
@PSC_I2SCFG_MLJ = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@PSC_I2SCFG_BI = common dso_local global i64 0, align 8
@PSC_I2SCFG_WI = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@PSC_I2SCFG_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @au1xpsc_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %15 = load i64, i64* @PSC_I2SCFG_XM, align 8
  %16 = load i64, i64* @PSC_I2SCFG_MLJ, align 8
  %17 = or i64 %15, %16
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %33 [
    i32 134, label %24
    i32 130, label %28
    i32 131, label %29
  ]

24:                                               ; preds = %2
  %25 = load i64, i64* @PSC_I2SCFG_XM, align 8
  %26 = load i64, i64* %6, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %34

28:                                               ; preds = %2
  br label %34

29:                                               ; preds = %2
  %30 = load i64, i64* @PSC_I2SCFG_MLJ, align 8
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %34

33:                                               ; preds = %2
  br label %78

34:                                               ; preds = %29, %28, %24
  %35 = load i64, i64* @PSC_I2SCFG_BI, align 8
  %36 = load i64, i64* @PSC_I2SCFG_WI, align 8
  %37 = or i64 %35, %36
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %6, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %59 [
    i32 128, label %44
    i32 129, label %50
    i32 132, label %54
    i32 133, label %58
  ]

44:                                               ; preds = %34
  %45 = load i64, i64* @PSC_I2SCFG_BI, align 8
  %46 = load i64, i64* @PSC_I2SCFG_WI, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %60

50:                                               ; preds = %34
  %51 = load i64, i64* @PSC_I2SCFG_BI, align 8
  %52 = load i64, i64* %6, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %60

54:                                               ; preds = %34
  %55 = load i64, i64* @PSC_I2SCFG_WI, align 8
  %56 = load i64, i64* %6, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %60

58:                                               ; preds = %34
  br label %60

59:                                               ; preds = %34
  br label %78

60:                                               ; preds = %58, %54, %50, %44
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %73 [
    i32 136, label %64
    i32 135, label %68
  ]

64:                                               ; preds = %60
  %65 = load i64, i64* @PSC_I2SCFG_MS, align 8
  %66 = load i64, i64* %6, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %6, align 8
  br label %74

68:                                               ; preds = %60
  %69 = load i64, i64* @PSC_I2SCFG_MS, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %6, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %6, align 8
  br label %74

73:                                               ; preds = %60
  br label %78

74:                                               ; preds = %68, %64
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %77 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %73, %59, %33
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
