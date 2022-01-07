; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_out_stage_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_out_stage_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.jz_icdc = type { %struct.regmap* }
%struct.regmap = type { i32 }

@JZ4725B_CODEC_REG_IFR = common dso_local global i32 0, align 4
@REG_IFR_RAMP_UP_DONE_OFFSET = common dso_local global i32 0, align 4
@REG_IFR_RAMP_DOWN_DONE_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @jz4725b_out_stage_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_out_stage_enable(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.jz_icdc*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.jz_icdc* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.jz_icdc* %17, %struct.jz_icdc** %9, align 8
  %18 = load %struct.jz_icdc*, %struct.jz_icdc** %9, align 8
  %19 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %18, i32 0, i32 0
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %10, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %52 [
    i32 128, label %22
    i32 130, label %28
    i32 129, label %37
    i32 131, label %43
  ]

22:                                               ; preds = %3
  %23 = load %struct.regmap*, %struct.regmap** %10, align 8
  %24 = load i32, i32* @JZ4725B_CODEC_REG_IFR, align 4
  %25 = load i32, i32* @REG_IFR_RAMP_UP_DONE_OFFSET, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %24, i32 %26, i32 0)
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load %struct.regmap*, %struct.regmap** %10, align 8
  %30 = load i32, i32* @JZ4725B_CODEC_REG_IFR, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @REG_IFR_RAMP_UP_DONE_OFFSET, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = call i32 @regmap_read_poll_timeout(%struct.regmap* %29, i32 %30, i32 %31, i32 %35, i32 100000, i32 500000)
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %3
  %38 = load %struct.regmap*, %struct.regmap** %10, align 8
  %39 = load i32, i32* @JZ4725B_CODEC_REG_IFR, align 4
  %40 = load i32, i32* @REG_IFR_RAMP_DOWN_DONE_OFFSET, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = call i32 @regmap_update_bits(%struct.regmap* %38, i32 %39, i32 %41, i32 0)
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %3
  %44 = load %struct.regmap*, %struct.regmap** %10, align 8
  %45 = load i32, i32* @JZ4725B_CODEC_REG_IFR, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @REG_IFR_RAMP_DOWN_DONE_OFFSET, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = call i32 @regmap_read_poll_timeout(%struct.regmap* %44, i32 %45, i32 %46, i32 %50, i32 100000, i32 500000)
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %43, %37, %28, %22
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.jz_icdc* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(%struct.regmap*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
