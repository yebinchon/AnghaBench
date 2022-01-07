; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_rx51.c_rx51_aic34_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_rx51.c_rx51_aic34_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.rx51_audio_pdata = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"TPA6130A2 Headphone Playback Volume\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to add MCBSP controls\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"AV Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_VIDEOOUT = common dso_local global i32 0, align 4
@rx51_av_jack = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to add AV Jack\0A\00", align 1
@rx51_av_jack_gpios = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to add GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @rx51_aic34_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx51_aic34_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.rx51_audio_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  store %struct.snd_soc_card* %9, %struct.snd_soc_card** %4, align 8
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %11 = call %struct.rx51_audio_pdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %10)
  store %struct.rx51_audio_pdata* %11, %struct.rx51_audio_pdata** %5, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %13 = call i32 @snd_soc_limit_volume(%struct.snd_soc_card* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 42)
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = call i32 @omap_mcbsp_st_add_controls(%struct.snd_soc_pcm_runtime* %14, i32 2)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %26, align 8
  %28 = load i32, i32* @SND_JACK_HEADSET, align 4
  %29 = load i32, i32* @SND_JACK_VIDEOOUT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32* @rx51_av_jack, i32* null, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %69

40:                                               ; preds = %24
  %41 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %5, align 8
  %42 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @desc_to_gpio(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rx51_av_jack_gpios, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %49 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %5, align 8
  %52 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @devm_gpiod_put(i32 %50, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rx51_av_jack_gpios, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rx51_av_jack_gpios, align 8
  %58 = call i32 @snd_soc_jack_add_gpios(i32* @rx51_av_jack, i32 %56, %struct.TYPE_4__* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %40
  %62 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %63 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %40
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %61, %34, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.rx51_audio_pdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_limit_volume(%struct.snd_soc_card*, i8*, i32) #1

declare dso_local i32 @omap_mcbsp_st_add_controls(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @desc_to_gpio(i32) #1

declare dso_local i32 @devm_gpiod_put(i32, i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
