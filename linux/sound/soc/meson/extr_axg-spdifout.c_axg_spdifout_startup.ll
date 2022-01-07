; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifout.c_axg_spdifout_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifout.c_axg_spdifout_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_spdifout = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"failed to enable pclk\0A\00", align 1
@SPDIFOUT_CTRL0 = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_MSB_FIRST = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_DATA_SEL = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_CHSTS_SEL = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_VSEL = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_USEL = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_USET = common dso_local global i32 0, align 4
@SPDIFOUT_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @axg_spdifout_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifout_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.axg_spdifout*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.axg_spdifout* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.axg_spdifout* %9, %struct.axg_spdifout** %6, align 8
  %10 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %11 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %24 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @axg_spdifout_disable(i32 %25)
  %27 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %28 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SPDIFOUT_CTRL0, align 4
  %31 = load i32, i32* @SPDIFOUT_CTRL0_MSB_FIRST, align 4
  %32 = load i32, i32* @SPDIFOUT_CTRL0_DATA_SEL, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %33, i32 0)
  %35 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %36 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPDIFOUT_CTRL0, align 4
  %39 = load i32, i32* @SPDIFOUT_CTRL0_CHSTS_SEL, align 4
  %40 = load i32, i32* @SPDIFOUT_CTRL0_VSEL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SPDIFOUT_CTRL0_USEL, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SPDIFOUT_CTRL0_USET, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %45, i32 0)
  %47 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %48 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SPDIFOUT_SWAP, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 16)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %22, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.axg_spdifout* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @axg_spdifout_disable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
