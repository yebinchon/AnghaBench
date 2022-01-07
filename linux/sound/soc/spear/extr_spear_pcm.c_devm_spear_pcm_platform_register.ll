; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spear_pcm.c_devm_spear_pcm_platform_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spear_pcm.c_devm_spear_pcm_platform_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_pcm_config = type { i32 (%struct.dma_chan*, i8*)* }
%struct.dma_chan = type opaque
%struct.device = type { i32 }
%struct.dma_chan.0 = type opaque

@spear_dmaengine_pcm_config = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 8
@SND_DMAENGINE_PCM_FLAG_NO_DT = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_spear_pcm_platform_register(%struct.device* %0, %struct.snd_dmaengine_pcm_config* %1, i32 (%struct.dma_chan.0*, i8*)* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %6 = alloca i32 (%struct.dma_chan.0*, i8*)*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_dmaengine_pcm_config* %1, %struct.snd_dmaengine_pcm_config** %5, align 8
  store i32 (%struct.dma_chan.0*, i8*)* %2, i32 (%struct.dma_chan.0*, i8*)** %6, align 8
  %7 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %5, align 8
  %8 = bitcast %struct.snd_dmaengine_pcm_config* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.snd_dmaengine_pcm_config* @spear_dmaengine_pcm_config to i8*), i64 8, i1 false)
  %9 = load i32 (%struct.dma_chan.0*, i8*)*, i32 (%struct.dma_chan.0*, i8*)** %6, align 8
  %10 = bitcast i32 (%struct.dma_chan.0*, i8*)* %9 to i32 (%struct.dma_chan*, i8*)*
  %11 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %5, align 8
  %12 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %11, i32 0, i32 0
  store i32 (%struct.dma_chan*, i8*)* %10, i32 (%struct.dma_chan*, i8*)** %12, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %5, align 8
  %15 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_NO_DT, align 4
  %16 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_COMPAT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %13, %struct.snd_dmaengine_pcm_config* %14, i32 %17)
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, %struct.snd_dmaengine_pcm_config*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
