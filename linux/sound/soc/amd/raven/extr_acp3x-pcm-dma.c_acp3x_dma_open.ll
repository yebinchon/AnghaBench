; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dma_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { %struct.i2s_stream_instance*, i32 }
%struct.i2s_stream_instance = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.i2s_dev_data = type { i64, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }

@DRV_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@acp3x_pcm_hardware_playback = common dso_local global i32 0, align 4
@acp3x_pcm_hardware_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"set integer constraint failed\0A\00", align 1
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp3x_dma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_dma_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.i2s_dev_data*, align 8
  %9 = alloca %struct.i2s_stream_instance*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 2
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load i32, i32* @DRV_NAME, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %16, i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %7, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.i2s_dev_data* @dev_get_drvdata(i32 %21)
  store %struct.i2s_dev_data* %22, %struct.i2s_dev_data** %8, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.i2s_stream_instance* @kzalloc(i32 8, i32 %23)
  store %struct.i2s_stream_instance* %24, %struct.i2s_stream_instance** %9, align 8
  %25 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %26 = icmp ne %struct.i2s_stream_instance* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %98

30:                                               ; preds = %1
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @acp3x_pcm_hardware_playback, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @acp3x_pcm_hardware_capture, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %47 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %56 = call i32 @kfree(%struct.i2s_stream_instance* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %98

58:                                               ; preds = %44
  %59 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %8, align 8
  %60 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %59, i32 0, i32 2
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %60, align 8
  %62 = icmp ne %struct.snd_pcm_substream* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %8, align 8
  %65 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %64, i32 0, i32 1
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %65, align 8
  %67 = icmp ne %struct.snd_pcm_substream* %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %8, align 8
  %70 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @mmACP_EXTERNAL_INTR_ENB, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @rv_writel(i32 1, i64 %73)
  br label %75

75:                                               ; preds = %68, %63, %58
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %83 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %8, align 8
  %84 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %83, i32 0, i32 2
  store %struct.snd_pcm_substream* %82, %struct.snd_pcm_substream** %84, align 8
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %87 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %8, align 8
  %88 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %87, i32 0, i32 1
  store %struct.snd_pcm_substream* %86, %struct.snd_pcm_substream** %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %8, align 8
  %91 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %94 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %9, align 8
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %96, i32 0, i32 0
  store %struct.i2s_stream_instance* %95, %struct.i2s_stream_instance** %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %89, %50, %27
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.i2s_dev_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.i2s_stream_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.i2s_stream_instance*) #1

declare dso_local i32 @rv_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
