; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_set_eapd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_set_eapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_WID_PIN = common dso_local global i64 0, align 8
@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@AC_VERB_SET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @set_eapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_eapd(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @get_wcaps(%struct.hda_codec* %7, i32 %8)
  %10 = call i64 @get_wcaps_type(i32 %9)
  %11 = load i64, i64* @AC_WID_PIN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %15, i32 %16)
  %18 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 0
  %29 = call i32 @snd_hda_codec_write(%struct.hda_codec* %22, i32 %23, i32 0, i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %13, %21, %14
  ret void
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
