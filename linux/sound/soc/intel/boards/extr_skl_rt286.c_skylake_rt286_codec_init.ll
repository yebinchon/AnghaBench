; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_rt286.c_skylake_rt286_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_rt286.c_skylake_rt286_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@skylake_headset = common dso_local global i32 0, align 4
@skylake_headset_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SoC DMIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @skylake_rt286_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skylake_rt286_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %6 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @SND_JACK_HEADSET, align 4
  %15 = load i32, i32* @SND_JACK_BTN_0, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @skylake_headset_pins, align 4
  %18 = load i32, i32* @skylake_headset_pins, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @snd_soc_card_jack_new(%struct.TYPE_4__* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16, i32* @skylake_headset, i32 %17, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = call i32 @rt286_mic_detect(%struct.snd_soc_component* %26, i32* @skylake_headset)
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @snd_soc_dapm_ignore_suspend(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @snd_soc_card_jack_new(%struct.TYPE_4__*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rt286_mic_detect(%struct.snd_soc_component*, i32*) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
