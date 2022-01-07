; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_vmaster_hook.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_vmaster_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_vmaster_mute_hook = type { i32, i32, %struct.hda_codec*, i32 }
%struct.snd_kcontrol = type { i32 }

@HDA_VMUTE_FOLLOW_MASTER = common dso_local global i32 0, align 4
@vmaster_hook = common dso_local global i32 0, align 4
@vmaster_mute_mode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_add_vmaster_hook(%struct.hda_codec* %0, %struct.hda_vmaster_mute_hook* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_vmaster_mute_hook*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.hda_vmaster_mute_hook* %1, %struct.hda_vmaster_mute_hook** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %10 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %15 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %47

19:                                               ; preds = %13
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %22 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %21, i32 0, i32 2
  store %struct.hda_codec* %20, %struct.hda_codec** %22, align 8
  %23 = load i32, i32* @HDA_VMUTE_FOLLOW_MASTER, align 4
  %24 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %25 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %27 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @vmaster_hook, align 4
  %30 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %31 = call i32 @snd_ctl_add_vmaster_hook(i32 %28, i32 %29, %struct.hda_vmaster_mute_hook* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %47

35:                                               ; preds = %19
  %36 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %37 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vmaster_mute_mode, %struct.hda_vmaster_mute_hook* %36)
  store %struct.snd_kcontrol* %37, %struct.snd_kcontrol** %8, align 8
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %39 = icmp ne %struct.snd_kcontrol* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %46 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %44, i32 0, %struct.snd_kcontrol* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %40, %34, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @snd_ctl_add_vmaster_hook(i32, i32, %struct.hda_vmaster_mute_hook*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.hda_vmaster_mute_hook*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
