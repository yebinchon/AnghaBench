; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_out_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_out_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.spdif_out_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPDIF_OUT_CTRL = common dso_local global i64 0, align 8
@SPDIF_OPMODE_MASK = common dso_local global i32 0, align 4
@SPDIF_OPMODE_AUD_DATA = common dso_local global i32 0, align 4
@SPDIF_STATE_NORMAL = common dso_local global i32 0, align 4
@SPDIF_OPMODE_MUTE_PCM = common dso_local global i32 0, align 4
@SPDIF_OPMODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @spdif_out_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_out_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.spdif_out_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.spdif_out_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.spdif_out_dev* %12, %struct.spdif_out_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %78 [
    i32 130, label %23
    i32 131, label %23
    i32 132, label %23
    i32 129, label %57
    i32 128, label %57
    i32 133, label %57
  ]

23:                                               ; preds = %21, %21, %21
  %24 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %8, align 8
  %25 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @SPDIF_OPMODE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %8, align 8
  %35 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %23
  %40 = load i32, i32* @SPDIF_OPMODE_AUD_DATA, align 4
  %41 = load i32, i32* @SPDIF_STATE_NORMAL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %49

45:                                               ; preds = %23
  %46 = load i32, i32* @SPDIF_OPMODE_MUTE_PCM, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %8, align 8
  %52 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %81

57:                                               ; preds = %21, %21, %21
  %58 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %8, align 8
  %59 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @SPDIF_OPMODE_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @SPDIF_OPMODE_OFF, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %8, align 8
  %73 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  br label %81

78:                                               ; preds = %21
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %57, %49
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.spdif_out_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
