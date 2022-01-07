; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-max98090.c_mt8173_max98090_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-max98090.c_mt8173_max98090_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__*, %struct.snd_soc_card* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@mt8173_max98090_jack = common dso_local global i32 0, align 4
@mt8173_max98090_jack_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't create a new Jack %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @mt8173_max98090_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_max98090_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  store %struct.snd_soc_card* %9, %struct.snd_soc_card** %5, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %6, align 8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %16 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %17 = load i32, i32* @mt8173_max98090_jack_pins, align 4
  %18 = load i32, i32* @mt8173_max98090_jack_pins, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32* @mt8173_max98090_jack, i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %32 = call i32 @max98090_mic_detect(%struct.snd_soc_component* %31, i32* @mt8173_max98090_jack)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max98090_mic_detect(%struct.snd_soc_component*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
