; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_codec_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_codec_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.atmel_classd = type { i32 }

@sample_rates = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Selected SAMPLE_RATE of %dHz, GCLK_RATE of %ldHz\0A\00", align 1
@CLASSD_INTPMR_DSP_CLK_FREQ_MASK = common dso_local global i32 0, align 4
@CLASSD_INTPMR_FRAME_MASK = common dso_local global i32 0, align 4
@CLASSD_INTPMR_DSP_CLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@CLASSD_INTPMR_FRAME_SHIFT = common dso_local global i32 0, align 4
@CLASSD_INTPMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @atmel_classd_codec_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_classd_codec_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.atmel_classd*, align 8
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %20, align 8
  store %struct.snd_soc_pcm_runtime* %21, %struct.snd_soc_pcm_runtime** %8, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.atmel_classd* @snd_soc_card_get_drvdata(i32 %24)
  store %struct.atmel_classd* %25, %struct.atmel_classd** %9, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %27, align 8
  store %struct.snd_soc_component* %28, %struct.snd_soc_component** %10, align 8
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_rate(%struct.snd_pcm_hw_params* %29)
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %32, %36
  %38 = call i32 @abs(i64 %37)
  store i32 %38, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %62, %3
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %46, %52
  %54 = call i32 @abs(i64 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %58, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %67 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %80)
  %82 = load %struct.atmel_classd*, %struct.atmel_classd** %9, align 8
  %83 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clk_disable_unprepare(i32 %84)
  %86 = load %struct.atmel_classd*, %struct.atmel_classd** %9, align 8
  %87 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_set_rate(i32 %88, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %65
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %4, align 4
  br label %130

100:                                              ; preds = %65
  %101 = load i32, i32* @CLASSD_INTPMR_DSP_CLK_FREQ_MASK, align 4
  %102 = load i32, i32* @CLASSD_INTPMR_FRAME_MASK, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %17, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CLASSD_INTPMR_DSP_CLK_FREQ_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sample_rates, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CLASSD_INTPMR_FRAME_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %111, %119
  store i32 %120, i32* %18, align 4
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %122 = load i32, i32* @CLASSD_INTPMR, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.atmel_classd*, %struct.atmel_classd** %9, align 8
  %127 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clk_prepare_enable(i32 %128)
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %100, %98
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.atmel_classd* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
