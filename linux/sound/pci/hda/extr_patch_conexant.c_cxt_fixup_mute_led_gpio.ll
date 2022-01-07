; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_fixup_mute_led_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_fixup_mute_led_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32, i32, i32 }
%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hda_fixup = type { i32 }

@cxt_fixup_mute_led_gpio.gpio_init = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i32 1, i32 128, i32 3 }, %struct.hda_verb { i32 1, i32 129, i32 3 }, %struct.hda_verb zeroinitializer], align 16
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@cxt_fixup_gpio_mute_hook = common dso_local global i32 0, align 4
@cxt_gpio_micmute_update = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @cxt_fixup_mute_led_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt_fixup_mute_led_gpio(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.conexant_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.conexant_spec*, %struct.conexant_spec** %9, align 8
  store %struct.conexant_spec* %10, %struct.conexant_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32, i32* @cxt_fixup_gpio_mute_hook, align 4
  %16 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %17 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  %20 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %21 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %23 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %25 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %27 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %26, i32 0, i32 1
  store i32 2, i32* %27, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = load i32, i32* @cxt_gpio_micmute_update, align 4
  %30 = call i32 @snd_hda_gen_add_micmute_led(%struct.hda_codec* %28, i32 %29)
  br label %31

31:                                               ; preds = %14, %3
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %32, %struct.hda_verb* getelementptr inbounds ([3 x %struct.hda_verb], [3 x %struct.hda_verb]* @cxt_fixup_mute_led_gpio.gpio_init, i64 0, i64 0))
  %34 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %35 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @snd_hda_codec_write(%struct.hda_codec* %39, i32 1, i32 0, i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @snd_hda_gen_add_micmute_led(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, %struct.hda_verb*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
