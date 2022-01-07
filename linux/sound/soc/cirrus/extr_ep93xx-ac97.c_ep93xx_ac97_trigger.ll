; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.ep93xx_ac97_info = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@AC97TXCR_CM = common dso_local global i32 0, align 4
@AC97TXCR_TX3 = common dso_local global i32 0, align 4
@AC97TXCR_TX4 = common dso_local global i32 0, align 4
@AC97TXCR_TEN = common dso_local global i32 0, align 4
@AC97RXCR_CM = common dso_local global i32 0, align 4
@AC97RXCR_RX3 = common dso_local global i32 0, align 4
@AC97RXCR_RX4 = common dso_local global i32 0, align 4
@AC97RXCR_REN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AC97_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"TX timeout\0A\00", align 1
@AC97SR_TXFE = common dso_local global i32 0, align 4
@AC97SR_TXUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown command %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @ep93xx_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.ep93xx_ac97_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.ep93xx_ac97_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.ep93xx_ac97_info* %12, %struct.ep93xx_ac97_info** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %94 [
    i32 130, label %14
    i32 131, label %14
    i32 132, label %14
    i32 129, label %53
    i32 128, label %53
    i32 133, label %53
  ]

14:                                               ; preds = %3, %3, %3
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* @AC97TXCR_CM, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @AC97TXCR_TX3, align 4
  %25 = load i32, i32* @AC97TXCR_TX4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @AC97TXCR_TEN, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %33 = call i32 @AC97TXCR(i32 1)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %32, i32 %33, i32 %34)
  br label %52

36:                                               ; preds = %14
  %37 = load i32, i32* @AC97RXCR_CM, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @AC97RXCR_RX3, align 4
  %41 = load i32, i32* @AC97RXCR_RX4, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @AC97RXCR_REN, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %49 = call i32 @AC97RXCR(i32 1)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %36, %20
  br label %102

53:                                               ; preds = %3, %3, %3
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %53
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* @AC97_TIMEOUT, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %77, %59
  %64 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %65 = call i32 @AC97SR(i32 1)
  %66 = call i32 @ep93xx_ac97_read_reg(%struct.ep93xx_ac97_info* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @time_after(i64 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %73 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_warn(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %85

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @AC97SR_TXFE, align 4
  %80 = load i32, i32* @AC97SR_TXUE, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %63, label %85

85:                                               ; preds = %77, %71
  %86 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %87 = call i32 @AC97TXCR(i32 1)
  %88 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %86, i32 %87, i32 0)
  br label %93

89:                                               ; preds = %53
  %90 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %91 = call i32 @AC97RXCR(i32 1)
  %92 = call i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info* %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %89, %85
  br label %102

94:                                               ; preds = %3
  %95 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %8, align 8
  %96 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, ...) @dev_warn(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %93, %52
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %94
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.ep93xx_ac97_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @ep93xx_ac97_write_reg(%struct.ep93xx_ac97_info*, i32, i32) #1

declare dso_local i32 @AC97TXCR(i32) #1

declare dso_local i32 @AC97RXCR(i32) #1

declare dso_local i32 @ep93xx_ac97_read_reg(%struct.ep93xx_ac97_info*, i32) #1

declare dso_local i32 @AC97SR(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
