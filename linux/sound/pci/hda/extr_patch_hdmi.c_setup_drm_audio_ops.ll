; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_setup_drm_audio_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_setup_drm_audio_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.hda_codec* }
%struct.drm_audio_component_audio_ops = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.drm_audio_component_audio_ops*)* @setup_drm_audio_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_drm_audio_ops(%struct.hda_codec* %0, %struct.drm_audio_component_audio_ops* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.drm_audio_component_audio_ops*, align 8
  %5 = alloca %struct.hdmi_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.drm_audio_component_audio_ops* %1, %struct.drm_audio_component_audio_ops** %4, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  store %struct.hdmi_spec* %8, %struct.hdmi_spec** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %11 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store %struct.hda_codec* %9, %struct.hda_codec** %12, align 8
  %13 = call i32 (...) @wmb()
  %14 = load %struct.drm_audio_component_audio_ops*, %struct.drm_audio_component_audio_ops** %4, align 8
  %15 = getelementptr inbounds %struct.drm_audio_component_audio_ops, %struct.drm_audio_component_audio_ops* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %18 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load %struct.drm_audio_component_audio_ops*, %struct.drm_audio_component_audio_ops** %4, align 8
  %21 = getelementptr inbounds %struct.drm_audio_component_audio_ops, %struct.drm_audio_component_audio_ops* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.drm_audio_component_audio_ops*, %struct.drm_audio_component_audio_ops** %4, align 8
  %27 = getelementptr inbounds %struct.drm_audio_component_audio_ops, %struct.drm_audio_component_audio_ops* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %30 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.drm_audio_component_audio_ops*, %struct.drm_audio_component_audio_ops** %4, align 8
  %33 = getelementptr inbounds %struct.drm_audio_component_audio_ops, %struct.drm_audio_component_audio_ops* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %36 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
