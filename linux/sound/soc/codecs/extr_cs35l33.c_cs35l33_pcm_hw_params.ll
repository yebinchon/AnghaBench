; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, i64, i32 }

@CS35L33_CLK_CTL = common dso_local global i32 0, align 4
@CS35L33_ADSP_FS = common dso_local global i32 0, align 4
@CS35L33_INT_FS_RATE = common dso_local global i32 0, align 4
@cs35l33_mclk_coeffs = common dso_local global %struct.TYPE_2__* null, align 8
@CS35L33_RX_AUD = common dso_local global i32 0, align 4
@CS35L33_AUDIN_RX_DEPTH = common dso_local global i32 0, align 4
@CS35L33_AUDIN_RX_DEPTH_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sample rate=%d, bits per sample=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs35l33_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs35l33_private*, align 8
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
  %16 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs35l33_private* %16, %struct.cs35l33_private** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_width(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %20 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = call i32 @cs35l33_get_mclk_coeff(i32 %21, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %3
  %30 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %31 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CS35L33_CLK_CTL, align 4
  %34 = load i32, i32* @CS35L33_ADSP_FS, align 4
  %35 = load i32, i32* @CS35L33_INT_FS_RATE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs35l33_mclk_coeffs, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs35l33_mclk_coeffs, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %42, %48
  %50 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %36, i32 %49)
  %51 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %52 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %29
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 8
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 2, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.cs35l33_private*, %struct.cs35l33_private** %9, align 8
  %64 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CS35L33_RX_AUD, align 4
  %67 = load i32, i32* @CS35L33_AUDIN_RX_DEPTH, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @CS35L33_AUDIN_RX_DEPTH_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %62, %29
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %74 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %77 = call i32 @params_rate(%struct.snd_pcm_hw_params* %76)
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = call i32 @params_width(%struct.snd_pcm_hw_params* %78)
  %80 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs35l33_get_mclk_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
