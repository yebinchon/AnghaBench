; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_snd_hda_mixer_amp_switch_put_beep.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_beep.c_snd_hda_mixer_amp_switch_put_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { %struct.hda_beep* }
%struct.hda_beep = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_mixer_amp_switch_put_beep(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_beep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hda_beep*, %struct.hda_beep** %14, align 8
  store %struct.hda_beep* %15, %struct.hda_beep** %7, align 8
  %16 = load %struct.hda_beep*, %struct.hda_beep** %7, align 8
  %17 = icmp ne %struct.hda_beep* %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call i32 @get_amp_channels(%struct.snd_kcontrol* %19)
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %10, align 8
  br label %38

38:                                               ; preds = %29, %18
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = or i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %42, %38
  %50 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @snd_hda_enable_beep_device(%struct.hda_codec* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %2
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %55 = call i32 @ctl_has_mute(%struct.snd_kcontrol* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %62

58:                                               ; preds = %53
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %60 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %61 = call i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol* %59, %struct.snd_ctl_elem_value* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_enable_beep_device(%struct.hda_codec*, i32) #1

declare dso_local i32 @ctl_has_mute(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
