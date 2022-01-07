; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_pick_pin_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_pick_pin_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_fixup*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.snd_hda_pin_quirk = type { i32, i64, i32, i32, i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ID_NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_pick_pin_fixup(%struct.hda_codec* %0, %struct.snd_hda_pin_quirk* %1, %struct.hda_fixup* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_hda_pin_quirk*, align 8
  %7 = alloca %struct.hda_fixup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_hda_pin_quirk*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.snd_hda_pin_quirk* %1, %struct.snd_hda_pin_quirk** %6, align 8
  store %struct.hda_fixup* %2, %struct.hda_fixup** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HDA_FIXUP_ID_NOT_SET, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %66

16:                                               ; preds = %4
  %17 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %6, align 8
  store %struct.snd_hda_pin_quirk* %17, %struct.snd_hda_pin_quirk** %9, align 8
  br label %18

18:                                               ; preds = %63, %16
  %19 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %9, align 8
  %20 = getelementptr inbounds %struct.snd_hda_pin_quirk, %struct.snd_hda_pin_quirk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, -65536
  %29 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %9, align 8
  %30 = getelementptr inbounds %struct.snd_hda_pin_quirk, %struct.snd_hda_pin_quirk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 16
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %63

35:                                               ; preds = %23
  %36 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %37 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %9, align 8
  %41 = getelementptr inbounds %struct.snd_hda_pin_quirk, %struct.snd_hda_pin_quirk* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %63

45:                                               ; preds = %35
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %9, align 8
  %48 = getelementptr inbounds %struct.snd_hda_pin_quirk, %struct.snd_hda_pin_quirk* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @pin_config_match(%struct.hda_codec* %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %9, align 8
  %55 = getelementptr inbounds %struct.snd_hda_pin_quirk, %struct.snd_hda_pin_quirk* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.hda_fixup*, %struct.hda_fixup** %7, align 8
  %60 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %61 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %60, i32 0, i32 0
  store %struct.hda_fixup* %59, %struct.hda_fixup** %61, align 8
  br label %66

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %44, %34
  %64 = load %struct.snd_hda_pin_quirk*, %struct.snd_hda_pin_quirk** %9, align 8
  %65 = getelementptr inbounds %struct.snd_hda_pin_quirk, %struct.snd_hda_pin_quirk* %64, i32 1
  store %struct.snd_hda_pin_quirk* %65, %struct.snd_hda_pin_quirk** %9, align 8
  br label %18

66:                                               ; preds = %15, %53, %18
  ret void
}

declare dso_local i64 @pin_config_match(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
