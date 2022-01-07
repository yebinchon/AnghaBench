; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pm860x_priv = type { i32 }

@PCM_INF2_BCLK = common dso_local global i8 0, align 1
@PCM_INF2_FS = common dso_local global i8 0, align 1
@PCM_INF2_MASTER = common dso_local global i8 0, align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@PM860X_CLK_DIR_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PM860X_CLK_DIR_IN = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@PCM_EXACT_I2S = common dso_local global i8 0, align 1
@PCM_MODE_MASK = common dso_local global i8 0, align 1
@PM860X_I2S_IFACE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pm860x_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.pm860x_priv*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.pm860x_priv* %14, %struct.pm860x_priv** %7, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %15 = load i8, i8* @PCM_INF2_BCLK, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @PCM_INF2_FS, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = load i8, i8* @PCM_INF2_MASTER, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %9, align 1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %65 [
    i32 130, label %30
    i32 129, label %47
  ]

30:                                               ; preds = %2
  %31 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %32 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PM860X_CLK_DIR_OUT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8, i8* @PCM_INF2_MASTER, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %8, align 1
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %94

46:                                               ; preds = %36
  br label %68

47:                                               ; preds = %2
  %48 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %49 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PM860X_CLK_DIR_IN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8, i8* @PCM_INF2_MASTER, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, -1
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  br label %64

61:                                               ; preds = %47
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %94

64:                                               ; preds = %53
  br label %68

65:                                               ; preds = %2
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %94

68:                                               ; preds = %64, %46
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %79 [
    i32 128, label %72
  ]

72:                                               ; preds = %68
  %73 = load i8, i8* @PCM_EXACT_I2S, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %8, align 1
  br label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %94

82:                                               ; preds = %72
  %83 = load i8, i8* @PCM_MODE_MASK, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %9, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %9, align 1
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %90 = load i32, i32* @PM860X_I2S_IFACE_2, align 4
  %91 = load i8, i8* %9, align 1
  %92 = load i8, i8* %8, align 1
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i8 zeroext %91, i8 zeroext %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %82, %79, %65, %61, %43
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
