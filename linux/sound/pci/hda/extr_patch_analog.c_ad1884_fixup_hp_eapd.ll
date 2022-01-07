; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1884_fixup_hp_eapd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1884_fixup_hp_eapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hda_fixup = type { i32 }

@ad1884_vmaster_hp_gpio_hook = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@AUTO_PIN_SPEAKER_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @ad1884_fixup_hp_eapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1884_fixup_hp_eapd(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad198x_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ad198x_spec*, %struct.ad198x_spec** %9, align 8
  store %struct.ad198x_spec* %10, %struct.ad198x_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %59 [
    i32 129, label %12
    i32 128, label %30
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @ad1884_vmaster_hp_gpio_hook, align 4
  %14 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %15 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  %18 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %19 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = load i32, i32* @AC_VERB_SET_GPIO_MASK, align 4
  %23 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %21, i32 1, i32 0, i32 %22, i32 2)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = load i32, i32* @AC_VERB_SET_GPIO_DIRECTION, align 4
  %26 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %24, i32 1, i32 0, i32 %25, i32 2)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %29 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %27, i32 1, i32 0, i32 %28, i32 2)
  br label %59

30:                                               ; preds = %3
  %31 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %32 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AUTO_PIN_SPEAKER_OUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %40 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %47 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %58

48:                                               ; preds = %30
  %49 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %50 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %57 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %38
  br label %59

59:                                               ; preds = %3, %58, %12
  ret void
}

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
