; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_find_ext_mic_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_find_ext_mic_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@AUTO_PIN_MIC = common dso_local global i64 0, align 8
@INPUT_PIN_ATTR_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @find_ext_mic_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ext_mic_pin(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.alc_spec*, %struct.alc_spec** %10, align 8
  store %struct.alc_spec* %11, %struct.alc_spec** %4, align 8
  %12 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %13 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.auto_pin_cfg* %14, %struct.auto_pin_cfg** %5, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %52, %1
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AUTO_PIN_MIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %52

33:                                               ; preds = %21
  %34 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @snd_hda_get_input_pin_attr(i32 %45)
  %47 = load i64, i64* @INPUT_PIN_ATTR_INT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %52

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %49, %32
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %15

55:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_hda_get_input_pin_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
