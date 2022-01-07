; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"SBZ alt_init\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"R3DI alt_init\00", align 1
@R3DI_DSP_DOWNLOADING = common dso_local global i32 0, align 4
@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_ADDRESS_LOW = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PLL_PMU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_alt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_alt_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @ca0132_alt_vol_setup(%struct.hda_codec* %7)
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %10 = call i32 @ca0132_quirk(%struct.ca0132_spec* %9)
  switch i32 %10, label %97 [
    i32 129, label %11
    i32 130, label %28
    i32 131, label %48
    i32 132, label %61
    i32 128, label %86
  ]

11:                                               ; preds = %1
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @codec_dbg(%struct.hda_codec* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @ca0132_gpio_init(%struct.hda_codec* %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @sbz_pre_dsp_setup(%struct.hda_codec* %16)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %18, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %25 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %23, i32 %26)
  br label %98

28:                                               ; preds = %1
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @codec_dbg(%struct.hda_codec* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @ca0132_gpio_init(%struct.hda_codec* %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @ca0132_gpio_setup(%struct.hda_codec* %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* @R3DI_DSP_DOWNLOADING, align 4
  %37 = call i32 @r3di_gpio_dsp_status_set(%struct.hda_codec* %35, i32 %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = call i32 @r3di_pre_dsp_setup(%struct.hda_codec* %38)
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %42 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %40, i32 %43)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %47 = call i32 @snd_hda_codec_write(%struct.hda_codec* %45, i32 %46, i32 0, i32 1791, i32 196)
  br label %98

48:                                               ; preds = %1
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = call i32 @r3d_pre_dsp_setup(%struct.hda_codec* %49)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %53 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %51, i32 %54)
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %58 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %56, i32 %59)
  br label %98

61:                                               ; preds = %1
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = call i32 @ca0132_gpio_init(%struct.hda_codec* %62)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %66 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %67 = call i32 @snd_hda_codec_write(%struct.hda_codec* %64, i32 %65, i32 0, i32 %66, i32 73)
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %70 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %71 = call i32 @snd_hda_codec_write(%struct.hda_codec* %68, i32 %69, i32 0, i32 %70, i32 136)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = call i32 @chipio_write(%struct.hda_codec* %72, i32 1617968, i32 32)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %76 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %74, i32 %77)
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %81 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %79, i32 %82)
  %84 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %85 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %84, i32 48, i32 50, i32 63)
  br label %98

86:                                               ; preds = %1
  %87 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %88 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %89 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %87, i32 %90)
  %92 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %93 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %94 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %92, i32 %95)
  br label %98

97:                                               ; preds = %1
  br label %98

98:                                               ; preds = %97, %86, %61, %48, %28, %11
  ret void
}

declare dso_local i32 @ca0132_alt_vol_setup(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @ca0132_gpio_init(%struct.hda_codec*) #1

declare dso_local i32 @sbz_pre_dsp_setup(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @ca0132_gpio_setup(%struct.hda_codec*) #1

declare dso_local i32 @r3di_gpio_dsp_status_set(%struct.hda_codec*, i32) #1

declare dso_local i32 @r3di_pre_dsp_setup(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @r3d_pre_dsp_setup(%struct.hda_codec*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0113_mmio_command_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
