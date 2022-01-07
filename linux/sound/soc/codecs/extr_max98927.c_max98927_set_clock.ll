; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max98927_priv = type { i32, i64, i32, i32, i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@rate_table = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to find proper clock rate.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX98927_R0021_PCM_MASTER_MODE = common dso_local global i32 0, align 4
@MAX98927_PCM_MASTER_MODE_MCLK_MASK = common dso_local global i32 0, align 4
@MAX98927_PCM_MASTER_MODE_MCLK_RATE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"format unsupported %d\0A\00", align 1
@MAX98927_R0022_PCM_CLK_SETUP = common dso_local global i32 0, align 4
@MAX98927_PCM_CLK_SETUP_BSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max98927_priv*, %struct.snd_pcm_hw_params*)* @max98927_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98927_set_clock(%struct.max98927_priv* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max98927_priv*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max98927_priv* %0, %struct.max98927_priv** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %11 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %10, i32 0, i32 5
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %14 = call i32 @params_channels(%struct.snd_pcm_hw_params* %13)
  %15 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %16 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %20 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i64*, i64** @rate_table, align 8
  %27 = call i32 @ARRAY_SIZE(i64* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i64*, i64** @rate_table, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %36 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %24

44:                                               ; preds = %39, %24
  %45 = load i32, i32* %9, align 4
  %46 = load i64*, i64** @rate_table, align 8
  %47 = call i32 @ARRAY_SIZE(i64* %46)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %94

56:                                               ; preds = %44
  %57 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %58 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MAX98927_R0021_PCM_MASTER_MODE, align 4
  %61 = load i32, i32* @MAX98927_PCM_MASTER_MODE_MCLK_MASK, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MAX98927_PCM_MASTER_MODE_MCLK_RATE_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %56, %2
  %67 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %68 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @max98927_get_bclk_sel(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %81 = call i32 @params_format(%struct.snd_pcm_hw_params* %80)
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %94

85:                                               ; preds = %71
  %86 = load %struct.max98927_priv*, %struct.max98927_priv** %4, align 8
  %87 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MAX98927_R0022_PCM_CLK_SETUP, align 4
  %90 = load i32, i32* @MAX98927_PCM_CLK_SETUP_BSEL_MASK, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %66
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %76, %49
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @max98927_get_bclk_sel(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
