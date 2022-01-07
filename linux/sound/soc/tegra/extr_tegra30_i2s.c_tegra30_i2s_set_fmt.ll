; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_i2s.c_tegra30_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_i2s.c_tegra30_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.tegra30_i2s = type { i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_MASTER_ENABLE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_FRAME_FORMAT_MASK = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_LRCK_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_FRAME_FORMAT_FSYNC = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_LRCK_L_LOW = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_LRCK_R_LOW = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK = common dso_local global i32 0, align 4
@TEGRA30_I2S_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @tegra30_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra30_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra30_i2s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.tegra30_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.tegra30_i2s* %10, %struct.tegra30_i2s** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %15 [
    i32 129, label %14
  ]

14:                                               ; preds = %2
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %14
  %19 = load i32, i32* @TEGRA30_I2S_CTRL_MASTER_ENABLE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %30 [
    i32 134, label %25
    i32 135, label %29
  ]

25:                                               ; preds = %18
  %26 = load i32, i32* @TEGRA30_I2S_CTRL_MASTER_ENABLE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %18
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @TEGRA30_I2S_CTRL_FRAME_FORMAT_MASK, align 4
  %35 = load i32, i32* @TEGRA30_I2S_CTRL_LRCK_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %77 [
    i32 133, label %42
    i32 132, label %49
    i32 131, label %56
    i32 128, label %63
    i32 130, label %70
  ]

42:                                               ; preds = %33
  %43 = load i32, i32* @TEGRA30_I2S_CTRL_FRAME_FORMAT_FSYNC, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @TEGRA30_I2S_CTRL_LRCK_L_LOW, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %80

49:                                               ; preds = %33
  %50 = load i32, i32* @TEGRA30_I2S_CTRL_FRAME_FORMAT_FSYNC, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @TEGRA30_I2S_CTRL_LRCK_R_LOW, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %80

56:                                               ; preds = %33
  %57 = load i32, i32* @TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @TEGRA30_I2S_CTRL_LRCK_L_LOW, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %80

63:                                               ; preds = %33
  %64 = load i32, i32* @TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @TEGRA30_I2S_CTRL_LRCK_L_LOW, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %80

70:                                               ; preds = %33
  %71 = load i32, i32* @TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @TEGRA30_I2S_CTRL_LRCK_L_LOW, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %80

77:                                               ; preds = %33
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %96

80:                                               ; preds = %70, %63, %56, %49, %42
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pm_runtime_get_sync(i32 %83)
  %85 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %6, align 8
  %86 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TEGRA30_I2S_CTRL, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pm_runtime_put(i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %80, %77, %30, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.tegra30_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
