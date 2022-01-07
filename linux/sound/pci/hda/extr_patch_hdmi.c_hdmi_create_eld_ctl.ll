; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_create_eld_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_create_eld_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_kcontrol* }

@eld_bytes_ctl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @hdmi_create_eld_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_create_eld_ctl(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.hdmi_spec*, align 8
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  store %struct.hdmi_spec* %13, %struct.hdmi_spec** %9, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @eld_bytes_ctl, %struct.hda_codec* %14)
  store %struct.snd_kcontrol* %15, %struct.snd_kcontrol** %8, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %17 = icmp ne %struct.snd_kcontrol* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %31 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %29, i32 0, %struct.snd_kcontrol* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %38 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.TYPE_4__* @get_hdmi_pcm(%struct.hdmi_spec* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.snd_kcontrol* %37, %struct.snd_kcontrol** %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %34, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.hda_codec*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local %struct.TYPE_4__* @get_hdmi_pcm(%struct.hdmi_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
