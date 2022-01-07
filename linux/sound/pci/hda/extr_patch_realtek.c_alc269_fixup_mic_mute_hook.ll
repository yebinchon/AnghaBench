; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_mic_mute_hook.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_mic_mute_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64, i64 }

@AC_PINCTL_VREFEN = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_HIZ = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @alc269_fixup_mic_mute_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fixup_mic_mute_hook(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.alc_spec*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hda_codec*
  store %struct.hda_codec* %9, %struct.hda_codec** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.alc_spec*, %struct.alc_spec** %11, align 8
  store %struct.alc_spec* %12, %struct.alc_spec** %6, align 8
  %13 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %14 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %24 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %25 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %23, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @AC_PINCTL_VREF_HIZ, align 4
  br label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @AC_PINCTL_VREF_80, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %43 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = call i32 @snd_hda_power_up_pm(%struct.hda_codec* %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %50 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %51 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %49, i64 %52, i32 %53)
  %55 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %56 = call i32 @snd_hda_power_down_pm(%struct.hda_codec* %55)
  br label %57

57:                                               ; preds = %46, %38
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_power_up_pm(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_power_down_pm(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
