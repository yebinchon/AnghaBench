; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_jack_insert.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_jack_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, %struct.snd_soc_dapm_context*, %struct.regmap* }
%struct.snd_soc_dapm_context = type { i32 }
%struct.regmap = type { i32 }

@NAU8825_REG_GENERAL_STATUS = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"OMTP (micgnd1) mic connected\0A\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@NAU8825_REG_HSD_CTRL = common dso_local global i32 0, align 4
@NAU8825_REG_MIC_BIAS = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_JKSLV = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_JKR2 = common dso_local global i32 0, align 4
@NAU8825_REG_SAR_CTRL = common dso_local global i32 0, align 4
@NAU8825_SAR_INPUT_MASK = common dso_local global i32 0, align 4
@NAU8825_SAR_INPUT_JKR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SAR\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"CTIA (micgnd2) mic connected\0A\00", align 1
@NAU8825_SAR_INPUT_JKSLV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"detection error; disable mic function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8825*)* @nau8825_jack_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_jack_insert(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %8 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %9 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %8, i32 0, i32 3
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %3, align 8
  %11 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %12 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.regmap*, %struct.regmap** %3, align 8
  %15 = load i32, i32* @NAU8825_REG_GENERAL_STATUS, align 4
  %16 = call i32 @regmap_read(%struct.regmap* %14, i32 %15, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 10
  %19 = and i32 %18, 3
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %24 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %27 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %92 [
    i32 0, label %30
    i32 1, label %32
    i32 2, label %59
    i32 3, label %86
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %31, i32* %7, align 4
  br label %92

32:                                               ; preds = %28
  %33 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %34 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @SND_JACK_HEADSET, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.regmap*, %struct.regmap** %3, align 8
  %39 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %40 = call i32 @regmap_update_bits(%struct.regmap* %38, i32 %39, i32 12, i32 4)
  %41 = load %struct.regmap*, %struct.regmap** %3, align 8
  %42 = load i32, i32* @NAU8825_REG_MIC_BIAS, align 4
  %43 = load i32, i32* @NAU8825_MICBIAS_JKSLV, align 4
  %44 = load i32, i32* @NAU8825_MICBIAS_JKR2, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NAU8825_MICBIAS_JKR2, align 4
  %47 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.regmap*, %struct.regmap** %3, align 8
  %49 = load i32, i32* @NAU8825_REG_SAR_CTRL, align 4
  %50 = load i32, i32* @NAU8825_SAR_INPUT_MASK, align 4
  %51 = load i32, i32* @NAU8825_SAR_INPUT_JKR2, align 4
  %52 = call i32 @regmap_update_bits(%struct.regmap* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %54 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %56 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %58 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %57)
  br label %92

59:                                               ; preds = %28
  %60 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %61 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @SND_JACK_HEADSET, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.regmap*, %struct.regmap** %3, align 8
  %66 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %67 = call i32 @regmap_update_bits(%struct.regmap* %65, i32 %66, i32 12, i32 8)
  %68 = load %struct.regmap*, %struct.regmap** %3, align 8
  %69 = load i32, i32* @NAU8825_REG_MIC_BIAS, align 4
  %70 = load i32, i32* @NAU8825_MICBIAS_JKSLV, align 4
  %71 = load i32, i32* @NAU8825_MICBIAS_JKR2, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NAU8825_MICBIAS_JKSLV, align 4
  %74 = call i32 @regmap_update_bits(%struct.regmap* %68, i32 %69, i32 %72, i32 %73)
  %75 = load %struct.regmap*, %struct.regmap** %3, align 8
  %76 = load i32, i32* @NAU8825_REG_SAR_CTRL, align 4
  %77 = load i32, i32* @NAU8825_SAR_INPUT_MASK, align 4
  %78 = load i32, i32* @NAU8825_SAR_INPUT_JKSLV, align 4
  %79 = call i32 @regmap_update_bits(%struct.regmap* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %81 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %83 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %85 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %84)
  br label %92

86:                                               ; preds = %28
  %87 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %88 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %28, %86, %59, %32, %30
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
