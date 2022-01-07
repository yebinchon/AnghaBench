; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-toddr.c_axg_toddr_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-toddr.c_axg_toddr_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_fifo = type { i32, i32 }

@FIFO_CTRL0 = common dso_local global i32 0, align 4
@CTRL0_TODDR_SEL_RESAMPLE = common dso_local global i32 0, align 4
@CTRL0_TODDR_EXT_SIGNED = common dso_local global i32 0, align 4
@CTRL0_TODDR_PP_MODE = common dso_local global i32 0, align 4
@AXG_FIFO_MIN_CNT = common dso_local global i32 0, align 4
@FIFO_CTRL1 = common dso_local global i32 0, align 4
@CTRL1_THRESHOLD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @axg_toddr_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_toddr_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.axg_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = call %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.axg_fifo* %10, %struct.axg_fifo** %6, align 8
  %11 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %12 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %21 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FIFO_CTRL0, align 4
  %24 = load i32, i32* @CTRL0_TODDR_SEL_RESAMPLE, align 4
  %25 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %27 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FIFO_CTRL0, align 4
  %30 = load i32, i32* @CTRL0_TODDR_EXT_SIGNED, align 4
  %31 = load i32, i32* @CTRL0_TODDR_EXT_SIGNED, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %34 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FIFO_CTRL0, align 4
  %37 = load i32, i32* @CTRL0_TODDR_PP_MODE, align 4
  %38 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* @AXG_FIFO_MIN_CNT, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %42 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FIFO_CTRL1, align 4
  %45 = load i32, i32* @CTRL1_THRESHOLD_MASK, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @CTRL1_THRESHOLD(i32 %46)
  %48 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %19, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CTRL1_THRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
