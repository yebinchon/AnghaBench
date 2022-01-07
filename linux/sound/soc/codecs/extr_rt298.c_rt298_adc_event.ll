; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_adc_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_adc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@RT298_VAD_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"NO MCLK\0A\00", align 1
@RT298_D_FILTER_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt298_adc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt298_adc_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 20
  %18 = and i32 %17, 255
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %58 [
    i32 129, label %20
    i32 128, label %52
  ]

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @VERB_CMD(i32 %22, i32 %23, i32 0)
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %24, i32 28800, i32 28672)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @RT298_VAD_CTRL, align 4
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %27)
  %29 = and i32 %28, 512
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %20
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %50 [
    i32 131, label %34
    i32 130, label %42
  ]

34:                                               ; preds = %31
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = load i32, i32* @RT298_D_FILTER_CTRL, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 2, i32 2)
  %38 = call i32 @mdelay(i32 10)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %40 = load i32, i32* @RT298_D_FILTER_CTRL, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 2, i32 0)
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %44 = load i32, i32* @RT298_D_FILTER_CTRL, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 4, i32 4)
  %46 = call i32 @mdelay(i32 10)
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %48 = load i32, i32* @RT298_D_FILTER_CTRL, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 4, i32 0)
  br label %50

50:                                               ; preds = %31, %42, %34
  br label %51

51:                                               ; preds = %50, %20
  br label %59

52:                                               ; preds = %3
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @VERB_CMD(i32 %54, i32 %55, i32 0)
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %56, i32 28800, i32 28800)
  br label %59

58:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

59:                                               ; preds = %52, %51
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @VERB_CMD(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
