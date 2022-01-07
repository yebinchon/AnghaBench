; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_is_jack_detectable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_is_jack_detectable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i64 }

@AC_PINCAP_PRES_DETECT = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_NO_PRESENCE = common dso_local global i32 0, align 4
@AC_WCAP_UNSOL_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_jack_detectable(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %12, i32 %13)
  %15 = load i32, i32* @AC_PINCAP_PRES_DETECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %42

19:                                               ; preds = %11
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %20, i32 %21)
  %23 = call i32 @get_defcfg_misc(i32 %22)
  %24 = load i32, i32* @AC_DEFCFG_MISC_NO_PRESENCE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @get_wcaps(%struct.hda_codec* %29, i32 %30)
  %32 = load i32, i32* @AC_WCAP_UNSOL_CAP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %35, %28
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %27, %18, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_defcfg_misc(i32) #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
