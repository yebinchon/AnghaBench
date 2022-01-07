; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@L_IVC = common dso_local global i32 0, align 4
@R_IVC = common dso_local global i32 0, align 4
@SG_SL1 = common dso_local global i32 0, align 4
@PMMP = common dso_local global i32 0, align 4
@MGAIN0 = common dso_local global i32 0, align 4
@TIMER = common dso_local global i32 0, align 4
@ALC_CTL1 = common dso_local global i32 0, align 4
@ALC = common dso_local global i32 0, align 4
@LMTH0 = common dso_local global i32 0, align 4
@PW_MGMT1 = common dso_local global i32 0, align 4
@PMADL = common dso_local global i32 0, align 4
@PW_MGMT3 = common dso_local global i32 0, align 4
@PMADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ak4642_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4642_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = load i32, i32* @L_IVC, align 4
  %21 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %19, i32 %20, i32 145)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = load i32, i32* @R_IVC, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %22, i32 %23, i32 145)
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %27 = load i32, i32* @SG_SL1, align 4
  %28 = load i32, i32* @PMMP, align 4
  %29 = load i32, i32* @MGAIN0, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PMMP, align 4
  %32 = load i32, i32* @MGAIN0, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = load i32, i32* @TIMER, align 4
  %37 = call i32 @ZTM(i32 3)
  %38 = call i32 @WTM(i32 3)
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %42 = load i32, i32* @ALC_CTL1, align 4
  %43 = load i32, i32* @ALC, align 4
  %44 = load i32, i32* @LMTH0, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 %45)
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %48 = load i32, i32* @PW_MGMT1, align 4
  %49 = load i32, i32* @PMADL, align 4
  %50 = load i32, i32* @PMADL, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %53 = load i32, i32* @PW_MGMT3, align 4
  %54 = load i32, i32* @PMADR, align 4
  %55 = load i32, i32* @PMADR, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %25, %18
  ret i32 0
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ZTM(i32) #1

declare dso_local i32 @WTM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
