; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_irq_fs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_irq_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.mtk_base_afe = type { i32 }

@AFE_PCM_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @mt8183_irq_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8183_irq_fs(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.mtk_base_afe*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %5, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load i32, i32* @AFE_PCM_NAME, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %11, i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.mtk_base_afe* %15, %struct.mtk_base_afe** %7, align 8
  %16 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %17 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mt8183_general_rate_transform(i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.mtk_base_afe* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mt8183_general_rate_transform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
