; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hphr_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hphr_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32, i32 }

@WCD9335_CDC_RX2_RX_PATH_SEC0 = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_DEM_INP_SEL_MASK = common dso_local global i32 0, align 4
@CLS_H_HIFI = common dso_local global i32 0, align 4
@CLS_H_LOHIFI = common dso_local global i32 0, align 4
@CLS_H_LP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DEM Input not set correctly, hph_mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WCD_CLSH_EVENT_PRE_DAC = common dso_local global i32 0, align 4
@WCD_CLSH_STATE_HPHR = common dso_local global i32 0, align 4
@WCD_CLSH_STATE_HPHL = common dso_local global i32 0, align 4
@WCD_CLSH_EVENT_POST_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_hphr_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_hphr_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wcd9335_codec*, align 8
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
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %18)
  store %struct.wcd9335_codec* %19, %struct.wcd9335_codec** %9, align 8
  %20 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %21 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %102 [
    i32 128, label %24
    i32 129, label %72
  ]

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %26 = load i32, i32* @WCD9335_CDC_RX2_RX_PATH_SEC0, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  %28 = load i32, i32* @WCD9335_CDC_RX_PATH_DEM_INP_SEL_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CLS_H_HIFI, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @CLS_H_LOHIFI, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CLS_H_LP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37, %33, %24
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %103

52:                                               ; preds = %41, %37
  %53 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %54 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WCD_CLSH_EVENT_PRE_DAC, align 4
  %57 = load i32, i32* @WCD_CLSH_STATE_HPHR, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @CLS_H_LOHIFI, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @CLS_H_HIFI, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @wcd_clsh_ctrl_set_state(i32 %55, i32 %56, i32 %57, i32 %66)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @wcd9335_codec_hph_mode_config(%struct.snd_soc_component* %68, i32 %69, i32 %70)
  br label %102

72:                                               ; preds = %3
  %73 = call i32 @usleep_range(i32 1000, i32 1100)
  %74 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %75 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wcd_clsh_ctrl_get_state(i32 %76)
  %78 = load i32, i32* @WCD_CLSH_STATE_HPHL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %72
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @wcd9335_codec_hph_mode_config(%struct.snd_soc_component* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %72
  %87 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %88 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @WCD_CLSH_EVENT_POST_PA, align 4
  %91 = load i32, i32* @WCD_CLSH_STATE_HPHR, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @CLS_H_LOHIFI, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @CLS_H_HIFI, align 4
  br label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = call i32 @wcd_clsh_ctrl_set_state(i32 %89, i32 %90, i32 %91, i32 %100)
  br label %102

102:                                              ; preds = %3, %99, %65
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %44
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wcd_clsh_ctrl_set_state(i32, i32, i32, i32) #1

declare dso_local i32 @wcd9335_codec_hph_mode_config(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wcd_clsh_ctrl_get_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
