; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_playback_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_playback_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.TYPE_3__*, i32, %struct.hdmi_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.hdmi_spec = type { i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.hda_codec.0*, i32, i32, i32, i32)* }
%struct.hda_codec.0 = type opaque
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AC_WCAP_STRIPE = common dso_local global i32 0, align 4
@AC_VERB_SET_STRIPE_CONTROL = common dso_local global i32 0, align 4
@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @generic_hdmi_playback_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_playback_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_spec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hdmi_spec_per_pin*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_pcm_runtime*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %21 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %22 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 2
  %26 = load %struct.hdmi_spec*, %struct.hdmi_spec** %25, align 8
  store %struct.hdmi_spec* %26, %struct.hdmi_spec** %12, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %28, align 8
  store %struct.snd_pcm_runtime* %29, %struct.snd_pcm_runtime** %16, align 8
  store i32 0, i32* %20, align 4
  %30 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %34 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %35 = call i32 @hinfo_to_pin_index(%struct.hda_codec* %33, %struct.hda_pcm_stream* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %5
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @pin_cvt_fixup(%struct.hda_codec* %44, %struct.hdmi_spec_per_pin* null, i32 %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %47, i32 %48, i32 %49, i32 0, i32 %50)
  br label %155

52:                                               ; preds = %40, %5
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @snd_BUG_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %20, align 4
  br label %155

61:                                               ; preds = %52
  %62 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %62, i32 %63)
  store %struct.hdmi_spec_per_pin* %64, %struct.hdmi_spec_per_pin** %14, align 8
  %65 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %66 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  %68 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %69 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %70 = call i32 @pin_cvt_fixup(%struct.hda_codec* %68, %struct.hdmi_spec_per_pin* %69, i32 0)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %72 = call i64 @codec_has_acomp(%struct.hda_codec* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %61
  %75 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %76 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %75, i32 0, i32 1
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %79 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_hdac_sync_audio_rate(i32* %76, i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %74, %61
  %86 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @check_non_pcm_per_cvt(%struct.hda_codec* %86, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %90 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %89, i32 0, i32 1
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %92, i32 0, i32 0
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %93, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %98 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %100 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @get_wcaps(%struct.hda_codec* %101, i32 %102)
  %104 = load i32, i32* @AC_WCAP_STRIPE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %85
  %108 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %109 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %113 = call i32 @snd_hdac_get_stream_stripe_ctl(i32* %111, %struct.snd_pcm_substream* %112)
  store i32 %113, i32* %19, align 4
  %114 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @AC_VERB_SET_STRIPE_CONTROL, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @snd_hda_codec_write(%struct.hda_codec* %114, i32 %115, i32 0, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %107, %85
  %120 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %121 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @hdmi_setup_audio_infoframe(%struct.hda_codec* %120, %struct.hdmi_spec_per_pin* %121, i32 %122)
  %124 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %125 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %128 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %119
  %132 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %135 = call i32 @snd_hda_codec_read(%struct.hda_codec* %132, i32 %133, i32 0, i32 %134, i32 0)
  store i32 %135, i32* %18, align 4
  %136 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @PIN_OUT, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @snd_hda_codec_write(%struct.hda_codec* %136, i32 %137, i32 0, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %131, %119
  %144 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %145 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32 (%struct.hda_codec.0*, i32, i32, i32, i32)*, i32 (%struct.hda_codec.0*, i32, i32, i32, i32)** %146, align 8
  %148 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %149 = bitcast %struct.hda_codec* %148 to %struct.hda_codec.0*
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 %147(%struct.hda_codec.0* %149, i32 %150, i32 %151, i32 %152, i32 %153)
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %143, %58, %43
  %156 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %157 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load i32, i32* %20, align 4
  ret i32 %159
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hinfo_to_pin_index(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

declare dso_local i32 @pin_cvt_fixup(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i64 @codec_has_acomp(%struct.hda_codec*) #1

declare dso_local i32 @snd_hdac_sync_audio_rate(i32*, i32, i32, i32) #1

declare dso_local i32 @check_non_pcm_per_cvt(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hdac_get_stream_stripe_ctl(i32*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_setup_audio_infoframe(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
