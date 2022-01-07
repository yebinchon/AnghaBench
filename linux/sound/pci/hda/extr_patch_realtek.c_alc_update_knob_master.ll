; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_update_knob_master.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_update_knob_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_callback = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AC_VERB_GET_VOLUME_KNOB_CONTROL = common dso_local global i32 0, align 4
@HDA_AMP_VOLMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_callback*)* @alc_update_knob_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_update_knob_master(%struct.hda_codec* %0, %struct.hda_jack_callback* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_callback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca %struct.snd_ctl_elem_value.0*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_callback* %1, %struct.hda_jack_callback** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = call %struct.snd_kcontrol* @snd_hda_find_mixer_ctl(%struct.hda_codec* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_kcontrol* %9, %struct.snd_kcontrol** %6, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %11 = icmp ne %struct.snd_kcontrol* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_ctl_elem_value.0* @kzalloc(i32 8, i32 %14)
  store %struct.snd_ctl_elem_value.0* %15, %struct.snd_ctl_elem_value.0** %7, align 8
  %16 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %7, align 8
  %17 = icmp ne %struct.snd_ctl_elem_value.0* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %52

19:                                               ; preds = %13
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  %22 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AC_VERB_GET_VOLUME_KNOB_CONTROL, align 4
  %25 = call i32 @snd_hda_codec_read(%struct.hda_codec* %20, i32 %23, i32 0, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @HDA_AMP_VOLMASK, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %7, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value.0, %struct.snd_ctl_elem_value.0* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %29, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %7, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value.0, %struct.snd_ctl_elem_value.0* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %36, i32* %42, align 4
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  %45 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %44, align 8
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %47 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %7, align 8
  %48 = bitcast %struct.snd_ctl_elem_value.0* %47 to %struct.snd_ctl_elem_value*
  %49 = call i32 %45(%struct.snd_kcontrol* %46, %struct.snd_ctl_elem_value* %48)
  %50 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %7, align 8
  %51 = call i32 @kfree(%struct.snd_ctl_elem_value.0* %50)
  br label %52

52:                                               ; preds = %19, %18, %12
  ret void
}

declare dso_local %struct.snd_kcontrol* @snd_hda_find_mixer_ctl(%struct.hda_codec*, i8*) #1

declare dso_local %struct.snd_ctl_elem_value.0* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
