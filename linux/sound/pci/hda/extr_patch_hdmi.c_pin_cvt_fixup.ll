; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pin_cvt_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pin_cvt_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec.0*, %struct.hdmi_spec_per_pin*, i32)* }
%struct.hda_codec.0 = type opaque
%struct.hdmi_spec_per_pin = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32)* @pin_cvt_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pin_cvt_fixup(%struct.hda_codec* %0, %struct.hdmi_spec_per_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hdmi_spec_per_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdmi_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %7, align 8
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.hda_codec.0*, %struct.hdmi_spec_per_pin*, i32)*, i32 (%struct.hda_codec.0*, %struct.hdmi_spec_per_pin*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.hda_codec.0*, %struct.hdmi_spec_per_pin*, i32)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %18 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.hda_codec.0*, %struct.hdmi_spec_per_pin*, i32)*, i32 (%struct.hda_codec.0*, %struct.hdmi_spec_per_pin*, i32)** %19, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = bitcast %struct.hda_codec* %21 to %struct.hda_codec.0*
  %23 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %20(%struct.hda_codec.0* %22, %struct.hdmi_spec_per_pin* %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
