; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_compr_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.vm_area_struct*)* @q6asm_dai_compr_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_mmap(%struct.snd_compr_stream* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.snd_compr_runtime*, align 8
  %6 = alloca %struct.q6asm_dai_rtd*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %10, i32 0, i32 1
  %12 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %11, align 8
  store %struct.snd_compr_runtime* %12, %struct.snd_compr_runtime** %5, align 8
  %13 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %13, i32 0, i32 0
  %15 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %14, align 8
  store %struct.q6asm_dai_rtd* %15, %struct.q6asm_dai_rtd** %6, align 8
  %16 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %7, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %20 = load i32, i32* @DRV_NAME, align 4
  %21 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %19, i32 %20)
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %8, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %9, align 8
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %28 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %32 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %36 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_mmap_coherent(%struct.device* %25, %struct.vm_area_struct* %26, i32 %30, i32 %34, i32 %38)
  ret i32 %39
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dma_mmap_coherent(%struct.device*, %struct.vm_area_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
