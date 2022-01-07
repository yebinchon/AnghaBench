; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_ttc-dkb.c_ttc_pm860x_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_ttc-dkb.c_ttc_pm860x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@hs_jack = common dso_local global i32 0, align 4
@hs_jack_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Microphone Jack\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@mic_jack = common dso_local global i32 0, align 4
@mic_jack_pins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @ttc_pm860x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttc_pm860x_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %13 = load i32, i32* @SND_JACK_BTN_0, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SND_JACK_BTN_1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SND_JACK_BTN_2, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @hs_jack_pins, align 4
  %20 = load i32, i32* @hs_jack_pins, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @snd_soc_card_jack_new(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i32* @hs_jack, i32 %19, i32 %21)
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %27 = load i32, i32* @mic_jack_pins, align 4
  %28 = load i32, i32* @mic_jack_pins, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_card_jack_new(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32* @mic_jack, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %33 = load i32, i32* @SND_JACK_BTN_0, align 4
  %34 = load i32, i32* @SND_JACK_BTN_1, align 4
  %35 = load i32, i32* @SND_JACK_BTN_2, align 4
  %36 = call i32 @pm860x_hs_jack_detect(%struct.snd_soc_component* %31, i32* @hs_jack, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %39 = call i32 @pm860x_mic_jack_detect(%struct.snd_soc_component* %37, i32* @hs_jack, i32 %38)
  ret i32 0
}

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pm860x_hs_jack_detect(%struct.snd_soc_component*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pm860x_mic_jack_detect(%struct.snd_soc_component*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
