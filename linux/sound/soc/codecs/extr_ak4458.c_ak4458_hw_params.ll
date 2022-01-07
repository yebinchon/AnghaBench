; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4458_priv = type { i32, i32, i32 }

@AK4458_00_CONTROL1 = common dso_local global i32 0, align 4
@AK4458_DIF_24BIT_I2S = common dso_local global i32 0, align 4
@AK4458_DIF_16BIT_LSB = common dso_local global i32 0, align 4
@AK4458_DIF_32BIT_I2S = common dso_local global i32 0, align 4
@AK4458_DIF_32BIT_MSB = common dso_local global i32 0, align 4
@AK4458_DIF_32BIT_LSB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AK4458_DIF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ak4458_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4458_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ak4458_priv*, align 8
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
  %17 = call %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.ak4458_priv* %17, %struct.ak4458_priv** %9, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %18)
  %20 = load %struct.ak4458_priv*, %struct.ak4458_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @max(i32 %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.ak4458_priv*, %struct.ak4458_priv** %9, align 8
  %28 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %30 = load i32, i32* @AK4458_00_CONTROL1, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 128, i32 128)
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %59 [
    i32 16, label %33
    i32 32, label %43
  ]

33:                                               ; preds = %3
  %34 = load %struct.ak4458_priv*, %struct.ak4458_priv** %9, align 8
  %35 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 130
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @AK4458_DIF_24BIT_I2S, align 4
  store i32 %39, i32* %12, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @AK4458_DIF_16BIT_LSB, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %62

43:                                               ; preds = %3
  %44 = load %struct.ak4458_priv*, %struct.ak4458_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %55 [
    i32 130, label %47
    i32 129, label %49
    i32 128, label %51
    i32 131, label %53
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @AK4458_DIF_32BIT_I2S, align 4
  store i32 %48, i32* %12, align 4
  br label %58

49:                                               ; preds = %43
  %50 = load i32, i32* @AK4458_DIF_32BIT_MSB, align 4
  store i32 %50, i32* %12, align 4
  br label %58

51:                                               ; preds = %43
  %52 = load i32, i32* @AK4458_DIF_32BIT_LSB, align 4
  store i32 %52, i32* %12, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @AK4458_DIF_32BIT_MSB, align 4
  store i32 %54, i32* %12, align 4
  br label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %53, %51, %49, %47
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %58, %42
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %64 = load i32, i32* @AK4458_00_CONTROL1, align 4
  %65 = load i32, i32* @AK4458_DIF_MASK, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = call i32 @ak4458_rstn_control(%struct.snd_soc_component* %68, i32 0)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = call i32 @ak4458_rstn_control(%struct.snd_soc_component* %70, i32 1)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %62, %59, %55
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.ak4458_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ak4458_rstn_control(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
