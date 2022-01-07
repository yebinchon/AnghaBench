; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta529.c_sta529_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta529.c_sta529_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unsupported format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unsupported rate\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@STA529_S2PCFG1 = common dso_local global i32 0, align 4
@PDATA_LEN_MSK = common dso_local global i32 0, align 4
@BCLK_TO_FS_MSK = common dso_local global i32 0, align 4
@STA529_MISC = common dso_local global i32 0, align 4
@PLAY_FREQ_RANGE_MSK = common dso_local global i32 0, align 4
@STA529_P2SCFG1 = common dso_local global i32 0, align 4
@CAP_FREQ_RANGE_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @sta529_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta529_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i32 @params_width(%struct.snd_pcm_hw_params* %16)
  switch i32 %17, label %21 [
    i32 16, label %18
    i32 24, label %19
    i32 32, label %20
  ]

18:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %28

19:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %28

20:                                               ; preds = %3
  store i32 3, i32* %9, align 4
  store i32 2, i32* %12, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %20, %19, %18
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_rate(%struct.snd_pcm_hw_params* %29)
  switch i32 %30, label %34 [
    i32 8000, label %31
    i32 11025, label %31
    i32 16000, label %32
    i32 22050, label %32
    i32 32000, label %33
    i32 44100, label %33
    i32 48000, label %33
  ]

31:                                               ; preds = %28, %28
  store i32 0, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %41

32:                                               ; preds = %28, %28
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %41

33:                                               ; preds = %28, %28, %28
  store i32 2, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %41

34:                                               ; preds = %28
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %86

41:                                               ; preds = %33, %32, %31
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %49 = load i32, i32* @STA529_S2PCFG1, align 4
  %50 = load i32, i32* @PDATA_LEN_MSK, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 6
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = load i32, i32* @STA529_S2PCFG1, align 4
  %56 = load i32, i32* @BCLK_TO_FS_MSK, align 4
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %61 = load i32, i32* @STA529_MISC, align 4
  %62 = load i32, i32* @PLAY_FREQ_RANGE_MSK, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %64)
  br label %85

66:                                               ; preds = %41
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = load i32, i32* @STA529_P2SCFG1, align 4
  %69 = load i32, i32* @PDATA_LEN_MSK, align 4
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 6
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %74 = load i32, i32* @STA529_P2SCFG1, align 4
  %75 = load i32, i32* @BCLK_TO_FS_MSK, align 4
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 %76, 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 %75, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = load i32, i32* @STA529_MISC, align 4
  %81 = load i32, i32* @CAP_FREQ_RANGE_MSK, align 4
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 2
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %66, %47
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %34, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
