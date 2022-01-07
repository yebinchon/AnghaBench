; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-dma.c_imx_pcm_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-dma.c_imx_pcm_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_pcm_config = type { i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_dmaengine_pcm_config = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 4
@SND_DMAENGINE_PCM_FLAG_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_pcm_dma_init(%struct.platform_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_dmaengine_pcm_config* @devm_kzalloc(i32* %8, i32 4, i32 %9)
  store %struct.snd_dmaengine_pcm_config* %10, %struct.snd_dmaengine_pcm_config** %6, align 8
  %11 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %12 = icmp ne %struct.snd_dmaengine_pcm_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %18 = bitcast %struct.snd_dmaengine_pcm_config* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.snd_dmaengine_pcm_config* @imx_dmaengine_pcm_config to i8*), i64 4, i1 false)
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %22 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_COMPAT, align 4
  %23 = call i32 @devm_snd_dmaengine_pcm_register(i32* %20, %struct.snd_dmaengine_pcm_config* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.snd_dmaengine_pcm_config* @devm_kzalloc(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_snd_dmaengine_pcm_register(i32*, %struct.snd_dmaengine_pcm_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
