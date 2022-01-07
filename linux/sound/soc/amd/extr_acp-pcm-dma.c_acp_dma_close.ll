; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { %struct.audio_substream_data* }
%struct.audio_substream_data = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.audio_drv_data = type { i32, i32*, i32*, i32*, i32*, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CHIP_STONEY = common dso_local global i32 0, align 4
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp_dma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_dma_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.audio_substream_data*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.audio_drv_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 2
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.audio_substream_data*, %struct.audio_substream_data** %13, align 8
  store %struct.audio_substream_data* %14, %struct.audio_substream_data** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load i32, i32* @DRV_NAME, align 4
  %20 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %18, i32 %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %7, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.audio_drv_data* @dev_get_drvdata(i32 %23)
  store %struct.audio_drv_data* %24, %struct.audio_drv_data** %8, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %1
  %31 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %32 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %37
  ]

34:                                               ; preds = %30
  %35 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %36 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %61

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %30, %37
  %39 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %40 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %42 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CHIP_STONEY, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %3, align 4
  %49 = icmp sle i32 %48, 4
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %52 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @acp_set_sram_bank_state(i32 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %47

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %34
  br label %94

62:                                               ; preds = %1
  %63 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %64 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %70 [
    i32 129, label %66
    i32 128, label %69
  ]

66:                                               ; preds = %62
  %67 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %68 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  br label %93

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %62, %69
  %71 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %72 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %74 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CHIP_STONEY, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  store i32 5, i32* %3, align 4
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i32, i32* %3, align 4
  %81 = icmp sle i32 %80, 8
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %84 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @acp_set_sram_bank_state(i32 %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %79

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %61
  %95 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %96 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %94
  %100 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %101 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %99
  %105 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %106 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %111 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load %struct.audio_drv_data*, %struct.audio_drv_data** %8, align 8
  %116 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @mmACP_EXTERNAL_INTR_ENB, align 4
  %119 = call i32 @acp_reg_write(i32 0, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %109, %104, %99, %94
  %121 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %122 = call i32 @kfree(%struct.audio_substream_data* %121)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.audio_drv_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @acp_set_sram_bank_state(i32, i32, i32) #1

declare dso_local i32 @acp_reg_write(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.audio_substream_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
