; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.adau1977 = type { i32, i32, i64, i32, i64 }

@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @adau1977_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.adau1977*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.adau1977* @snd_soc_component_get_drvdata(i32 %9)
  store %struct.adau1977* %10, %struct.adau1977** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %12 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %17 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_BE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %21 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %26 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 24
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %31 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_BE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_LE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_BE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %24
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %43 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %44 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %43, i32 0, i32 3
  %45 = call i32 @snd_pcm_hw_constraint_list(i32 %41, i32 0, i32 %42, i32* %44)
  %46 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %47 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %55 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %56 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_pcm_hw_constraint_minmax(i32 %53, i32 %54, i32 8000, i32 %57)
  br label %59

59:                                               ; preds = %50, %38
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @snd_pcm_hw_constraint_mask64(i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %59
  ret i32 0
}

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_mask64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
