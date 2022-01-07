; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_add_hdmi_jack_kctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_add_hdmi_jack_kctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hdmi_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_jack* }
%struct.snd_jack = type { i32, %struct.TYPE_2__* }

@SND_JACK_AVOUT = common dso_local global i32 0, align 4
@free_hdmi_jack_priv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.hdmi_spec*, i32, i8*)* @add_hdmi_jack_kctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_hdmi_jack_kctl(%struct.hda_codec* %0, %struct.hdmi_spec* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.snd_jack*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.hdmi_spec* %1, %struct.hdmi_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* @SND_JACK_AVOUT, align 4
  %17 = call i32 @snd_jack_new(i32 %14, i8* %15, i32 %16, %struct.snd_jack** %10, i32 1, i32 0)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.snd_jack*, %struct.snd_jack** %10, align 8
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.snd_jack* %23, %struct.snd_jack** %30, align 8
  %31 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = load %struct.snd_jack*, %struct.snd_jack** %10, align 8
  %38 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %37, i32 0, i32 1
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load i32, i32* @free_hdmi_jack_priv, align 4
  %40 = load %struct.snd_jack*, %struct.snd_jack** %10, align 8
  %41 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %22, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @snd_jack_new(i32, i8*, i32, %struct.snd_jack**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
