; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.hdmi_codec_daifmt* }
%struct.hdmi_codec_daifmt = type { i32, i32, i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@HDMI_I2S = common dso_local global i32 0, align 4
@HDMI_DSP_A = common dso_local global i32 0, align 4
@HDMI_DSP_B = common dso_local global i32 0, align 4
@HDMI_RIGHT_J = common dso_local global i32 0, align 4
@HDMI_LEFT_J = common dso_local global i32 0, align 4
@HDMI_AC97 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid DAI interface format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @hdmi_codec_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_codec_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_codec_daifmt*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 1
  %9 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %8, align 8
  store %struct.hdmi_codec_daifmt* %9, %struct.hdmi_codec_daifmt** %6, align 8
  %10 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %11 = call i32 @memset(%struct.hdmi_codec_daifmt* %10, i32 0, i32 20)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %27 [
    i32 140, label %15
    i32 138, label %20
    i32 139, label %23
    i32 137, label %26
  ]

15:                                               ; preds = %2
  %16 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %17 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %19 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %22 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %25 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %30

26:                                               ; preds = %2
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %26, %23, %20, %15
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 130, label %35
    i32 132, label %38
    i32 133, label %41
  ]

34:                                               ; preds = %30
  br label %46

35:                                               ; preds = %30
  %36 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %37 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %40 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %39, i32 0, i32 3
  store i32 1, i32* %40, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %43 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %41, %38, %35, %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %74 [
    i32 134, label %50
    i32 136, label %54
    i32 135, label %58
    i32 128, label %62
    i32 131, label %66
    i32 141, label %70
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @HDMI_I2S, align 4
  %52 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %53 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %81

54:                                               ; preds = %46
  %55 = load i32, i32* @HDMI_DSP_A, align 4
  %56 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %57 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  br label %81

58:                                               ; preds = %46
  %59 = load i32, i32* @HDMI_DSP_B, align 4
  %60 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %61 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %81

62:                                               ; preds = %46
  %63 = load i32, i32* @HDMI_RIGHT_J, align 4
  %64 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %65 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %81

66:                                               ; preds = %46
  %67 = load i32, i32* @HDMI_LEFT_J, align 4
  %68 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %69 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  br label %81

70:                                               ; preds = %46
  %71 = load i32, i32* @HDMI_AC97, align 4
  %72 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %6, align 8
  %73 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  br label %81

74:                                               ; preds = %46
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %70, %66, %62, %58, %54, %50
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %74, %27
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.hdmi_codec_daifmt*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
