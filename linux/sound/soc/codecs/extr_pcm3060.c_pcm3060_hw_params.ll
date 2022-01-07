; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm3060_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PCM3060_REG_MS_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rate is not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCM3060_REG_MS_M768 = common dso_local global i32 0, align 4
@PCM3060_REG_MS_M512 = common dso_local global i32 0, align 4
@PCM3060_REG_MS_M384 = common dso_local global i32 0, align 4
@PCM3060_REG_MS_M256 = common dso_local global i32 0, align 4
@PCM3060_REG_MS_M192 = common dso_local global i32 0, align 4
@PCM3060_REG_MS_M128 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported ratio: %d\0A\00", align 1
@PCM3060_DAI_ID_DAC = common dso_local global i64 0, align 8
@PCM3060_REG67 = common dso_local global i32 0, align 4
@PCM3060_REG72 = common dso_local global i32 0, align 4
@PCM3060_REG_MASK_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pcm3060_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3060_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.pcm3060_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.pcm3060_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.pcm3060_priv* %18, %struct.pcm3060_priv** %9, align 8
  %19 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %9, align 8
  %20 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @PCM3060_REG_MS_S, align 4
  store i32 %30, i32* %13, align 4
  br label %77

31:                                               ; preds = %3
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %95

43:                                               ; preds = %31
  %44 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %9, align 8
  %45 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = udiv i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %68 [
    i32 768, label %56
    i32 512, label %58
    i32 384, label %60
    i32 256, label %62
    i32 192, label %64
    i32 128, label %66
  ]

56:                                               ; preds = %43
  %57 = load i32, i32* @PCM3060_REG_MS_M768, align 4
  store i32 %57, i32* %13, align 4
  br label %76

58:                                               ; preds = %43
  %59 = load i32, i32* @PCM3060_REG_MS_M512, align 4
  store i32 %59, i32* %13, align 4
  br label %76

60:                                               ; preds = %43
  %61 = load i32, i32* @PCM3060_REG_MS_M384, align 4
  store i32 %61, i32* %13, align 4
  br label %76

62:                                               ; preds = %43
  %63 = load i32, i32* @PCM3060_REG_MS_M256, align 4
  store i32 %63, i32* %13, align 4
  br label %76

64:                                               ; preds = %43
  %65 = load i32, i32* @PCM3060_REG_MS_M192, align 4
  store i32 %65, i32* %13, align 4
  br label %76

66:                                               ; preds = %43
  %67 = load i32, i32* @PCM3060_REG_MS_M128, align 4
  store i32 %67, i32* %13, align 4
  br label %76

68:                                               ; preds = %43
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %95

76:                                               ; preds = %66, %64, %62, %60, %58, %56
  br label %77

77:                                               ; preds = %76, %29
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCM3060_DAI_ID_DAC, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @PCM3060_REG67, align 4
  store i32 %84, i32* %12, align 4
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @PCM3060_REG72, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %9, align 8
  %89 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @PCM3060_REG_MASK_MS, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %68, %36
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.pcm3060_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
