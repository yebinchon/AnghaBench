; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_pll_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_pll_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i8*, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.adau1373 = type { i32 }

@ADAU1373_PLL_CTRL6_PLL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @adau1373_pll_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1373_pll_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.adau1373*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.adau1373* %16, %struct.adau1373** %8, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 49
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ADAU1373_PLL_CTRL6_PLL_EN, align 4
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load %struct.adau1373*, %struct.adau1373** %8, align 8
  %32 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ADAU1373_PLL_CTRL6(i32 %34)
  %36 = load i32, i32* @ADAU1373_PLL_CTRL6_PLL_EN, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @regmap_update_bits(i32 %33, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = call i32 @mdelay(i32 5)
  br label %44

44:                                               ; preds = %42, %30
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADAU1373_PLL_CTRL6(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
