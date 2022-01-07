; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_sdm845.c_sdm845_dai_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_sdm845.c_sdm845_dai_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai*, %struct.snd_soc_card* }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.sdm845_snd_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.snd_jack* }
%struct.snd_jack = type { i32, %struct.snd_soc_component* }

@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to add Headphone Jack\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@sdm845_jack_free = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set jack: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @sdm845_dai_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdm845_dai_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.sdm845_snd_data*, align 8
  %9 = alloca %struct.snd_jack*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %12, align 8
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %21 = call %struct.sdm845_snd_data* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %20)
  store %struct.sdm845_snd_data* %21, %struct.sdm845_snd_data** %8, align 8
  %22 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %8, align 8
  %23 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %28 = load i32, i32* @SND_JACK_HEADSET, align 4
  %29 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SND_JACK_BTN_0, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SND_JACK_BTN_1, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SND_JACK_BTN_2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SND_JACK_BTN_3, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %8, align 8
  %40 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %39, i32 0, i32 1
  %41 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.TYPE_3__* %40, i32* null, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %26
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %2, align 4
  br label %112

50:                                               ; preds = %26
  %51 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %8, align 8
  %52 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.snd_jack*, %struct.snd_jack** %53, align 8
  store %struct.snd_jack* %54, %struct.snd_jack** %9, align 8
  %55 = load %struct.snd_jack*, %struct.snd_jack** %9, align 8
  %56 = load i32, i32* @SND_JACK_BTN_0, align 4
  %57 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %58 = call i32 @snd_jack_set_key(%struct.snd_jack* %55, i32 %56, i32 %57)
  %59 = load %struct.snd_jack*, %struct.snd_jack** %9, align 8
  %60 = load i32, i32* @SND_JACK_BTN_1, align 4
  %61 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %62 = call i32 @snd_jack_set_key(%struct.snd_jack* %59, i32 %60, i32 %61)
  %63 = load %struct.snd_jack*, %struct.snd_jack** %9, align 8
  %64 = load i32, i32* @SND_JACK_BTN_2, align 4
  %65 = load i32, i32* @KEY_VOLUMEUP, align 4
  %66 = call i32 @snd_jack_set_key(%struct.snd_jack* %63, i32 %64, i32 %65)
  %67 = load %struct.snd_jack*, %struct.snd_jack** %9, align 8
  %68 = load i32, i32* @SND_JACK_BTN_3, align 4
  %69 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %70 = call i32 @snd_jack_set_key(%struct.snd_jack* %67, i32 %68, i32 %69)
  %71 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %8, align 8
  %72 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %50, %1
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %110 [
    i32 128, label %77
  ]

77:                                               ; preds = %73
  %78 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %8, align 8
  %79 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load %struct.snd_jack*, %struct.snd_jack** %80, align 8
  store %struct.snd_jack* %81, %struct.snd_jack** %9, align 8
  %82 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %82, i32 0, i32 1
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %83, align 8
  store %struct.snd_soc_component* %84, %struct.snd_soc_component** %4, align 8
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %86 = load %struct.snd_jack*, %struct.snd_jack** %9, align 8
  %87 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %86, i32 0, i32 1
  store %struct.snd_soc_component* %85, %struct.snd_soc_component** %87, align 8
  %88 = load i32, i32* @sdm845_jack_free, align 4
  %89 = load %struct.snd_jack*, %struct.snd_jack** %9, align 8
  %90 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %92 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %8, align 8
  %93 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %92, i32 0, i32 1
  %94 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %91, %struct.TYPE_3__* %93, i32* null)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %77
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @ENOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %104 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @dev_warn(i32 %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %112

109:                                              ; preds = %97, %77
  br label %111

110:                                              ; preds = %73
  br label %111

111:                                              ; preds = %110, %109
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %102, %44
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.sdm845_snd_data* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_jack_set_key(%struct.snd_jack*, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
