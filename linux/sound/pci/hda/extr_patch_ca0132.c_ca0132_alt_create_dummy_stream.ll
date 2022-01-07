; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_create_dummy_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_create_dummy_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i32 }

@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_alt_create_dummy_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_alt_create_dummy_stream(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  %8 = load i32, i32* @SNDRV_PCM_FORMAT_S32_LE, align 4
  %9 = call i32 @snd_hdac_calc_stream_format(i32 48000, i32 2, i32 %8, i32 32, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %12 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %17 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %10, i32 %15, i32 %18, i32 0, i32 %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %23 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %21, i32 %26)
  ret void
}

declare dso_local i32 @snd_hdac_calc_stream_format(i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
