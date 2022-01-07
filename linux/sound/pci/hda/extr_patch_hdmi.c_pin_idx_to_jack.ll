; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pin_idx_to_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pin_idx_to_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_jack = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_jack* }
%struct.hdmi_spec_per_pin = type { i64, i32 }
%struct.hda_jack_tbl = type { %struct.snd_jack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_jack* (%struct.hda_codec*, %struct.hdmi_spec_per_pin*)* @pin_idx_to_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_jack* @pin_idx_to_jack(%struct.hda_codec* %0, %struct.hdmi_spec_per_pin* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec_per_pin*, align 8
  %5 = alloca %struct.hdmi_spec*, align 8
  %6 = alloca %struct.snd_jack*, align 8
  %7 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %5, align 8
  store %struct.snd_jack* null, %struct.snd_jack** %6, align 8
  %11 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %17 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.snd_jack*, %struct.snd_jack** %28, align 8
  store %struct.snd_jack* %29, %struct.snd_jack** %6, align 8
  br label %49

30:                                               ; preds = %15, %2
  %31 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %38 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %36, i32 %39)
  store %struct.hda_jack_tbl* %40, %struct.hda_jack_tbl** %7, align 8
  %41 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %42 = icmp ne %struct.hda_jack_tbl* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %45 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %44, i32 0, i32 0
  %46 = load %struct.snd_jack*, %struct.snd_jack** %45, align 8
  store %struct.snd_jack* %46, %struct.snd_jack** %6, align 8
  br label %47

47:                                               ; preds = %43, %35
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.snd_jack*, %struct.snd_jack** %6, align 8
  ret %struct.snd_jack* %50
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
