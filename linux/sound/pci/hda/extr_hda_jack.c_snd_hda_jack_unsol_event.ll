; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_unsol_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_unsol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32 }

@AC_UNSOL_RES_TAG = common dso_local global i32 0, align 4
@AC_UNSOL_RES_TAG_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_jack_unsol_event(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_jack_tbl*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AC_UNSOL_RES_TAG, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @AC_UNSOL_RES_TAG_SHIFT, align 4
  %11 = lshr i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec* %12, i32 %13)
  store %struct.hda_jack_tbl* %14, %struct.hda_jack_tbl** %5, align 8
  %15 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %16 = icmp ne %struct.hda_jack_tbl* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %20 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %24 = call i32 @call_jack_callback(%struct.hda_codec* %21, i32 %22, %struct.hda_jack_tbl* %23)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = call i32 @snd_hda_jack_report_sync(%struct.hda_codec* %25)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec*, i32) #1

declare dso_local i32 @call_jack_callback(%struct.hda_codec*, i32, %struct.hda_jack_tbl*) #1

declare dso_local i32 @snd_hda_jack_report_sync(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
