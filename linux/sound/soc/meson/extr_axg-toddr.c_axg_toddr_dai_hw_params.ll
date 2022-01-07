; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-toddr.c_axg_toddr_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-toddr.c_axg_toddr_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_fifo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FIFO_CTRL0 = common dso_local global i32 0, align 4
@CTRL0_TODDR_TYPE_MASK = common dso_local global i32 0, align 4
@CTRL0_TODDR_MSB_POS_MASK = common dso_local global i32 0, align 4
@CTRL0_TODDR_LSB_POS_MASK = common dso_local global i32 0, align 4
@TODDR_MSB_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axg_toddr_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_toddr_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.axg_fifo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.axg_fifo* %12, %struct.axg_fifo** %8, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %14 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %13)
  switch i32 %14, label %18 [
    i32 8, label %15
    i32 16, label %16
    i32 32, label %17
  ]

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

16:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  br label %21

17:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %17, %16, %15
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_width(%struct.snd_pcm_hw_params* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.axg_fifo*, %struct.axg_fifo** %8, align 8
  %25 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FIFO_CTRL0, align 4
  %28 = load i32, i32* @CTRL0_TODDR_TYPE_MASK, align 4
  %29 = load i32, i32* @CTRL0_TODDR_MSB_POS_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CTRL0_TODDR_LSB_POS_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @CTRL0_TODDR_TYPE(i32 %33)
  %35 = load i64, i64* @TODDR_MSB_POS, align 8
  %36 = call i32 @CTRL0_TODDR_MSB_POS(i64 %35)
  %37 = or i32 %34, %36
  %38 = load i64, i64* @TODDR_MSB_POS, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sub i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @CTRL0_TODDR_LSB_POS(i64 %42)
  %44 = or i32 %37, %43
  %45 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %32, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %21, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.axg_fifo* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CTRL0_TODDR_TYPE(i32) #1

declare dso_local i32 @CTRL0_TODDR_MSB_POS(i64) #1

declare dso_local i32 @CTRL0_TODDR_LSB_POS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
