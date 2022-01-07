; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_acomp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_acomp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__*, %struct.hdmi_spec* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.hdmi_spec = type { i32 (%struct.hda_codec.0*, i32)*, i32, i32 }
%struct.hda_codec.0 = type opaque
%struct.drm_audio_component_audio_ops = type { i32 }

@match_bound_vga = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.drm_audio_component_audio_ops*, i32 (%struct.hda_codec*, i32)*)* @generic_acomp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_acomp_init(%struct.hda_codec* %0, %struct.drm_audio_component_audio_ops* %1, i32 (%struct.hda_codec*, i32)* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.drm_audio_component_audio_ops*, align 8
  %6 = alloca i32 (%struct.hda_codec*, i32)*, align 8
  %7 = alloca %struct.hdmi_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.drm_audio_component_audio_ops* %1, %struct.drm_audio_component_audio_ops** %5, align 8
  store i32 (%struct.hda_codec*, i32)* %2, i32 (%struct.hda_codec*, i32)** %6, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %7, align 8
  %11 = load i32 (%struct.hda_codec*, i32)*, i32 (%struct.hda_codec*, i32)** %6, align 8
  %12 = bitcast i32 (%struct.hda_codec*, i32)* %11 to i32 (%struct.hda_codec.0*, i32)*
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %13, i32 0, i32 0
  store i32 (%struct.hda_codec.0*, i32)* %12, i32 (%struct.hda_codec.0*, i32)** %14, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = load %struct.drm_audio_component_audio_ops*, %struct.drm_audio_component_audio_ops** %5, align 8
  %17 = call i32 @setup_drm_audio_ops(%struct.hda_codec* %15, %struct.drm_audio_component_audio_ops* %16)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %22, i32 0, i32 2
  %24 = load i32, i32* @match_bound_vga, align 4
  %25 = call i32 @snd_hdac_acomp_init(i32* %21, i32* %23, i32 %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %29 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %3
  ret void
}

declare dso_local i32 @setup_drm_audio_ops(%struct.hda_codec*, %struct.drm_audio_component_audio_ops*) #1

declare dso_local i32 @snd_hdac_acomp_init(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
