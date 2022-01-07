; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5660.c_kabylake_rt5660_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5660.c_kabylake_rt5660_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.kbl_codec_private = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@acpi_rt5660_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to add driver gpios\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lineout-mute\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't find GPIO_MUTE# gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Lineout Jack\00", align 1
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@lineout_jack = common dso_local global i32 0, align 4
@lineout_jack_pin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't create Lineout jack\0A\00", align 1
@lineout_jack_gpio = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't add Lineout jack gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@mic_jack = common dso_local global i32 0, align 4
@mic_jack_pin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Can't create mic jack\0A\00", align 1
@mic_jack_gpio = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Can't add mic jack gpio\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"BST1\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"BST2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @kabylake_rt5660_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_rt5660_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kbl_codec_private*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.kbl_codec_private* @snd_soc_card_get_drvdata(i32 %10)
  store %struct.kbl_codec_private* %11, %struct.kbl_codec_private** %5, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %17)
  store %struct.snd_soc_dapm_context* %18, %struct.snd_soc_dapm_context** %7, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @acpi_rt5660_gpios, align 4
  %23 = call i32 @devm_acpi_dev_add_driver_gpios(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %36 = call i32 @devm_gpiod_get(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %5, align 8
  %38 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %5, align 8
  %40 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %5, align 8
  %50 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %112

53:                                               ; preds = %31
  %54 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %58 = call i32 @snd_soc_card_jack_new(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32* @lineout_jack, i32* @lineout_jack_pin, i32 1)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %79

66:                                               ; preds = %53
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lineout_jack_gpio, i32 0, i32 0), align 4
  %70 = call i32 @snd_soc_jack_add_gpios(i32* @lineout_jack, i32 1, %struct.TYPE_6__* @lineout_jack_gpio)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %66
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %81 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %84 = call i32 @snd_soc_card_jack_new(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32* @mic_jack, i32* @mic_jack_pin, i32 1)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_warn(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %105

92:                                               ; preds = %79
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mic_jack_gpio, i32 0, i32 0), align 4
  %96 = call i32 @snd_soc_jack_add_gpios(i32* @mic_jack, i32 1, %struct.TYPE_6__* @mic_jack_gpio)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %87
  %106 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %107 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %108 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %109 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %110 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %111 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %44
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.kbl_codec_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @devm_gpiod_get(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
