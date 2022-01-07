; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.es8316_priv = type { i32 }

@NR_SUPPORTED_MCLK_LRCK_RATIOS = common dso_local global i32 0, align 4
@supported_mclk_lrck_ratios = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ES8316_SERDATA2_LEN_16 = common dso_local global i32 0, align 4
@ES8316_SERDATA2_LEN_20 = common dso_local global i32 0, align 4
@ES8316_SERDATA2_LEN_24 = common dso_local global i32 0, align 4
@ES8316_SERDATA2_LEN_32 = common dso_local global i32 0, align 4
@ES8316_SERDATA_DAC = common dso_local global i32 0, align 4
@ES8316_SERDATA2_LEN_MASK = common dso_local global i32 0, align 4
@ES8316_SERDATA_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @es8316_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8316_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.es8316_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.es8316_priv* %17, %struct.es8316_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %46, %3
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @NR_SUPPORTED_MCLK_LRCK_RATIOS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load i32*, i32** @supported_mclk_lrck_ratios, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.es8316_priv*, %struct.es8316_priv** %9, align 8
  %29 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = urem i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %46

35:                                               ; preds = %22
  %36 = load %struct.es8316_priv*, %struct.es8316_priv** %9, align 8
  %37 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = udiv i32 %38, %39
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_rate(%struct.snd_pcm_hw_params* %41)
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %18

49:                                               ; preds = %44, %18
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @NR_SUPPORTED_MCLK_LRCK_RATIOS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %49
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %58 = call i32 @params_format(%struct.snd_pcm_hw_params* %57)
  switch i32 %58, label %67 [
    i32 131, label %59
    i32 130, label %61
    i32 129, label %63
    i32 128, label %65
  ]

59:                                               ; preds = %56
  %60 = load i32, i32* @ES8316_SERDATA2_LEN_16, align 4
  store i32 %60, i32* %10, align 4
  br label %70

61:                                               ; preds = %56
  %62 = load i32, i32* @ES8316_SERDATA2_LEN_20, align 4
  store i32 %62, i32* %10, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load i32, i32* @ES8316_SERDATA2_LEN_24, align 4
  store i32 %64, i32* %10, align 4
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* @ES8316_SERDATA2_LEN_32, align 4
  store i32 %66, i32* %10, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %81

70:                                               ; preds = %65, %63, %61, %59
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = load i32, i32* @ES8316_SERDATA_DAC, align 4
  %73 = load i32, i32* @ES8316_SERDATA2_LEN_MASK, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %77 = load i32, i32* @ES8316_SERDATA_ADC, align 4
  %78 = load i32, i32* @ES8316_SERDATA2_LEN_MASK, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %70, %67, %53
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
