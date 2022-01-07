; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.TYPE_5__, %struct.hdac_chmap }
%struct.TYPE_5__ = type { i32 (%struct.hda_codec.0*, i32, i32, i32, i32)* }
%struct.hda_codec.0 = type opaque
%struct.hdac_chmap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32, i32)* }
%struct.hdmi_spec_per_pin = type { i32, i32, i32, i32, i32, %struct.hdmi_eld, i32 }
%struct.hdmi_eld = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@AC_WCAP_OUT_AMP = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_UNMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32)* @hdmi_setup_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_setup_audio_infoframe(%struct.hda_codec* %0, %struct.hdmi_spec_per_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hdmi_spec_per_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca %struct.hdac_chmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_eld*, align 8
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %15, align 8
  store %struct.hdmi_spec* %16, %struct.hdmi_spec** %7, align 8
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %18 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %17, i32 0, i32 1
  store %struct.hdac_chmap* %18, %struct.hdac_chmap** %8, align 8
  %19 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %102

28:                                               ; preds = %3
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @get_wcaps(%struct.hda_codec* %29, i32 %30)
  %32 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %39 = load i32, i32* @AMP_OUT_UNMUTE, align 4
  %40 = call i32 @snd_hda_codec_write(%struct.hda_codec* %36, i32 %37, i32 0, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %43 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %42, i32 0, i32 5
  store %struct.hdmi_eld* %43, %struct.hdmi_eld** %12, align 8
  %44 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 0
  %46 = load %struct.hdmi_eld*, %struct.hdmi_eld** %12, align 8
  %47 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %52 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %56 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_hdac_channel_allocation(i32* %45, i32 %49, i32 %50, i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @snd_hdac_get_active_channels(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.hdac_chmap*, %struct.hdac_chmap** %8, align 8
  %62 = getelementptr inbounds %struct.hdac_chmap, %struct.hdac_chmap* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %63, align 8
  %65 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %66 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %65, i32 0, i32 0
  %67 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %68 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 %64(i32* %66, i32 %69, i32 %70)
  %72 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %73 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %79 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %82 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_hdac_setup_channel_mapping(%struct.hdac_chmap* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %80, i32 %83)
  %85 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %86 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.hda_codec.0*, i32, i32, i32, i32)*, i32 (%struct.hda_codec.0*, i32, i32, i32, i32)** %87, align 8
  %89 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %90 = bitcast %struct.hda_codec* %89 to %struct.hda_codec.0*
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.hdmi_eld*, %struct.hdmi_eld** %12, align 8
  %95 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 %88(%struct.hda_codec.0* %90, i32 %91, i32 %92, i32 %93, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %101 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %41, %27
  ret void
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_channel_allocation(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_get_active_channels(i32) #1

declare dso_local i32 @snd_hdac_setup_channel_mapping(%struct.hdac_chmap*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
