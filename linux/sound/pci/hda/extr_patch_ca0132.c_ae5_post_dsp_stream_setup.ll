; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_stream_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_stream_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@SR_96_000 = common dso_local global i32 0, align 4
@CONTROL_PARAM_ASI = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_ADDRESS_LOW = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PLL_PMU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ae5_post_dsp_stream_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae5_post_dsp_stream_setup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %8 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %12 = call i32 @snd_hda_codec_write(%struct.hda_codec* %10, i32 %11, i32 0, i32 1829, i32 129)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load i32, i32* @SR_96_000, align 4
  %15 = call i32 @chipio_set_conn_rate_no_mutex(%struct.hda_codec* %13, i32 112, i32 %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @chipio_set_stream_channels(%struct.hda_codec* %16, i32 12, i32 6)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @chipio_set_stream_control(%struct.hda_codec* %18, i32 12, i32 1)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @chipio_set_stream_source_dest(%struct.hda_codec* %20, i32 5, i32 67, i32 0)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @chipio_set_stream_source_dest(%struct.hda_codec* %22, i32 24, i32 9, i32 208)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load i32, i32* @SR_96_000, align 4
  %26 = call i32 @chipio_set_conn_rate_no_mutex(%struct.hda_codec* %24, i32 208, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = call i32 @chipio_set_stream_channels(%struct.hda_codec* %27, i32 24, i32 6)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @chipio_set_stream_control(%struct.hda_codec* %29, i32 24, i32 1)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i32, i32* @CONTROL_PARAM_ASI, align 4
  %33 = call i32 @chipio_set_control_param_no_mutex(%struct.hda_codec* %31, i32 %32, i32 4)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %36 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %37 = call i32 @snd_hda_codec_write(%struct.hda_codec* %34, i32 %35, i32 0, i32 %36, i32 67)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %40 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %41 = call i32 @snd_hda_codec_write(%struct.hda_codec* %38, i32 %39, i32 0, i32 %40, i32 199)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %42, i32 72, i32 1, i32 128)
  %44 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %45 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_channels(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_source_dest(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @chipio_set_control_param_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0113_mmio_command_set(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
