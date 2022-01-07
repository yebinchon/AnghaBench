; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic26.c_aic26_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic26.c_aic26_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic26 = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"aic26_hw_params(substream=%p, params=%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"rate=%i width=%d\0A\00", align 1
@AIC26_DIV_6 = common dso_local global i32 0, align 4
@AIC26_DIV_4 = common dso_local global i32 0, align 4
@AIC26_DIV_3 = common dso_local global i32 0, align 4
@AIC26_DIV_2 = common dso_local global i32 0, align 4
@AIC26_DIV_1_5 = common dso_local global i32 0, align 4
@AIC26_DIV_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"bad rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AIC26_WLEN_16 = common dso_local global i32 0, align 4
@AIC26_WLEN_24 = common dso_local global i32 0, align 4
@AIC26_WLEN_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"bad format\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Setting PLLM to %d.%04d\0A\00", align 1
@AIC26_REG_PLL_PROG1 = common dso_local global i32 0, align 4
@AIC26_REG_PLL_PROG2 = common dso_local global i32 0, align 4
@AIC26_REG_AUDIO_CTRL3 = common dso_local global i32 0, align 4
@AIC26_REG_AUDIO_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @aic26_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.aic26*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %8, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = call %struct.aic26* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.aic26* %22, %struct.aic26** %9, align 8
  %23 = load %struct.aic26*, %struct.aic26** %9, align 8
  %24 = getelementptr inbounds %struct.aic26, %struct.aic26* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %27, %struct.snd_pcm_hw_params* %28)
  %30 = load %struct.aic26*, %struct.aic26** %9, align 8
  %31 = getelementptr inbounds %struct.aic26, %struct.aic26* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_rate(%struct.snd_pcm_hw_params* %34)
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_width(%struct.snd_pcm_hw_params* %36)
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 @params_rate(%struct.snd_pcm_hw_params* %39)
  switch i32 %40, label %59 [
    i32 8000, label %41
    i32 11025, label %43
    i32 12000, label %45
    i32 16000, label %47
    i32 22050, label %49
    i32 24000, label %51
    i32 32000, label %53
    i32 44100, label %55
    i32 48000, label %57
  ]

41:                                               ; preds = %3
  store i32 48000, i32* %10, align 4
  %42 = load i32, i32* @AIC26_DIV_6, align 4
  store i32 %42, i32* %11, align 4
  br label %67

43:                                               ; preds = %3
  store i32 44100, i32* %10, align 4
  %44 = load i32, i32* @AIC26_DIV_4, align 4
  store i32 %44, i32* %11, align 4
  br label %67

45:                                               ; preds = %3
  store i32 48000, i32* %10, align 4
  %46 = load i32, i32* @AIC26_DIV_4, align 4
  store i32 %46, i32* %11, align 4
  br label %67

47:                                               ; preds = %3
  store i32 48000, i32* %10, align 4
  %48 = load i32, i32* @AIC26_DIV_3, align 4
  store i32 %48, i32* %11, align 4
  br label %67

49:                                               ; preds = %3
  store i32 44100, i32* %10, align 4
  %50 = load i32, i32* @AIC26_DIV_2, align 4
  store i32 %50, i32* %11, align 4
  br label %67

51:                                               ; preds = %3
  store i32 48000, i32* %10, align 4
  %52 = load i32, i32* @AIC26_DIV_2, align 4
  store i32 %52, i32* %11, align 4
  br label %67

53:                                               ; preds = %3
  store i32 48000, i32* %10, align 4
  %54 = load i32, i32* @AIC26_DIV_1_5, align 4
  store i32 %54, i32* %11, align 4
  br label %67

55:                                               ; preds = %3
  store i32 44100, i32* %10, align 4
  %56 = load i32, i32* @AIC26_DIV_1, align 4
  store i32 %56, i32* %11, align 4
  br label %67

