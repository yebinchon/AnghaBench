; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-frddr.c_axg_frddr_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-frddr.c_axg_frddr_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_fifo = type { i32, i32 }

@FIFO_CTRL0 = common dso_local global i32 0, align 4
@CTRL0_FRDDR_PP_MODE = common dso_local global i32 0, align 4
@AXG_FIFO_MIN_CNT = common dso_local global i32 0, align 4
@FIFO_CTRL1 = common dso_local global i32 0, align 4
@CTRL1_FRDDR_DEPTH_MASK = common dso_local global i32 0, align 4
@CTRL1_THRESHOLD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @axg_frddr_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_frddr_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.axg_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.axg_fifo* %11, %struct.axg_fifo** %6, align 8
  %12 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %13 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %22 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FIFO_CTRL0, align 4
  %25 = load i32, i32* @CTRL0_FRDDR_PP_MODE, align 4
  %26 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @AXG_FIFO_MIN_CNT, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @AXG_FIFO_MIN_CNT, align 4
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %33 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FIFO_CTRL1, align 4
  %36 = load i32, i32* @CTRL1_FRDDR_DEPTH_MASK, align 4
  %37 = load i32, i32* @CTRL1_THRESHOLD_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @CTRL1_FRDDR_DEPTH(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @CTRL1_THRESHOLD(i32 %41)
  %43 = or i32 %40, %42
  %44 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %38, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %20, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CTRL1_FRDDR_DEPTH(i32) #1

declare dso_local i32 @CTRL1_THRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
