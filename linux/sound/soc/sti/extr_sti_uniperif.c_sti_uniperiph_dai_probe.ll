; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.sti_uniperiph_dai }
%struct.sti_uniperiph_dai = type { i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @sti_uniperiph_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_uniperiph_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.sti_uniperiph_data*, align 8
  %4 = alloca %struct.sti_uniperiph_dai*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %5)
  store %struct.sti_uniperiph_data* %6, %struct.sti_uniperiph_data** %3, align 8
  %7 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %3, align 8
  %8 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %7, i32 0, i32 0
  store %struct.sti_uniperiph_dai* %8, %struct.sti_uniperiph_dai** %4, align 8
  %9 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %3, align 8
  %10 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %17 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %4, align 8
  %18 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %17, i32 0, i32 1
  %19 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %16, %struct.TYPE_5__* %18, %struct.TYPE_5__* null)
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %22 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %4, align 8
  %23 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %22, i32 0, i32 1
  %24 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %21, %struct.TYPE_5__* null, %struct.TYPE_5__* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %4, align 8
  %27 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %4, align 8
  %32 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %35 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %4, align 8
  %36 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %39 = call i32 @sti_uniperiph_dai_create_ctrl(%struct.snd_soc_dai* %38)
  ret i32 %39
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @sti_uniperiph_dai_create_ctrl(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
