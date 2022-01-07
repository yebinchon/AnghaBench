; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_acomp_pin_eld_notify.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_acomp_pin_eld_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 (%struct.hda_codec.0*, i32)* }
%struct.hda_codec.0 = type opaque

@AC_WID_PIN = common dso_local global i64 0, align 8
@SNDRV_CTL_POWER_D0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @generic_acomp_pin_eld_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_acomp_pin_eld_notify(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.hda_codec*
  store %struct.hda_codec* %11, %struct.hda_codec** %7, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 2
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %13, align 8
  store %struct.hdmi_spec* %14, %struct.hdmi_spec** %8, align 8
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %15, i32 0, i32 0
  %17 = load i32 (%struct.hda_codec.0*, i32)*, i32 (%struct.hda_codec.0*, i32)** %16, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %19 = bitcast %struct.hda_codec* %18 to %struct.hda_codec.0*
  %20 = load i32, i32* %5, align 4
  %21 = call i32 %17(%struct.hda_codec.0* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @get_wcaps(%struct.hda_codec* %26, i32 %27)
  %29 = call i64 @get_wcaps_type(i32 %28)
  %30 = load i64, i64* @AC_WID_PIN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %35 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @snd_power_get_state(i32 %36)
  %38 = load i64, i64* @SNDRV_CTL_POWER_D0, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %52

41:                                               ; preds = %33
  %42 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 0
  %44 = call i64 @snd_hdac_is_in_pm(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @check_presence_and_report(%struct.hda_codec* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %46, %40, %32, %24
  ret void
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_power_get_state(i32) #1

declare dso_local i64 @snd_hdac_is_in_pm(i32*) #1

declare dso_local i32 @check_presence_and_report(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
