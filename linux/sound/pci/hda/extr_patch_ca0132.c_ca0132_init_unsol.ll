; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_unsol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_unsol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32 }

@hp_callback = common dso_local global i32 0, align 4
@amic_callback = common dso_local global i32 0, align 4
@UNSOL_TAG_DSP = common dso_local global i32 0, align 4
@ca0132_process_dsp_response = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_init_unsol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_init_unsol(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %9 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @hp_callback, align 4
  %12 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %7, i32 %10, i32 %11)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @amic_callback, align 4
  %18 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %13, i32 %16, i32 %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = load i32, i32* @UNSOL_TAG_DSP, align 4
  %21 = load i32, i32* @ca0132_process_dsp_response, align 4
  %22 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %19, i32 %20, i32 %21)
  %23 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %24 = call i64 @ca0132_use_alt_functions(%struct.ca0132_spec* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %29 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @hp_callback, align 4
  %32 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %27, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
