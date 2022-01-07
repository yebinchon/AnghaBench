; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_component = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@lpass_platform_pcm_hardware = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot allocate buffer(s)\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @lpass_platform_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm*, %struct.snd_pcm** %11, align 8
  store %struct.snd_pcm* %12, %struct.snd_pcm** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpass_platform_pcm_hardware, i32 0, i32 0), align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %24, align 8
  store %struct.snd_pcm_substream* %25, %struct.snd_pcm_substream** %5, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = icmp ne %struct.snd_pcm_substream* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %1
  %29 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = call i32 @snd_dma_alloc_pages(i32 %29, i32 %32, i64 %33, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %52, align 8
  store %struct.snd_pcm_substream* %53, %struct.snd_pcm_substream** %6, align 8
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %55 = icmp ne %struct.snd_pcm_substream* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %46
  %57 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %62, i32 0, i32 0
  %64 = call i32 @snd_dma_alloc_pages(i32 %57, i32 %60, i64 %61, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %56
  %68 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %69 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %73 = icmp ne %struct.snd_pcm_substream* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = call i32 @snd_dma_free_pages(i32* %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80, %46
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %39
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
