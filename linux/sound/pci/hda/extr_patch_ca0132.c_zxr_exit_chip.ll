; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_zxr_exit_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_zxr_exit_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@SR_192_000 = common dso_local global i32 0, align 4
@AC_VERB_SET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @zxr_exit_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zxr_exit_chip(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = call i32 @chipio_set_stream_control(%struct.hda_codec* %3, i32 3, i32 0)
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = call i32 @chipio_set_stream_control(%struct.hda_codec* %5, i32 4, i32 0)
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @chipio_set_stream_control(%struct.hda_codec* %7, i32 20, i32 0)
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = call i32 @chipio_set_stream_control(%struct.hda_codec* %9, i32 12, i32 0)
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load i32, i32* @SR_192_000, align 4
  %13 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %11, i32 65, i32 %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load i32, i32* @SR_192_000, align 4
  %16 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %14, i32 145, i32 %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = call i32 @chipio_write(%struct.hda_codec* %17, i32 1613856, i32 131)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @snd_hda_codec_write(%struct.hda_codec* %19, i32 1, i32 0, i32 1939, i32 0)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %21, i32 1, i32 0, i32 1940, i32 83)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @ca0132_clear_unsolicited(%struct.hda_codec* %23)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @sbz_set_pin_ctl_default(%struct.hda_codec* %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %29 = call i32 @snd_hda_codec_write(%struct.hda_codec* %27, i32 11, i32 0, i32 %28, i32 0)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %30, i32 5, i32 0)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %32, i32 2, i32 0)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %34, i32 3, i32 0)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %36, i32 0, i32 0)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %38, i32 4, i32 1)
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %40, i32 0, i32 1)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %42, i32 5, i32 1)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %44, i32 2, i32 0)
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %46, i32 3, i32 0)
  ret void
}

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @ca0132_clear_unsolicited(%struct.hda_codec*) #1

declare dso_local i32 @sbz_set_pin_ctl_default(%struct.hda_codec*) #1

declare dso_local i32 @ca0113_mmio_gpio_set(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
