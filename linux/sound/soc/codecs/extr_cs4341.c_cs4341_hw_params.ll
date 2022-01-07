; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4341.c_cs4341_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4341.c_cs4341_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs4341_priv = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported PCM format 0x%08x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS4341_MODE2_DIF_I2S_24 = common dso_local global i32 0, align 4
@CS4341_MODE2_DIF_I2S_16 = common dso_local global i32 0, align 4
@CS4341_MODE2_DIF_LJ_24 = common dso_local global i32 0, align 4
@CS4341_MODE2_DIF_RJ_24 = common dso_local global i32 0, align 4
@CS4341_MODE2_DIF_RJ_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported DAI format 0x%08x.\0A\00", align 1
@CS4341_REG_MODE2 = common dso_local global i32 0, align 4
@CS4341_MODE2_DIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs4341_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4341_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs4341_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.cs4341_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs4341_priv* %16, %struct.cs4341_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_format(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %21 [
    i32 131, label %19
    i32 132, label %20
  ]

19:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %30

20:                                               ; preds = %3
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_format(%struct.snd_pcm_hw_params* %25)
  %27 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %20, %19
  %31 = load %struct.cs4341_priv*, %struct.cs4341_priv** %9, align 8
  %32 = getelementptr inbounds %struct.cs4341_priv, %struct.cs4341_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %54 [
    i32 130, label %34
    i32 129, label %43
    i32 128, label %45
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @CS4341_MODE2_DIF_I2S_24, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @CS4341_MODE2_DIF_I2S_16, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %10, align 4
  br label %64

43:                                               ; preds = %30
  %44 = load i32, i32* @CS4341_MODE2_DIF_LJ_24, align 4
  store i32 %44, i32* %10, align 4
  br label %64

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @CS4341_MODE2_DIF_RJ_24, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @CS4341_MODE2_DIF_RJ_16, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %10, align 4
  br label %64

54:                                               ; preds = %30
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cs4341_priv*, %struct.cs4341_priv** %9, align 8
  %59 = getelementptr inbounds %struct.cs4341_priv, %struct.cs4341_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %70

64:                                               ; preds = %52, %43, %41
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = load i32, i32* @CS4341_REG_MODE2, align 4
  %67 = load i32, i32* @CS4341_MODE2_DIF, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %54, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.cs4341_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
