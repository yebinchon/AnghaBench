; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_open_no_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_open_no_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32, i32, i32, i32, i32, i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hdmi_spec_per_cvt = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @hdmi_pcm_open_no_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_pcm_open_no_pin(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %13 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %15, align 8
  store %struct.hdmi_spec* %16, %struct.hdmi_spec** %8, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %9, align 8
  store %struct.hdmi_spec_per_cvt* null, %struct.hdmi_spec_per_cvt** %12, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %22 = call i32 @hinfo_to_pcm_index(%struct.hda_codec* %20, %struct.hda_pcm_stream* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %109

28:                                               ; preds = %3
  %29 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %30 = call i32 @hdmi_choose_cvt(%struct.hda_codec* %29, i32 -1, i32* %10)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %28
  %36 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %36, i32 %37)
  store %struct.hdmi_spec_per_cvt* %38, %struct.hdmi_spec_per_cvt** %12, align 8
  %39 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %45 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %47 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %48 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pin_cvt_fixup(%struct.hda_codec* %46, i32* null, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %53 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %56 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %59 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %61 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %64 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %66 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %69 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %71 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %74 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %76 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %79 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %81 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %87 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %93 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %99 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %104, i32 0, i32 0
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %105, align 8
  %107 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %108 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %106, i32 0, i32 %107, i32 2)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %35, %33, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @hinfo_to_pcm_index(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

declare dso_local i32 @hdmi_choose_cvt(%struct.hda_codec*, i32, i32*) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @pin_cvt_fixup(%struct.hda_codec*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
