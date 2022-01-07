; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c__snd_hda_set_pin_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c__snd_hda_set_pin_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_snd_hda_set_pin_ctl(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @snd_hda_correct_pin_ctl(%struct.hda_codec* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @snd_hda_codec_set_pin_target(%struct.hda_codec* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %21, i32 %22, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @snd_hda_codec_write(%struct.hda_codec* %27, i32 %28, i32 0, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @snd_hda_correct_pin_ctl(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_set_pin_target(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
