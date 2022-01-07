; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_adsp_power_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_adsp_power_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.arizona = type { i32 }

@ARIZONA_SYSTEM_CLOCK_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read SYSCLK state: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_FREQ_MASK = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_DVFS_ADSP1_RQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to raise DVFS: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to lower DVFS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm5102_adsp_power_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_adsp_power_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona*, align 8
  %10 = alloca i32, align 4
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
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.arizona* @dev_get_drvdata(i32 %20)
  store %struct.arizona* %21, %struct.arizona** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %78 [
    i32 128, label %23
    i32 129, label %65
  ]

23:                                               ; preds = %3
  %24 = load %struct.arizona*, %struct.arizona** %9, align 8
  %25 = getelementptr inbounds %struct.arizona, %struct.arizona* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARIZONA_SYSTEM_CLOCK_1, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @dev_err(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %23
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ARIZONA_SYSCLK_FREQ_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %44 = lshr i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp uge i32 %45, 3
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %49 = load i32, i32* @ARIZONA_DVFS_ADSP1_RQ, align 4
  %50 = call i32 @arizona_dvfs_up(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dev_err(%struct.TYPE_3__* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @wm_adsp2_set_dspclk(%struct.snd_soc_dapm_widget* %62, i32 %63)
  br label %79

65:                                               ; preds = %3
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* @ARIZONA_DVFS_ADSP1_RQ, align 4
  %68 = call i32 @arizona_dvfs_down(%struct.snd_soc_component* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @dev_warn(%struct.TYPE_3__* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %79

78:                                               ; preds = %3
  br label %79

79:                                               ; preds = %78, %77, %61
  %80 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @wm_adsp_early_event(%struct.snd_soc_dapm_widget* %80, %struct.snd_kcontrol* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %53, %31
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @arizona_dvfs_up(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm_adsp2_set_dspclk(%struct.snd_soc_dapm_widget*, i32) #1

declare dso_local i32 @arizona_dvfs_down(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @wm_adsp_early_event(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
