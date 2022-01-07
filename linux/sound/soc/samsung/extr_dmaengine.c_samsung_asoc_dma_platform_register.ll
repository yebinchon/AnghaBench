; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_dmaengine.c_samsung_asoc_dma_platform_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_dmaengine.c_samsung_asoc_dma_platform_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_dmaengine_pcm_config = type { i8**, %struct.device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_dmaengine_pcm_prepare_slave_config = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SND_DMAENGINE_PCM_FLAG_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @samsung_asoc_dma_platform_register(%struct.device* %0, i32 %1, i8* %2, i8* %3, %struct.device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.device* %4, %struct.device** %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_dmaengine_pcm_config* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.snd_dmaengine_pcm_config* %15, %struct.snd_dmaengine_pcm_config** %12, align 8
  %16 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %17 = icmp ne %struct.snd_dmaengine_pcm_config* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %47

21:                                               ; preds = %5
  %22 = load i32, i32* @snd_dmaengine_pcm_prepare_slave_config, align 4
  %23 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %24 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %27 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %11, align 8
  %29 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %30 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %29, i32 0, i32 1
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %33 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8* %31, i8** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %39 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %37, i8** %42, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %12, align 8
  %45 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_COMPAT, align 4
  %46 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %43, %struct.snd_dmaengine_pcm_config* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %21, %18
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.snd_dmaengine_pcm_config* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, %struct.snd_dmaengine_pcm_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
