; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_dmic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32* }

@VENDOR_CHIPIO_DMIC_MCLK_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_DMIC_PIN_SET = common dso_local global i32 0, align 4
@QUIRK_ALIENWARE_M17XR4 = common dso_local global i64 0, align 8
@VENDOR_CHIPIO_DMIC_CTL_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_init_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_init_dmic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %10 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VENDOR_CHIPIO_DMIC_MCLK_SET, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @snd_hda_codec_write(%struct.hda_codec* %8, i32 %13, i32 0, i32 %14, i32 %15)
  store i32 131, i32* %4, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %19 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VENDOR_CHIPIO_DMIC_PIN_SET, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @snd_hda_codec_write(%struct.hda_codec* %17, i32 %22, i32 0, i32 %23, i32 %24)
  %26 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %27 = call i64 @ca0132_quirk(%struct.ca0132_spec* %26)
  %28 = load i64, i64* @QUIRK_ALIENWARE_M17XR4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 51, i32* %4, align 4
  br label %32

31:                                               ; preds = %1
  store i32 35, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %35 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %38 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VENDOR_CHIPIO_DMIC_CTL_SET, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @snd_hda_codec_write(%struct.hda_codec* %36, i32 %41, i32 0, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @ca0132_quirk(%struct.ca0132_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
