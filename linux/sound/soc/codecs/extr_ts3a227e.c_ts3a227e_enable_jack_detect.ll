; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.ts3a227e = type { %struct.snd_soc_jack* }

@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.ts3a227e*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.ts3a227e* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ts3a227e* %7, %struct.ts3a227e** %5, align 8
  %8 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SND_JACK_BTN_0, align 4
  %12 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %13 = call i32 @snd_jack_set_key(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SND_JACK_BTN_1, align 4
  %18 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %19 = call i32 @snd_jack_set_key(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SND_JACK_BTN_2, align 4
  %24 = load i32, i32* @KEY_VOLUMEUP, align 4
  %25 = call i32 @snd_jack_set_key(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %27 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SND_JACK_BTN_3, align 4
  %30 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %31 = call i32 @snd_jack_set_key(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %33 = load %struct.ts3a227e*, %struct.ts3a227e** %5, align 8
  %34 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %33, i32 0, i32 0
  store %struct.snd_soc_jack* %32, %struct.snd_soc_jack** %34, align 8
  %35 = load %struct.ts3a227e*, %struct.ts3a227e** %5, align 8
  %36 = call i32 @ts3a227e_jack_report(%struct.ts3a227e* %35)
  ret i32 0
}

declare dso_local %struct.ts3a227e* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @ts3a227e_jack_report(%struct.ts3a227e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
