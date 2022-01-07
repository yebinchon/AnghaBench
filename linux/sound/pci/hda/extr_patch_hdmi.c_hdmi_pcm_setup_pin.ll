; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_setup_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_setup_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spec = type { i32, i32 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.hda_codec* }
%struct.hda_codec = type { i32 }
%struct.hda_pcm = type { %struct.TYPE_5__*, %struct.hda_pcm_stream* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hda_pcm_stream = type { i32 }

@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_spec*, %struct.hdmi_spec_per_pin*)* @hdmi_pcm_setup_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_pcm_setup_pin(%struct.hdmi_spec* %0, %struct.hdmi_spec_per_pin* %1) #0 {
  %3 = alloca %struct.hdmi_spec*, align 8
  %4 = alloca %struct.hdmi_spec_per_pin*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_pcm*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdmi_spec* %0, %struct.hdmi_spec** %3, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %4, align 8
  %11 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %11, i32 0, i32 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %12, align 8
  store %struct.hda_codec* %13, %struct.hda_codec** %5, align 8
  %14 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %28 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec* %27, i32 %30)
  store %struct.hda_pcm* %31, %struct.hda_pcm** %6, align 8
  br label %33

32:                                               ; preds = %18, %2
  br label %128

33:                                               ; preds = %26
  %34 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %128

39:                                               ; preds = %33
  %40 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %41 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %43, i32 0, i32 0
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %128

48:                                               ; preds = %39
  %49 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %49, i32 0, i32 1
  %51 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %50, align 8
  store %struct.hda_pcm_stream* %51, %struct.hda_pcm_stream** %7, align 8
  %52 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %53 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %58, align 8
  store %struct.snd_pcm_substream* %59, %struct.snd_pcm_substream** %8, align 8
  %60 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %61 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %64 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %66 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %67 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %68 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hdmi_get_pin_cvt_mux(%struct.hdmi_spec* %65, %struct.hdmi_spec_per_pin* %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %73 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %48
  %77 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %78 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %79 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %82 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %77, i32 %80, i32 %83)
  %85 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %86 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %87 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %85, i32 %88, i32 0, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %76, %48
  %93 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %94 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %95 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %98 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @snd_hda_spdif_ctls_assign(%struct.hda_codec* %93, i32 %96, i32 %99)
  %101 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %102 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %103 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @check_non_pcm_per_cvt(%struct.hda_codec* %101, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %92
  %111 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %117 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %92
  %119 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %120 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %123 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %125 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @hdmi_setup_audio_infoframe(%struct.hda_codec* %124, %struct.hdmi_spec_per_pin* %125, i32 %126)
  br label %128

128:                                              ; preds = %118, %47, %38, %32
  ret void
}

declare dso_local %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hdmi_get_pin_cvt_mux(%struct.hdmi_spec*, %struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @snd_hda_set_dev_select(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_spdif_ctls_assign(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @check_non_pcm_per_cvt(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_setup_audio_infoframe(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
