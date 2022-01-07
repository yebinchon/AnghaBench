; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_pll_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_pll_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.adau = type { i32*, i32 }

@ADAU17X1_CLOCK_CONTROL = common dso_local global i32 0, align 4
@ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL = common dso_local global i32 0, align 4
@ADAU17X1_PLL_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @adau17x1_pll_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_pll_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.adau*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.adau* %14, %struct.adau** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.adau*, %struct.adau** %8, align 8
  %20 = getelementptr inbounds %struct.adau, %struct.adau* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  store i32 1, i32* %22, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load %struct.adau*, %struct.adau** %8, align 8
  %25 = getelementptr inbounds %struct.adau, %struct.adau* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  store i32 0, i32* %27, align 4
  %28 = load %struct.adau*, %struct.adau** %8, align 8
  %29 = getelementptr inbounds %struct.adau, %struct.adau* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ADAU17X1_CLOCK_CONTROL, align 4
  %32 = load i32, i32* @ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %23, %18
  %35 = load %struct.adau*, %struct.adau** %8, align 8
  %36 = getelementptr inbounds %struct.adau, %struct.adau* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ADAU17X1_PLL_CONTROL, align 4
  %39 = load %struct.adau*, %struct.adau** %8, align 8
  %40 = getelementptr inbounds %struct.adau, %struct.adau* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.adau*, %struct.adau** %8, align 8
  %43 = getelementptr inbounds %struct.adau, %struct.adau* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = call i32 @regmap_raw_write(i32 %37, i32 %38, i32* %41, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %34
  %51 = call i32 @mdelay(i32 5)
  %52 = load %struct.adau*, %struct.adau** %8, align 8
  %53 = getelementptr inbounds %struct.adau, %struct.adau* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ADAU17X1_CLOCK_CONTROL, align 4
  %56 = load i32, i32* @ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL, align 4
  %57 = load i32, i32* @ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %34
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
