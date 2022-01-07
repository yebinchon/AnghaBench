; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc5505_dsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc5505_dsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_VERB_SET_CODEC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc5505_dsp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc5505_dsp_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = call i32 @alc5505_dsp_halt(%struct.hda_codec* %4)
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = call i32 @alc5505_dsp_back_from_halt(%struct.hda_codec* %6)
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @alc5505_coef_set(%struct.hda_codec* %8, i32 25008, i32 23316)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @alc5505_coef_set(%struct.hda_codec* %10, i32 25008, i32 23318)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @alc5505_coef_set(%struct.hda_codec* %12, i32 25012, i32 68365056)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @alc5505_coef_set(%struct.hda_codec* %14, i32 25012, i32 68365058)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @alc5505_coef_set(%struct.hda_codec* %16, i32 25016, i32 69153536)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @alc5505_coef_set(%struct.hda_codec* %18, i32 25016, i32 69153538)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* @AC_VERB_SET_CODEC_RESET, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %20, i32 81, i32 0, i32 %21, i32 0)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @alc5505_coef_set(%struct.hda_codec* %23, i32 25016, i32 68891394)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @alc5505_coef_set(%struct.hda_codec* %25, i32 25016, i32 68629250)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = call i32 @alc5505_coef_set(%struct.hda_codec* %27, i32 25016, i32 68563714)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @alc5505_coef_set(%struct.hda_codec* %29, i32 34816, i32 881537675)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @alc5505_coef_set(%struct.hda_codec* %31, i32 34824, i32 131106)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @alc5505_coef_set(%struct.hda_codec* %33, i32 34840, i32 1024)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @alc5505_coef_get(%struct.hda_codec* %35, i32 25088)
  %37 = ashr i32 %36, 16
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ule i32 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @alc5505_coef_set(%struct.hda_codec* %41, i32 25120, i32 537002255)
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = call i32 @alc5505_coef_set(%struct.hda_codec* %44, i32 25120, i32 1610744207)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = call i32 @alc5505_coef_set(%struct.hda_codec* %47, i32 25004, i32 89466352)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = call i32 @alc5505_coef_set(%struct.hda_codec* %49, i32 25024, i32 304283776)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = call i32 @alc5505_coef_set(%struct.hda_codec* %51, i32 25012, i32 68037378)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = call i32 @alc5505_coef_set(%struct.hda_codec* %53, i32 25020, i32 16921848)
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = call i32 @alc5505_coef_set(%struct.hda_codec* %55, i32 34828, i32 4)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = call i32 @alc5505_coef_set(%struct.hda_codec* %57, i32 34828, i32 3)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = call i32 @alc5505_coef_set(%struct.hda_codec* %59, i32 34828, i32 16)
  ret void
}

declare dso_local i32 @alc5505_dsp_halt(%struct.hda_codec*) #1

declare dso_local i32 @alc5505_dsp_back_from_halt(%struct.hda_codec*) #1

declare dso_local i32 @alc5505_coef_set(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc5505_coef_get(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
