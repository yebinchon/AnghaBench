; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bdw-rt5677.c_bdw_rt5677_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bdw-rt5677.c_bdw_rt5677_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.bdw_rt5677_priv = type { %struct.snd_soc_component*, i32 }
%struct.snd_soc_dapm_context = type { i32 }

@bdw_rt5677_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to add driver gpios\0A\00", align 1
@RT5677_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5677_I2S1_SOURCE = common dso_local global i32 0, align 4
@RT5677_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"headphone-enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't find HP_AMP_SHDN_L gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@headphone_jack = common dso_local global i32 0, align 4
@headphone_jack_pin = common dso_local global i32 0, align 4
@headphone_jack_gpio = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Can't add headphone jack gpio\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't create headphone jack\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@mic_jack = common dso_local global i32 0, align 4
@mic_jack_pin = common dso_local global i32 0, align 4
@mic_jack_gpio = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Can't add mic jack gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Can't create mic jack\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @bdw_rt5677_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_rt5677_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.bdw_rt5677_priv*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.bdw_rt5677_priv* @snd_soc_card_get_drvdata(i32 %10)
  store %struct.bdw_rt5677_priv* %11, %struct.bdw_rt5677_priv** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %5, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %18 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %17)
  store %struct.snd_soc_dapm_context* %18, %struct.snd_soc_dapm_context** %6, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @bdw_rt5677_gpios, align 4
  %23 = call i32 @devm_acpi_dev_add_driver_gpios(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %33 = load i32, i32* @RT5677_DA_STEREO_FILTER, align 4
  %34 = load i32, i32* @RT5677_AD_STEREO1_FILTER, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RT5677_I2S1_SOURCE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RT5677_CLK_SEL_I2S1_ASRC, align 4
  %39 = call i32 @rt5677_sel_asrc_clk_src(%struct.snd_soc_component* %32, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %44 = call i32 @devm_gpiod_get(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %4, align 8
  %46 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %4, align 8
  %48 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %31
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %4, align 8
  %58 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %115

61:                                               ; preds = %31
  %62 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %63 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %66 = call i32 @snd_soc_card_jack_new(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32* @headphone_jack, i32* @headphone_jack_pin, i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %61
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @headphone_jack_gpio, i32 0, i32 0), align 4
  %72 = call i64 @snd_soc_jack_add_gpios(i32* @headphone_jack, i32 1, %struct.TYPE_6__* @headphone_jack_gpio)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %68
  br label %85

80:                                               ; preds = %61
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %79
  %86 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %87 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %90 = call i32 @snd_soc_card_jack_new(i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32* @mic_jack, i32* @mic_jack_pin, i32 1)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %85
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mic_jack_gpio, i32 0, i32 0), align 4
  %96 = call i64 @snd_soc_jack_add_gpios(i32* @mic_jack, i32 1, %struct.TYPE_6__* @mic_jack_gpio)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %100 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %92
  br label %109

104:                                              ; preds = %85
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %103
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %111 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %4, align 8
  %112 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %111, i32 0, i32 0
  store %struct.snd_soc_component* %110, %struct.snd_soc_component** %112, align 8
  %113 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %114 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %52
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.bdw_rt5677_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @rt5677_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
