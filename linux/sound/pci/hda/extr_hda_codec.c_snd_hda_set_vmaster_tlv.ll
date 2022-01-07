; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_set_vmaster_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_set_vmaster_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_AMPCAP_NUM_STEPS = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_SCALE = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVO_TYPE = common dso_local global i64 0, align 8
@SNDRV_CTL_TLVO_LEN = common dso_local global i64 0, align 8
@SNDRV_CTL_TLVO_DB_SCALE_MIN = common dso_local global i64 0, align 8
@SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_set_vmaster_tlv(%struct.hda_codec* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @query_amp_caps(%struct.hda_codec* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AC_AMPCAP_NUM_STEPS, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AC_AMPCAP_STEP_SIZE, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %27, 25
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @SNDRV_CTL_TLVT_DB_SCALE, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* @SNDRV_CTL_TLVO_TYPE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* @SNDRV_CTL_TLVO_LEN, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 8, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* @SNDRV_CTL_TLVO_DB_SCALE_MIN, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* @SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  ret void
}

declare dso_local i32 @query_amp_caps(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
