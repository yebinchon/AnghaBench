; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@AC_VERB_GET_POWER_STATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AC_VERB_GET_PROC_COEF = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_FAKE_MUTE = common dso_local global i32 0, align 4
@AC_PWRST_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @hda_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hdac_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.hdac_device*
  store %struct.hdac_device* %13, %struct.hdac_device** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_verb(i32 %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %21 = call i32 @codec_pm_lock(%struct.hdac_device* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %30 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 28
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @is_stereo_amp_verb(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @hda_reg_read_stereo_amp(%struct.hdac_device* %39, i32 %40, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %90

43:                                               ; preds = %28
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @AC_VERB_GET_PROC_COEF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @hda_reg_read_coef(%struct.hdac_device* %48, i32 %49, i32* %50)
  store i32 %51, i32* %10, align 4
  br label %90

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 1792
  %55 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @AC_AMP_FAKE_MUTE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %63, i32 %64, i32 0, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %90

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AC_PWRST_ERROR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  store i32 -1, i32* %81, align 4
  br label %88

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = lshr i32 %84, 4
  %86 = and i32 %85, 15
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %80
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %69, %47, %38
  %91 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @codec_pm_unlock(%struct.hdac_device* %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @get_verb(i32) #1

declare dso_local i32 @codec_pm_lock(%struct.hdac_device*) #1

declare dso_local i64 @is_stereo_amp_verb(i32) #1

declare dso_local i32 @hda_reg_read_stereo_amp(%struct.hdac_device*, i32, i32*) #1

declare dso_local i32 @hda_reg_read_coef(%struct.hdac_device*, i32, i32*) #1

declare dso_local i32 @snd_hdac_exec_verb(%struct.hdac_device*, i32, i32, i32*) #1

declare dso_local i32 @codec_pm_unlock(%struct.hdac_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
