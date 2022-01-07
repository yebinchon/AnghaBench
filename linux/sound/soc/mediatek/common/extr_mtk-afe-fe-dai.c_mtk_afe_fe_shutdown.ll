; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_afe_fe_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_afe_fe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mtk_base_afe_memif* }
%struct.mtk_base_afe_memif = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_afe_fe_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mtk_base_afe_memif*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.mtk_base_afe* %13, %struct.mtk_base_afe** %6, align 8
  %14 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %14, i32 0, i32 1
  %16 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %15, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %16, i64 %21
  store %struct.mtk_base_afe_memif* %22, %struct.mtk_base_afe_memif** %7, align 8
  %23 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %24 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %30 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mtk_regmap_update_bits(i32 %28, i32 %33, i32 1, i32 1, i32 %38)
  %40 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %41 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %2
  %45 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mtk_dynamic_irq_release(%struct.mtk_base_afe* %45, i32 %46)
  %48 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %49 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %51 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %2
  ret void
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mtk_regmap_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_dynamic_irq_release(%struct.mtk_base_afe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
