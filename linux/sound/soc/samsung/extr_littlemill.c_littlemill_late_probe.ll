; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_littlemill.c_littlemill_late_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_littlemill.c_littlemill_late_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8994_SYSCLK_MCLK2 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_MECHANICAL = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_BTN_4 = common dso_local global i32 0, align 4
@SND_JACK_BTN_5 = common dso_local global i32 0, align 4
@littlemill_headset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @littlemill_late_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @littlemill_late_probe(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %9, i32 %15)
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %5, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 1
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %23, align 8
  store %struct.snd_soc_dai* %24, %struct.snd_soc_dai** %6, align 8
  %25 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %27 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %25, i32 %31)
  store %struct.snd_soc_pcm_runtime* %32, %struct.snd_soc_pcm_runtime** %4, align 8
  %33 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %33, i32 0, i32 0
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %34, align 8
  store %struct.snd_soc_dai* %35, %struct.snd_soc_dai** %7, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %37 = load i32, i32* @WM8994_SYSCLK_MCLK2, align 4
  %38 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %39 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %36, i32 %37, i32 32768, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %80

44:                                               ; preds = %1
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %46 = load i32, i32* @WM8994_SYSCLK_MCLK2, align 4
  %47 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %48 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %45, i32 %46, i32 32768, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %80

53:                                               ; preds = %44
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %55 = load i32, i32* @SND_JACK_HEADSET, align 4
  %56 = load i32, i32* @SND_JACK_MECHANICAL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SND_JACK_BTN_0, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SND_JACK_BTN_1, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SND_JACK_BTN_2, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SND_JACK_BTN_3, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SND_JACK_BTN_4, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SND_JACK_BTN_5, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %69, i32* @littlemill_headset, i32* null, i32 0)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %53
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %77 = call i32 @wm8958_mic_detect(%struct.snd_soc_component* %76, i32* @littlemill_headset, i32* null, i32* null, i32* null, i32* null)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %79 = call i32 @wm8994_mic_detect(%struct.snd_soc_component* %78, i32* @littlemill_headset, i32 1)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73, %51, %42
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @wm8958_mic_detect(%struct.snd_soc_component*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @wm8994_mic_detect(%struct.snd_soc_component*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
