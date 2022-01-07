; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc298_fixup_huawei_mbx_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc298_fixup_huawei_mbx_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_alc298_mbxinit = type { i32, i32, i64 }
%struct.hda_codec = type { i32 }
%struct.hda_fixup = type { i32 }

@alc298_fixup_huawei_mbx_stereo.dac_init = internal constant [37 x %struct.hda_alc298_mbxinit] [%struct.hda_alc298_mbxinit { i32 12, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 13, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 14, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 15, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 16, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 26, i32 64, i64 0 }, %struct.hda_alc298_mbxinit { i32 27, i32 130, i64 0 }, %struct.hda_alc298_mbxinit { i32 28, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 29, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 30, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 31, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 32, i32 194, i64 0 }, %struct.hda_alc298_mbxinit { i32 33, i32 200, i64 0 }, %struct.hda_alc298_mbxinit { i32 34, i32 38, i64 0 }, %struct.hda_alc298_mbxinit { i32 35, i32 36, i64 0 }, %struct.hda_alc298_mbxinit { i32 39, i32 255, i64 0 }, %struct.hda_alc298_mbxinit { i32 40, i32 255, i64 0 }, %struct.hda_alc298_mbxinit { i32 41, i32 255, i64 0 }, %struct.hda_alc298_mbxinit { i32 42, i32 143, i64 0 }, %struct.hda_alc298_mbxinit { i32 43, i32 2, i64 0 }, %struct.hda_alc298_mbxinit { i32 44, i32 72, i64 0 }, %struct.hda_alc298_mbxinit { i32 45, i32 52, i64 0 }, %struct.hda_alc298_mbxinit { i32 46, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 47, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 48, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 49, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 50, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 51, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 52, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 53, i32 1, i64 0 }, %struct.hda_alc298_mbxinit { i32 54, i32 147, i64 0 }, %struct.hda_alc298_mbxinit { i32 55, i32 12, i64 0 }, %struct.hda_alc298_mbxinit { i32 56, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 57, i32 0, i64 0 }, %struct.hda_alc298_mbxinit { i32 58, i32 248, i64 0 }, %struct.hda_alc298_mbxinit { i32 56, i32 128, i64 0 }, %struct.hda_alc298_mbxinit zeroinitializer], align 16
@HDA_FIXUP_ACT_INIT = common dso_local global i32 0, align 4
@AC_VERB_SET_DIGI_CONVERT_3 = common dso_local global i32 0, align 4
@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_SET_PROC_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc298_fixup_huawei_mbx_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc298_fixup_huawei_mbx_stereo(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_alc298_mbxinit*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @HDA_FIXUP_ACT_INIT, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %48

12:                                               ; preds = %3
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_3, align 4
  %15 = call i32 @snd_hda_codec_write(%struct.hda_codec* %13, i32 6, i32 0, i32 %14, i32 0)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_3, align 4
  %18 = call i32 @snd_hda_codec_write(%struct.hda_codec* %16, i32 6, i32 0, i32 %17, i32 128)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = call i32 @alc_write_coef_idx(%struct.hda_codec* %19, i32 38, i32 61440)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = call i32 @alc_write_coef_idx(%struct.hda_codec* %21, i32 34, i32 49)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %24 = call i32 @alc_write_coef_idx(%struct.hda_codec* %23, i32 35, i32 11)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = call i32 @alc_write_coef_idx(%struct.hda_codec* %25, i32 37, i32 0)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %29 = call i32 @snd_hda_codec_write(%struct.hda_codec* %27, i32 32, i32 0, i32 %28, i32 38)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = load i32, i32* @AC_VERB_SET_PROC_COEF, align 4
  %32 = call i32 @snd_hda_codec_write(%struct.hda_codec* %30, i32 32, i32 0, i32 %31, i32 45072)
  store %struct.hda_alc298_mbxinit* getelementptr inbounds ([37 x %struct.hda_alc298_mbxinit], [37 x %struct.hda_alc298_mbxinit]* @alc298_fixup_huawei_mbx_stereo.dac_init, i64 0, i64 0), %struct.hda_alc298_mbxinit** %7, align 8
  br label %33

33:                                               ; preds = %45, %12
  %34 = load %struct.hda_alc298_mbxinit*, %struct.hda_alc298_mbxinit** %7, align 8
  %35 = getelementptr inbounds %struct.hda_alc298_mbxinit, %struct.hda_alc298_mbxinit* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load %struct.hda_alc298_mbxinit*, %struct.hda_alc298_mbxinit** %7, align 8
  %41 = load %struct.hda_alc298_mbxinit*, %struct.hda_alc298_mbxinit** %7, align 8
  %42 = icmp eq %struct.hda_alc298_mbxinit* %41, getelementptr inbounds ([37 x %struct.hda_alc298_mbxinit], [37 x %struct.hda_alc298_mbxinit]* @alc298_fixup_huawei_mbx_stereo.dac_init, i64 0, i64 0)
  %43 = zext i1 %42 to i32
  %44 = call i32 @alc298_huawei_mbx_stereo_seq(%struct.hda_codec* %39, %struct.hda_alc298_mbxinit* %40, i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load %struct.hda_alc298_mbxinit*, %struct.hda_alc298_mbxinit** %7, align 8
  %47 = getelementptr inbounds %struct.hda_alc298_mbxinit, %struct.hda_alc298_mbxinit* %46, i32 1
  store %struct.hda_alc298_mbxinit* %47, %struct.hda_alc298_mbxinit** %7, align 8
  br label %33

48:                                               ; preds = %11, %33
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @alc298_huawei_mbx_stereo_seq(%struct.hda_codec*, %struct.hda_alc298_mbxinit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
