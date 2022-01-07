; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_dell_xps13.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fixup_dell_xps13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }
%struct.hda_fixup = type { i32 }

@PIN_VREFHIZ = common dso_local global i32 0, align 4
@alc_shutup_dell_xps13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc_fixup_dell_xps13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_fixup_dell_xps13(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  %8 = alloca %struct.hda_input_mux*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.alc_spec*, %struct.alc_spec** %11, align 8
  store %struct.alc_spec* %12, %struct.alc_spec** %7, align 8
  %13 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %14 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store %struct.hda_input_mux* %15, %struct.hda_input_mux** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %53 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %3
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load i32, i32* @PIN_VREFHIZ, align 4
  %20 = call i32 @snd_hda_codec_set_pin_target(%struct.hda_codec* %18, i32 25, i32 %19)
  %21 = load i32, i32* @alc_shutup_dell_xps13, align 4
  %22 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %23 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %53

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %28 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %33 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 18
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %44 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %42, i32* %47, align 4
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %25

52:                                               ; preds = %41, %25
  br label %53

53:                                               ; preds = %3, %52, %17
  ret void
}

declare dso_local i32 @snd_hda_codec_set_pin_target(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
