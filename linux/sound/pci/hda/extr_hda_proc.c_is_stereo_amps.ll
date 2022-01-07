; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_is_stereo_amps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_is_stereo_amps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_WCAP_STEREO = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_WID_AUD_MIX = common dso_local global i64 0, align 8
@AC_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32)* @is_stereo_amps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_stereo_amps(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @AC_WCAP_STEREO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %49

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @HDA_INPUT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @get_wcaps_type(i32 %26)
  %28 = load i64, i64* @AC_WID_AUD_MIX, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %21, %18
  store i32 0, i32* %6, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @snd_hda_get_raw_connections(%struct.hda_codec* %32, i32 %33, i32* %12, i32 1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %49

37:                                               ; preds = %31
  %38 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @AC_PAR_AUDIO_WIDGET_CAP, align 4
  %41 = call i32 @snd_hda_param_read(%struct.hda_codec* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @AC_WCAP_STEREO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %37, %36, %30, %17
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i64 @snd_hda_get_raw_connections(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
