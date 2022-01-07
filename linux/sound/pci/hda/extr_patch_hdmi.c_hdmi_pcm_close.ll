; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i64 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i64, i64, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.hdmi_spec_per_cvt = type { i64 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @hdmi_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_pcm_close(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %13 = alloca %struct.hdmi_spec_per_pin*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %17, align 8
  store %struct.hdmi_spec* %18, %struct.hdmi_spec** %8, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %20 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %140

23:                                               ; preds = %3
  %24 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %25 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %26 = call i32 @hinfo_to_pcm_index(%struct.hda_codec* %24, %struct.hda_pcm_stream* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @snd_BUG_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %142

35:                                               ; preds = %23
  %36 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %37 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %38 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @cvt_nid_to_cvt_index(%struct.hda_codec* %36, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @snd_BUG_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %142

49:                                               ; preds = %35
  %50 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %50, i32 %51)
  store %struct.hdmi_spec_per_cvt* %52, %struct.hdmi_spec_per_cvt** %12, align 8
  %53 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @snd_BUG_ON(i32 %58)
  %60 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %61 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %63 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %65 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %67, i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %72 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %71, i32 0, i32 3
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %75 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %76 = call i32 @hinfo_to_pin_index(%struct.hda_codec* %74, %struct.hda_pcm_stream* %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %78 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %49
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %136

85:                                               ; preds = %81, %49
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @snd_BUG_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %136

94:                                               ; preds = %85
  %95 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %95, i32 %96)
  store %struct.hdmi_spec_per_pin* %97, %struct.hdmi_spec_per_pin** %13, align 8
  %98 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %99 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %94
  %103 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %104 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %105 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %108 = call i32 @snd_hda_codec_read(%struct.hda_codec* %103, i32 %106, i32 0, i32 %107, i32 0)
  store i32 %108, i32* %14, align 4
  %109 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %110 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %111 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @PIN_OUT, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = call i32 @snd_hda_codec_write(%struct.hda_codec* %109, i32 %112, i32 0, i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %102, %94
  %120 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %121 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %120, i32 0, i32 2
  %122 = call i32 @mutex_lock(i32* %121)
  %123 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %124 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %126 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memset(i32 %127, i32 0, i32 4)
  %129 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %130 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %132 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  %133 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %134 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  br label %136

136:                                              ; preds = %119, %91, %84
  %137 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %138 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  br label %140

140:                                              ; preds = %136, %3
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %46, %32
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @hinfo_to_pcm_index(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @cvt_nid_to_cvt_index(%struct.hda_codec*, i64) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hinfo_to_pin_index(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
