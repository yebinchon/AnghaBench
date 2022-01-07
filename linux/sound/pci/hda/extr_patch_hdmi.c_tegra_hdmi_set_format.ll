; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_tegra_hdmi_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_tegra_hdmi_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@NVIDIA_AFG_NID = common dso_local global i32 0, align 4
@NVIDIA_GET_SCRATCH0 = common dso_local global i32 0, align 4
@NVIDIA_SET_SCRATCH0_BYTE0 = common dso_local global i32 0, align 4
@NVIDIA_SET_SCRATCH0_BYTE1 = common dso_local global i32 0, align 4
@NVIDIA_SET_SCRATCH0_BYTE2 = common dso_local global i32 0, align 4
@NVIDIA_SCRATCH_VALID = common dso_local global i32 0, align 4
@NVIDIA_SCRATCH_TRIGGER = common dso_local global i32 0, align 4
@NVIDIA_SET_SCRATCH0_BYTE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @tegra_hdmi_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_set_format(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @NVIDIA_AFG_NID, align 4
  %8 = load i32, i32* @NVIDIA_GET_SCRATCH0, align 4
  %9 = call i32 @snd_hda_codec_read(%struct.hda_codec* %6, i32 %7, i32 0, i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 24
  %12 = and i32 %11, 255
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = load i32, i32* @NVIDIA_AFG_NID, align 4
  %15 = load i32, i32* @NVIDIA_SET_SCRATCH0_BYTE0, align 4
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 0
  %18 = and i32 %17, 255
  %19 = call i32 @snd_hda_codec_write(%struct.hda_codec* %13, i32 %14, i32 0, i32 %15, i32 %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load i32, i32* @NVIDIA_AFG_NID, align 4
  %22 = load i32, i32* @NVIDIA_SET_SCRATCH0_BYTE1, align 4
  %23 = load i32, i32* %4, align 4
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = call i32 @snd_hda_codec_write(%struct.hda_codec* %20, i32 %21, i32 0, i32 %22, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load i32, i32* @NVIDIA_AFG_NID, align 4
  %29 = load i32, i32* @NVIDIA_SET_SCRATCH0_BYTE2, align 4
  %30 = call i32 @snd_hda_codec_write(%struct.hda_codec* %27, i32 %28, i32 0, i32 %29, i32 0)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @NVIDIA_SCRATCH_VALID, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @NVIDIA_SCRATCH_VALID, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @NVIDIA_SCRATCH_TRIGGER, align 4
  %44 = load i32, i32* %5, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = load i32, i32* @NVIDIA_AFG_NID, align 4
  %48 = load i32, i32* @NVIDIA_SET_SCRATCH0_BYTE3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @snd_hda_codec_write(%struct.hda_codec* %46, i32 %47, i32 0, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
