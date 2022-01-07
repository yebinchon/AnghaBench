; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec.c_sun8i_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec.c_sun8i_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sun8i_codec = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @sun8i_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun8i_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sun8i_codec* @snd_soc_component_get_drvdata(i32 %10)
  store %struct.sun8i_codec* %11, %struct.sun8i_codec** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %17 [
    i32 135, label %15
    i32 136, label %16
  ]

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %20

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %16, %15
  %21 = load %struct.sun8i_codec*, %struct.sun8i_codec** %6, align 8
  %22 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %25 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %26, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %36 [
    i32 129, label %34
    i32 131, label %35
  ]

34:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %39

35:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %84

39:                                               ; preds = %35, %34
  %40 = load %struct.sun8i_codec*, %struct.sun8i_codec** %6, align 8
  %41 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %44 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %45, i32 %48)
  %50 = load %struct.sun8i_codec*, %struct.sun8i_codec** %6, align 8
  %51 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %54 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %55, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %70 [
    i32 132, label %66
    i32 130, label %67
    i32 128, label %68
    i32 134, label %69
    i32 133, label %69
  ]

66:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %73

67:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %73

68:                                               ; preds = %39
  store i32 2, i32* %7, align 4
  br label %73

69:                                               ; preds = %39, %39
  store i32 3, i32* %7, align 4
  br label %73

70:                                               ; preds = %39
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %69, %68, %67, %66
  %74 = load %struct.sun8i_codec*, %struct.sun8i_codec** %6, align 8
  %75 = getelementptr inbounds %struct.sun8i_codec, %struct.sun8i_codec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SUN8I_AIF1CLK_CTRL, align 4
  %78 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT, align 4
  %82 = shl i32 %80, %81
  %83 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %79, i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %70, %36, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.sun8i_codec* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
