; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_pll_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_pll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_ADDRESS_LOW = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PLL_PMU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ae5_post_dsp_pll_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae5_post_dsp_pll_setup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %5 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %6 = call i32 @snd_hda_codec_write(%struct.hda_codec* %3, i32 %4, i32 0, i32 %5, i32 65)
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %9 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %10 = call i32 @snd_hda_codec_write(%struct.hda_codec* %7, i32 %8, i32 0, i32 %9, i32 200)
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %13 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %14 = call i32 @snd_hda_codec_write(%struct.hda_codec* %11, i32 %12, i32 0, i32 %13, i32 69)
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %17 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %18 = call i32 @snd_hda_codec_write(%struct.hda_codec* %15, i32 %16, i32 0, i32 %17, i32 204)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %21 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %19, i32 %20, i32 0, i32 %21, i32 64)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %25 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %26 = call i32 @snd_hda_codec_write(%struct.hda_codec* %23, i32 %24, i32 0, i32 %25, i32 203)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %29 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %30 = call i32 @snd_hda_codec_write(%struct.hda_codec* %27, i32 %28, i32 0, i32 %29, i32 67)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %33 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %34 = call i32 @snd_hda_codec_write(%struct.hda_codec* %31, i32 %32, i32 0, i32 %33, i32 199)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %37 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %38 = call i32 @snd_hda_codec_write(%struct.hda_codec* %35, i32 %36, i32 0, i32 %37, i32 81)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %41 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %42 = call i32 @snd_hda_codec_write(%struct.hda_codec* %39, i32 %40, i32 0, i32 %41, i32 141)
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
