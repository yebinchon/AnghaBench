; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_reprogram_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_reprogram_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32 }

@AC_USRSP_EN = common dso_local global i32 0, align 4
@AC_VERB_SET_UNSOLICITED_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @reprogram_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_jack_detect(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_jack_tbl*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %9, i32 %10)
  store %struct.hda_jack_tbl* %11, %struct.hda_jack_tbl** %7, align 8
  %12 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %13 = icmp ne %struct.hda_jack_tbl* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @AC_USRSP_EN, align 4
  %20 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %21 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ 0, %17 ], [ %23, %18 ]
  store i32 %25, i32* %8, align 4
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AC_VERB_SET_UNSOLICITED_ENABLE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %26, i32 %27, i32 0, i32 %28, i32 %29)
  br label %39

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @snd_hda_jack_detect_enable(%struct.hda_codec* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %24
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
