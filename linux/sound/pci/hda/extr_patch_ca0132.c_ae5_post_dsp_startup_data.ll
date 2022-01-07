; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_startup_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_startup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@CONTROL_PARAM_ASI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ae5_post_dsp_startup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae5_post_dsp_startup_data(%struct.hda_codec* %0) #0 {
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
  %11 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %10, i32 1609728, i32 127233)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %12, i32 1609732, i32 127233)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %14, i32 1609764, i32 81924)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %16, i32 1609768, i32 131087)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %18, i32 72, i32 10, i32 5)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* @CONTROL_PARAM_ASI, align 4
  %22 = call i32 @chipio_set_control_param_no_mutex(%struct.hda_codec* %20, i32 %21, i32 7)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %23, i32 72, i32 11, i32 18)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %25, i32 72, i32 4, i32 0)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %27, i32 72, i32 6, i32 72)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %29, i32 72, i32 10, i32 5)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %31, i32 72, i32 7, i32 131)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %33, i32 72, i32 15, i32 0)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %35, i32 72, i32 16, i32 0)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %37, i32 0, i32 1)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %39, i32 1, i32 1)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %41, i32 72, i32 7, i32 128)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %43, i32 1617980, i32 18)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %45, i32 72, i32 15, i32 0)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %47, i32 72, i32 16, i32 0)
  %49 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %50 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chipio_write_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0113_mmio_command_set(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @chipio_set_control_param_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0113_mmio_gpio_set(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
