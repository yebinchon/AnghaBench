; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc662_usi_automute_hook.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc662_usi_automute_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hda_jack_callback = type { i32 }

@PIN_VREF80 = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_callback*)* @alc662_usi_automute_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc662_usi_automute_hook(%struct.hda_codec* %0, %struct.hda_jack_callback* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_callback*, align 8
  %5 = alloca %struct.alc_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_callback* %1, %struct.hda_jack_callback** %4, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  store %struct.alc_spec* %9, %struct.alc_spec** %5, align 8
  %10 = call i32 @msleep(i32 200)
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  %13 = call i32 @snd_hda_gen_hp_automute(%struct.hda_codec* %11, %struct.hda_jack_callback* %12)
  %14 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  %15 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @PIN_VREF80, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %6, align 4
  %24 = call i32 @msleep(i32 100)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @snd_hda_codec_write(%struct.hda_codec* %25, i32 25, i32 0, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_gen_hp_automute(%struct.hda_codec*, %struct.hda_jack_callback*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
