; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_r3d_pre_dsp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_r3d_pre_dsp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_ADDRESS_LOW = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_ADDRESS_HIGH = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_DATA_WRITE = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @r3d_pre_dsp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3d_pre_dsp_setup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = call i32 @chipio_write(%struct.hda_codec* %3, i32 1618084, i32 194)
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %7 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %8 = call i32 @snd_hda_codec_write(%struct.hda_codec* %5, i32 %6, i32 0, i32 %7, i32 30)
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %11 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_HIGH, align 4
  %12 = call i32 @snd_hda_codec_write(%struct.hda_codec* %9, i32 %10, i32 0, i32 %11, i32 28)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %15 = load i32, i32* @VENDOR_CHIPIO_8051_DATA_WRITE, align 4
  %16 = call i32 @snd_hda_codec_write(%struct.hda_codec* %13, i32 %14, i32 0, i32 %15, i32 91)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %19 = call i32 @snd_hda_codec_write(%struct.hda_codec* %17, i32 17, i32 0, i32 %18, i32 68)
  ret void
}

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
