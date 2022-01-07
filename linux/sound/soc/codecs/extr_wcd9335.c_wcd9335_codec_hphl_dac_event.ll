; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hphl_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hphl_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32, i32 }

@WCD9335_CDC_RX1_RX_PATH_SEC0 = common dso_local global i32 0, align 4
@CLS_H_HIFI = common dso_local global i32 0, align 4
@CLS_H_LOHIFI = common dso_local global i32 0, align 4
@CLS_H_LP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Incorrect DEM Input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WCD_CLSH_EVENT_PRE_DAC = common dso_local global i32 0, align 4
@WCD_CLSH_STATE_HPHL = common dso_local global i32 0, align 4
@WCD_CLSH_STATE_HPHR = common dso_local global i32 0, align 4
@WCD_CLSH_EVENT_POST_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_hphl_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_hphl_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %23, label %103 [
    i32 128, label %24
    i32 130, label %70
    i32 129, label %72
    i32 131, label %73
  ]

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %26 = load i32, i32* @WCD9335_CDC_RX1_RX_PATH_SEC0, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  %28 = and i32 %27, 3
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CLS_H_HIFI, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @CLS_H_LOHIFI, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @CLS_H_LP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36, %32, %24
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %104

50:                                               ; preds = %40, %36
  %51 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %52 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WCD_CLSH_EVENT_PRE_DAC, align 4
  %55 = load i32, i32* @WCD_CLSH_STATE_HPHL, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @CLS_H_LOHIFI, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @CLS_H_HIFI, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @wcd_clsh_ctrl_set_state(i32 %53, i32 %54, i32 %55, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @wcd9335_codec_hph_mode_config(%struct.snd_soc_component* %66, i32 %67, i32 %68)
  br label %103

70:                                               ; preds = %3
  %71 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %103

72:                                               ; preds = %3
  br label %103

73:                                               ; preds = %3
  %74 = call i32 @usleep_range(i32 1000, i32 1100)
  %75 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %76 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wcd_clsh_ctrl_get_state(i32 %77)
  %79 = load i32, i32* @WCD_CLSH_STATE_HPHR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %73
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @wcd9335_codec_hph_mode_config(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %9, align 8
  %89 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WCD_CLSH_EVENT_POST_PA, align 4
  %92 = load i32, i32* @WCD_CLSH_STATE_HPHL, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @CLS_H_LOHIFI, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @CLS_H_HIFI, align 4
  br label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @wcd_clsh_ctrl_set_state(i32 %90, i32 %91, i32 %92, i32 %101)
  br label %103

103:                                              ; preds = %3, %100, %72, %70, %63
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %43
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

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
