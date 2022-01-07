; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_intel_haswell_enable_all_pins.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_intel_haswell_enable_all_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }

@INTEL_GET_VENDOR_VERB = common dso_local global i32 0, align 4
@INTEL_EN_ALL_PIN_CVTS = common dso_local global i32 0, align 4
@INTEL_SET_VENDOR_VERB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @intel_haswell_enable_all_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_haswell_enable_all_pins(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  store %struct.hdmi_spec* %9, %struct.hdmi_spec** %6, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INTEL_GET_VENDOR_VERB, align 4
  %15 = call i32 @snd_hda_codec_read(%struct.hda_codec* %10, i32 %13, i32 0, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @INTEL_EN_ALL_PIN_CVTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  br label %44

24:                                               ; preds = %18
  %25 = load i32, i32* @INTEL_EN_ALL_PIN_CVTS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %30 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INTEL_SET_VENDOR_VERB, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @snd_hda_codec_read(%struct.hda_codec* %28, i32 %31, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %44

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = call i32 @snd_hda_codec_update_widgets(%struct.hda_codec* %42)
  br label %44

44:                                               ; preds = %23, %37, %41, %38
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_update_widgets(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
