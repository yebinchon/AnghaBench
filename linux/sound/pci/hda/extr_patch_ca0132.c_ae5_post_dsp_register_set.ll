; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_register_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_post_dsp_register_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_8051_ADDRESS_LOW = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PLL_PMU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ae5_post_dsp_register_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae5_post_dsp_register_set(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @chipio_8051_write_direct(%struct.hda_codec* %7, i32 147, i32 16)
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %11 = load i32, i32* @VENDOR_CHIPIO_8051_ADDRESS_LOW, align 4
  %12 = call i32 @snd_hda_codec_write(%struct.hda_codec* %9, i32 %10, i32 0, i32 %11, i32 68)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %15 = load i32, i32* @VENDOR_CHIPIO_PLL_PMU_WRITE, align 4
  %16 = call i32 @snd_hda_codec_write(%struct.hda_codec* %13, i32 %14, i32 0, i32 %15, i32 194)
  %17 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %18 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 772
  %21 = call i32 @writeb(i32 255, i64 %20)
  %22 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %23 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 772
  %26 = call i32 @writeb(i32 255, i64 %25)
  %27 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %28 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 772
  %31 = call i32 @writeb(i32 255, i64 %30)
  %32 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %33 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 772
  %36 = call i32 @writeb(i32 255, i64 %35)
  %37 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %38 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 256
  %41 = call i32 @writeb(i32 0, i64 %40)
  %42 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %43 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 772
  %46 = call i32 @writeb(i32 255, i64 %45)
  %47 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %48 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 256
  %51 = call i32 @writeb(i32 0, i64 %50)
  %52 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %53 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 772
  %56 = call i32 @writeb(i32 255, i64 %55)
  %57 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %58 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 256
  %61 = call i32 @writeb(i32 0, i64 %60)
  %62 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %63 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 772
  %66 = call i32 @writeb(i32 255, i64 %65)
  %67 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %68 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 256
  %71 = call i32 @writeb(i32 0, i64 %70)
  %72 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %73 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 772
  %76 = call i32 @writeb(i32 255, i64 %75)
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %77, i32 48, i32 43, i32 63)
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %79, i32 48, i32 45, i32 63)
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %81, i32 72, i32 7, i32 131)
  ret void
}

declare dso_local i32 @chipio_8051_write_direct(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @ca0113_mmio_command_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
