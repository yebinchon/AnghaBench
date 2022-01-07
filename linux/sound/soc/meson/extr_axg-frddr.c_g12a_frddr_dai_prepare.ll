; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-frddr.c_g12a_frddr_dai_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-frddr.c_g12a_frddr_dai_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_fifo = type { i32 }

@FIFO_CTRL1 = common dso_local global i32 0, align 4
@CTRL1_FRDDR_FORCE_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @g12a_frddr_dai_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_frddr_dai_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.axg_fifo*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = call %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.axg_fifo* %7, %struct.axg_fifo** %5, align 8
  %8 = load %struct.axg_fifo*, %struct.axg_fifo** %5, align 8
  %9 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FIFO_CTRL1, align 4
  %12 = load i32, i32* @CTRL1_FRDDR_FORCE_FINISH, align 4
  %13 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.axg_fifo*, %struct.axg_fifo** %5, align 8
  %15 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FIFO_CTRL1, align 4
  %18 = load i32, i32* @CTRL1_FRDDR_FORCE_FINISH, align 4
  %19 = load i32, i32* @CTRL1_FRDDR_FORCE_FINISH, align 4
  %20 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.axg_fifo*, %struct.axg_fifo** %5, align 8
  %22 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FIFO_CTRL1, align 4
  %25 = load i32, i32* @CTRL1_FRDDR_FORCE_FINISH, align 4
  %26 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 0)
  ret i32 0
}

declare dso_local %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
