; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dma_convert_to_hda_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dma_convert_to_hda_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i16, i16*)* @dma_convert_to_hda_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_convert_to_hda_format(%struct.hda_codec* %0, i32 %1, i16 zeroext %2, i16* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16* %3, i16** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i16, i16* %7, align 2
  %12 = load i32, i32* @SNDRV_PCM_FORMAT_S32_LE, align 4
  %13 = call i32 @snd_hdac_calc_stream_format(i32 %10, i16 zeroext %11, i32 %12, i32 32, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i16*, i16** %8, align 8
  %15 = icmp ne i16* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = trunc i32 %17 to i16
  %19 = load i16*, i16** %8, align 8
  store i16 %18, i16* %19, align 2
  br label %20

20:                                               ; preds = %16, %4
  ret i32 0
}

declare dso_local i32 @snd_hdac_calc_stream_format(i32, i16 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
