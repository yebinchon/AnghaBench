; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_patch_nvhdmi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_patch_nvhdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@nvhdmi_chmap_cea_alloc_validate_get_type = common dso_local global i32 0, align 4
@nvhdmi_chmap_validate = common dso_local global i32 0, align 4
@nvhdmi_audio_ops = common dso_local global i32 0, align 4
@nvhdmi_port2pin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_nvhdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_nvhdmi(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @patch_generic_hdmi(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %14, align 8
  store %struct.hdmi_spec* %15, %struct.hdmi_spec** %4, align 8
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @nvhdmi_chmap_cea_alloc_validate_get_type, align 4
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @nvhdmi_chmap_validate, align 4
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* @nvhdmi_port2pin, align 4
  %32 = call i32 @generic_acomp_init(%struct.hda_codec* %30, i32* @nvhdmi_audio_ops, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %12, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @patch_generic_hdmi(%struct.hda_codec*) #1

declare dso_local i32 @generic_acomp_init(%struct.hda_codec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
