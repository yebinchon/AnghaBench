; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_set_dspclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_set_dspclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i64, i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm_adsp = type { i64, i32 }

@ADSP2_CLOCKING = common dso_local global i64 0, align 8
@ADSP2_CLK_SEL_MASK = common dso_local global i32 0, align 4
@ADSP2_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to set clock rate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp2_set_dspclk(%struct.snd_soc_dapm_widget* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca %struct.wm_adsp*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm_adsp* %14, %struct.wm_adsp** %6, align 8
  %15 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %15, i64 %18
  store %struct.wm_adsp* %19, %struct.wm_adsp** %7, align 8
  %20 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %21 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %24 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ADSP2_CLOCKING, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @ADSP2_CLK_SEL_MASK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ADSP2_CLK_SEL_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %22, i64 %27, i32 %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @adsp_err(%struct.wm_adsp* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm_adsp* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
