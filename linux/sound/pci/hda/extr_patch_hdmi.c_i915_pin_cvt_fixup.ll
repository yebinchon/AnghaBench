; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_i915_pin_cvt_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_i915_pin_cvt_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32)* @i915_pin_cvt_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_pin_cvt_fixup(%struct.hda_codec* %0, %struct.hdmi_spec_per_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hdmi_spec_per_pin*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %8 = icmp ne %struct.hdmi_spec_per_pin* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %15 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %10, i32 %13, i32 %16)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %20 = call i32 @intel_verify_pin_cvt_connect(%struct.hda_codec* %18, %struct.hdmi_spec_per_pin* %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %26 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @intel_not_share_assigned_cvt(%struct.hda_codec* %21, i32 %24, i32 %27, i32 %30)
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @intel_not_share_assigned_cvt_nid(%struct.hda_codec* %33, i32 0, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @snd_hda_set_dev_select(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @intel_verify_pin_cvt_connect(%struct.hda_codec*, %struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @intel_not_share_assigned_cvt(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @intel_not_share_assigned_cvt_nid(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
