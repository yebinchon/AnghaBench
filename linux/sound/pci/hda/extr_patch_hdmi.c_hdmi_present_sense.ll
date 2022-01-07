; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_present_sense.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_present_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spec_per_pin = type { %struct.hda_codec* }
%struct.hda_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_spec_per_pin*, i32)* @hdmi_present_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_present_sense(%struct.hdmi_spec_per_pin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_spec_per_pin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.hdmi_spec_per_pin* %0, %struct.hdmi_spec_per_pin** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %9 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %8, i32 0, i32 0
  %10 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  store %struct.hda_codec* %10, %struct.hda_codec** %6, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = call i32 @codec_has_acomp(%struct.hda_codec* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %16 = call i32 @snd_hda_power_up_pm(%struct.hda_codec* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = call i32 @hda_codec_dev(%struct.hda_codec* %20)
  %22 = call i64 @pm_runtime_suspended(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %26 = call i32 @snd_hda_power_down_pm(%struct.hda_codec* %25)
  store i32 0, i32* %3, align 4
  br label %39

27:                                               ; preds = %19, %14
  %28 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @hdmi_present_sense_via_verbs(%struct.hdmi_spec_per_pin* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %32 = call i32 @snd_hda_power_down_pm(%struct.hda_codec* %31)
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %35 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %36 = call i32 @sync_eld_via_acomp(%struct.hda_codec* %34, %struct.hdmi_spec_per_pin* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @codec_has_acomp(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_up_pm(%struct.hda_codec*) #1

declare dso_local i64 @pm_runtime_suspended(i32) #1

declare dso_local i32 @hda_codec_dev(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_down_pm(%struct.hda_codec*) #1

declare dso_local i32 @hdmi_present_sense_via_verbs(%struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @sync_eld_via_acomp(%struct.hda_codec*, %struct.hdmi_spec_per_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