57:                                               ; preds = %3
  store i32 48000, i32* %10, align 4
  %58 = load i32, i32* @AIC26_DIV_1, align 4
  store i32 %58, i32* %11, align 4
  br label %67

59:                                               ; preds = %3
  %60 = load %struct.aic26*, %struct.aic26** %9, align 8
  %61 = getelementptr inbounds %struct.aic26, %struct.aic26* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %162

67:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %41
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %69 = call i32 @params_width(%struct.snd_pcm_hw_params* %68)
  switch i32 %69, label %78 [
    i32 8, label %70
    i32 16, label %72
    i32 24, label %74
    i32 32, label %76
  ]

70:                                               ; preds = %67
  %71 = load i32, i32* @AIC26_WLEN_16, align 4
  store i32 %71, i32* %12, align 4
  br label %86

72:                                               ; preds = %67
  %73 = load i32, i32* @AIC26_WLEN_16, align 4
  store i32 %73, i32* %12, align 4
  br label %86

74:                                               ; preds = %67
  %75 = load i32, i32* @AIC26_WLEN_24, align 4
  store i32 %75, i32* %12, align 4
  br label %86

76:                                               ; preds = %67
  %77 = load i32, i32* @AIC26_WLEN_32, align 4
  store i32 %77, i32* %12, align 4
  br label %86

78:                                               ; preds = %67
  %79 = load %struct.aic26*, %struct.aic26** %9, align 8
  %80 = getelementptr inbounds %struct.aic26, %struct.aic26* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %162

86:                                               ; preds = %76, %74, %72, %70
  store i32 1, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.aic26*, %struct.aic26** %9, align 8
  %89 = getelementptr inbounds %struct.aic26, %struct.aic26* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 2048
  %92 = sdiv i32 %87, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.aic26*, %struct.aic26** %9, align 8
  %96 = getelementptr inbounds %struct.aic26, %struct.aic26* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %97, 2048
  %99 = mul nsw i32 %94, %98
  %100 = sub nsw i32 %93, %99
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = mul nsw i32 10000, %101
  %103 = load %struct.aic26*, %struct.aic26** %9, align 8
  %104 = getelementptr inbounds %struct.aic26, %struct.aic26* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 2048
  %107 = sdiv i32 %102, %106
  store i32 %107, i32* %15, align 4
  %108 = load %struct.aic26*, %struct.aic26** %9, align 8
  %109 = getelementptr inbounds %struct.aic26, %struct.aic26* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  store i32 0, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = shl i32 %115, 11
  %117 = or i32 32768, %116
  %118 = load i32, i32* %13, align 4
  %119 = shl i32 %118, 8
  %120 = or i32 %117, %119
  %121 = load i32, i32* %14, align 4
  %122 = shl i32 %121, 2
  %123 = or i32 %120, %122
  store i32 %123, i32* %17, align 4
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %125 = load i32, i32* @AIC26_REG_PLL_PROG1, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %124, i32 %125, i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = shl i32 %128, 2
  store i32 %129, i32* %17, align 4
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %131 = load i32, i32* @AIC26_REG_PLL_PROG2, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %131, i32 %132)
  %134 = load %struct.aic26*, %struct.aic26** %9, align 8
  %135 = getelementptr inbounds %struct.aic26, %struct.aic26* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %86
  store i32 2048, i32* %17, align 4
  br label %139

139:                                              ; preds = %138, %86
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 48000
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 8192, i32* %17, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %145 = load i32, i32* @AIC26_REG_AUDIO_CTRL3, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %144, i32 %145, i32 63488, i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.aic26*, %struct.aic26** %9, align 8
  %150 = getelementptr inbounds %struct.aic26, %struct.aic26* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %148, %151
  %153 = load i32, i32* %11, align 4
  %154 = shl i32 %153, 3
  %155 = or i32 %152, %154
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %17, align 4
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %159 = load i32, i32* @AIC26_REG_AUDIO_CTRL1, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %158, i32 %159, i32 4095, i32 %160)
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %143, %78, %59
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.aic26* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
