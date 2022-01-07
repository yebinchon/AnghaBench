; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_eapd_power_filter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_eapd_power_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_WID_PIN = common dso_local global i64 0, align 8
@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@AC_VERB_GET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_eapd_power_filter(%struct.hda_codec* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %3
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AC_PWRST_D3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @get_wcaps(%struct.hda_codec* %29, i64 %30)
  %32 = call i64 @get_wcaps_type(i32 %31)
  %33 = load i64, i64* @AC_WID_PIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %36, i64 %37)
  %39 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @AC_VERB_GET_EAPD_BTLENABLE, align 4
  %46 = call i32 @snd_hda_codec_read(%struct.hda_codec* %43, i64 %44, i32 0, i32 %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %35, %28, %24
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %50, %22
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
