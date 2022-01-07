; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_wm1133-ev1.c_wm1133_ev1_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_wm1133-ev1.c_wm1133_ev1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@hp_jack = common dso_local global i32 0, align 4
@hp_jack_pins = common dso_local global i32 0, align 4
@WM8350_JDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@mic_jack = common dso_local global i32 0, align 4
@mic_jack_pins = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @wm1133_ev1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm1133_ev1_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %13 = load i32, i32* @hp_jack_pins, align 4
  %14 = load i32, i32* @hp_jack_pins, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @snd_soc_card_jack_new(%struct.TYPE_4__* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12, i32* @hp_jack, i32 %13, i32 %15)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @WM8350_JDR, align 4
  %19 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %20 = call i32 @wm8350_hp_jack_detect(%struct.snd_soc_component* %17, i32 %18, i32* @hp_jack, i32 %19)
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %25 = load i32, i32* @SND_JACK_BTN_0, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @mic_jack_pins, align 4
  %28 = load i32, i32* @mic_jack_pins, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_card_jack_new(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32* @mic_jack, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %33 = load i32, i32* @SND_JACK_BTN_0, align 4
  %34 = call i32 @wm8350_mic_jack_detect(%struct.snd_soc_component* %31, i32* @mic_jack, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @snd_soc_dapm_force_enable_pin(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @snd_soc_card_jack_new(%struct.TYPE_4__*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8350_hp_jack_detect(%struct.snd_soc_component*, i32, i32*, i32) #1

declare dso_local i32 @wm8350_mic_jack_detect(%struct.snd_soc_component*, i32*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
