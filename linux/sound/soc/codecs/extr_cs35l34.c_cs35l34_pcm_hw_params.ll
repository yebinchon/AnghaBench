; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l34_private = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"ERROR: Invalid mclk %d and/or srate %d\0A\00", align 1
@CS35L34_ADSP_CLK_CTL = common dso_local global i32 0, align 4
@CS35L34_ADSP_RATE = common dso_local global i32 0, align 4
@cs35l34_mclk_coeffs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set clock state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs35l34_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs35l34_private*, align 8
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
  %17 = call %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs35l34_private* %17, %struct.cs35l34_private** %9, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @params_rate(%struct.snd_pcm_hw_params* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %21 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @cs35l34_get_mclk_coeff(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %32 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %3
  %38 = load %struct.cs35l34_private*, %struct.cs35l34_private** %9, align 8
  %39 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CS35L34_ADSP_CLK_CTL, align 4
  %42 = load i32, i32* @CS35L34_ADSP_RATE, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs35l34_mclk_coeffs, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %37
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %27
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs35l34_get_mclk_coeff(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
