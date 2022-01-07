; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_detect_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_detect_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i64 }

@HDA_JACK_PHANTOM = common dso_local global i32 0, align 4
@AC_PINSENSE_PRESENCE = common dso_local global i32 0, align 4
@HDA_JACK_PRESENT = common dso_local global i32 0, align 4
@HDA_JACK_NOT_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_jack_detect_state(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %7, i32 %8)
  store %struct.hda_jack_tbl* %9, %struct.hda_jack_tbl** %6, align 8
  %10 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %11 = icmp ne %struct.hda_jack_tbl* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %14 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @HDA_JACK_PHANTOM, align 4
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %12, %2
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @snd_hda_pin_sense(%struct.hda_codec* %20, i32 %21)
  %23 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @HDA_JACK_PRESENT, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @HDA_JACK_NOT_PRESENT, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pin_sense(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
