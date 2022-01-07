; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sun4i_spdif_dev = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@SUN4I_SPDIF_TXCFG_NONAUDIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_FMT16BIT = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_FMT20BIT = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_FMT24BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Setting SPDIF clock rate for %d Hz failed!\0A\00", align 1
@SUN4I_SPDIF_FCTL = common dso_local global i32 0, align 4
@SUN4I_SPDIF_FCTL_TXIM = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_ASS = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_CHSTMODE = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @sun4i_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sun4i_spdif_dev*, align 8
  %15 = alloca %struct.platform_device*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i64 @params_rate(%struct.snd_pcm_hw_params* %16)
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = call %struct.sun4i_spdif_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.sun4i_spdif_dev* %19, %struct.sun4i_spdif_dev** %14, align 8
  %20 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %14, align 8
  %21 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %20, i32 0, i32 2
  %22 = load %struct.platform_device*, %struct.platform_device** %21, align 8
  store %struct.platform_device* %22, %struct.platform_device** %15, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_channels(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %28 [
    i32 1, label %25
    i32 2, label %25
    i32 4, label %26
  ]

25:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @SUN4I_SPDIF_TXCFG_NONAUDIO, align 4
  store i32 %27, i32* %9, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %108

31:                                               ; preds = %26, %25
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_format(%struct.snd_pcm_hw_params* %32)
  switch i32 %33, label %46 [
    i32 130, label %34
    i32 129, label %38
    i32 128, label %42
  ]

34:                                               ; preds = %31
  %35 = load i32, i32* @SUN4I_SPDIF_TXCFG_FMT16BIT, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* @SUN4I_SPDIF_TXCFG_FMT20BIT, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load i32, i32* @SUN4I_SPDIF_TXCFG_FMT24BIT, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %49

46:                                               ; preds = %31
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %108

49:                                               ; preds = %42, %38, %34
  %50 = load i64, i64* %10, align 8
  switch i64 %50, label %53 [
    i64 22050, label %51
    i64 44100, label %51
    i64 88200, label %51
    i64 176400, label %51
    i64 24000, label %52
    i64 32000, label %52
    i64 48000, label %52
    i64 96000, label %52
    i64 192000, label %52
  ]

51:                                               ; preds = %49, %49, %49, %49
  store i32 22579200, i32* %12, align 4
  br label %56

52:                                               ; preds = %49, %49, %49, %49, %49
  store i32 24576000, i32* %12, align 4
  br label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %108

56:                                               ; preds = %52, %51
  %57 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %14, align 8
  %58 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @clk_set_rate(i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %108

70:                                               ; preds = %56
  %71 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %14, align 8
  %72 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SUN4I_SPDIF_FCTL, align 4
  %75 = load i32, i32* @SUN4I_SPDIF_FCTL_TXIM, align 4
  %76 = load i32, i32* @SUN4I_SPDIF_FCTL_TXIM, align 4
  %77 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i64, i64* %10, align 8
  switch i64 %78, label %84 [
    i64 22050, label %79
    i64 24000, label %79
    i64 32000, label %80
    i64 44100, label %81
    i64 48000, label %81
    i64 88200, label %82
    i64 96000, label %82
    i64 176400, label %83
    i64 192000, label %83
  ]

79:                                               ; preds = %70, %70
  store i32 8, i32* %11, align 4
  br label %87

80:                                               ; preds = %70
  store i32 6, i32* %11, align 4
  br label %87

81:                                               ; preds = %70, %70
  store i32 4, i32* %11, align 4
  br label %87

82:                                               ; preds = %70, %70
  store i32 2, i32* %11, align 4
  br label %87

83:                                               ; preds = %70, %70
  store i32 1, i32* %11, align 4
  br label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %108

87:                                               ; preds = %83, %82, %81, %80, %79
  store i32 0, i32* %13, align 4
  %88 = load i32, i32* @SUN4I_SPDIF_TXCFG_ASS, align 4
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @SUN4I_SPDIF_TXCFG_CHSTMODE, align 4
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @SUN4I_SPDIF_TXCFG_TXRATIO(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %14, align 8
  %103 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SUN4I_SPDIF_TXCFG, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @regmap_write(i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %87, %84, %64, %53, %46, %28
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.sun4i_spdif_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_SPDIF_TXCFG_TXRATIO(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
