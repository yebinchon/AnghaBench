; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_pcm_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_pcm_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pm860x_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCM_INF2_BCLK = common dso_local global i8 0, align 1
@PCM_INF2_FS = common dso_local global i8 0, align 1
@PCM_INF2_MASTER = common dso_local global i8 0, align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@PM860X_CLK_DIR_OUT = common dso_local global i32 0, align 4
@PM860X_CLK_DIR_IN = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@PCM_EXACT_I2S = common dso_local global i8 0, align 1
@PCM_MODE_MASK = common dso_local global i8 0, align 1
@PM860X_PCM_IFACE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pm860x_pcm_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_pcm_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.pm860x_priv*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.pm860x_priv* %15, %struct.pm860x_priv** %7, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load i8, i8* @PCM_INF2_BCLK, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @PCM_INF2_FS, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i8, i8* @PCM_INF2_MASTER, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* %9, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %9, align 1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %62 [
    i32 131, label %33
    i32 130, label %33
    i32 129, label %47
  ]

33:                                               ; preds = %2, %2
  %34 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %35 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PM860X_CLK_DIR_OUT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8, i8* @PCM_INF2_MASTER, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %39, %33
  br label %62

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
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %53, %47
  br label %62

62:                                               ; preds = %2, %61, %46
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %73 [
    i32 128, label %66
  ]

66:                                               ; preds = %62
  %67 = load i8, i8* @PCM_EXACT_I2S, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %8, align 1
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %62, %66
  %74 = load i8, i8* @PCM_MODE_MASK, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %9, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %9, align 1
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %90

84:                                               ; preds = %73
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %86 = load i32, i32* @PM860X_PCM_IFACE_2, align 4
  %87 = load i8, i8* %9, align 1
  %88 = load i8, i8* %8, align 1
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i8 zeroext %87, i8 zeroext %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %82
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
