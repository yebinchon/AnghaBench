; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_is_stereo_amps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_is_stereo_amps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_WCAP_STEREO = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_WID_AUD_MIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @is_stereo_amps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_stereo_amps(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @get_wcaps(%struct.hda_codec* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AC_WCAP_STEREO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @HDA_INPUT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @get_wcaps_type(i32 %23)
  %25 = load i64, i64* @AC_WID_AUD_MIX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %18
  store i32 0, i32* %4, align 4
  br label %50

28:                                               ; preds = %22
  %29 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %29, i32 %30)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %50

34:                                               ; preds = %28
  %35 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @snd_hda_get_connections(%struct.hda_codec* %35, i32 %36, i32* %9, i32 1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %50

40:                                               ; preds = %34
  %41 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @get_wcaps(%struct.hda_codec* %41, i32 %42)
  %44 = load i32, i32* @AC_WCAP_STEREO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %40, %39, %33, %27, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_hda_get_connections(%struct.hda_codec*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
