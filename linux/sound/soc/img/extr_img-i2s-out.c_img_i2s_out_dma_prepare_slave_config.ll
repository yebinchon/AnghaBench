; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_dma_prepare_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_dma_prepare_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*)* @img_i2s_out_dma_prepare_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_out_dma_prepare_slave_config(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %7, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %13 = call i32 @params_channels(%struct.snd_pcm_hw_params* %12)
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %9, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(i32 %20, %struct.snd_pcm_substream* %21)
  store %struct.snd_dmaengine_dai_dma_data* %22, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %26 = call i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream* %23, %struct.snd_pcm_hw_params* %24, %struct.dma_slave_config* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %33 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %38 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul i32 4, %42
  %44 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %45 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %31, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
