; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_set_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_set_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sun4i_i2s = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sun4i_i2s*)* }

@.str = private unnamed_addr constant [29 x i8] c"Unsupported sample rate: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsupported oversample rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported BCLK divider: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unsupported MCLK divider: %d\0A\00", align 1
@SUN4I_I2S_CLK_DIV_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @sun4i_i2s_set_clk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_set_clk_rate(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sun4i_i2s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = call %struct.sun4i_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %17)
  store %struct.sun4i_i2s* %18, %struct.sun4i_i2s** %10, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %22 [
    i32 176400, label %20
    i32 88200, label %20
    i32 44100, label %20
    i32 22050, label %20
    i32 11025, label %20
    i32 192000, label %21
    i32 128000, label %21
    i32 96000, label %21
    i32 64000, label %21
    i32 48000, label %21
    i32 32000, label %21
    i32 24000, label %21
    i32 16000, label %21
    i32 12000, label %21
    i32 8000, label %21
  ]

20:                                               ; preds = %4, %4, %4, %4, %4
  store i32 22579200, i32* %12, align 4
  br label %30

21:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i32 24576000, i32* %12, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %113

30:                                               ; preds = %21, %20
  %31 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %32 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @clk_set_rate(i32 %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %5, align 4
  br label %113

40:                                               ; preds = %30
  %41 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %42 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @sun4i_i2s_oversample_is_valid(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %113

57:                                               ; preds = %40
  %58 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %59 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.sun4i_i2s*)*, i32 (%struct.sun4i_i2s*)** %61, align 8
  %63 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %64 = call i32 %62(%struct.sun4i_i2s* %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @sun4i_i2s_get_bclk_div(%struct.sun4i_i2s* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %57
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %113

81:                                               ; preds = %57
  %82 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %85 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sun4i_i2s_get_mclk_div(%struct.sun4i_i2s* %82, i32 %83, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %92 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %113

98:                                               ; preds = %81
  %99 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %100 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SUN4I_I2S_CLK_DIV_REG, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @SUN4I_I2S_CLK_DIV_BCLK(i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @SUN4I_I2S_CLK_DIV_MCLK(i32 %105)
  %107 = or i32 %104, %106
  %108 = call i32 @regmap_write(i32 %101, i32 %102, i32 %107)
  %109 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %10, align 8
  %110 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @regmap_field_write(i32 %111, i32 1)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %98, %90, %73, %49, %38, %22
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.sun4i_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @sun4i_i2s_oversample_is_valid(i32) #1

declare dso_local i32 @sun4i_i2s_get_bclk_div(%struct.sun4i_i2s*, i32, i32, i32, i32) #1

declare dso_local i32 @sun4i_i2s_get_mclk_div(%struct.sun4i_i2s*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_I2S_CLK_DIV_BCLK(i32) #1

declare dso_local i32 @SUN4I_I2S_CLK_DIV_MCLK(i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
