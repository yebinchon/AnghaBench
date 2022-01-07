; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_snow.c_snow_card_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_snow.c_snow_card_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snow_priv = type { i32 }

@snow_card_hw_params.pll_rate = internal constant [5 x i32] [i32 73728000, i32 67737602, i32 49152000, i32 45158401, i32 32768001], align 16
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid bit-width: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported bit-width: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported RCLK rate: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"I2S bus clock rate set failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snow_card_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snow_card_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snow_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call %struct.snow_priv* @snd_soc_card_get_drvdata(%struct.TYPE_2__* %21)
  store %struct.snow_priv* %22, %struct.snow_priv** %7, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %13, align 8
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %27 = call i32 @params_format(%struct.snd_pcm_hw_params* %26)
  %28 = call i32 @snd_pcm_format_width(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %141

40:                                               ; preds = %2
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 16
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 24
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %48 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %141

56:                                               ; preds = %43, %40
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 2, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %60 = call i32 @params_rate(%struct.snd_pcm_hw_params* %59)
  switch i32 %60, label %68 [
    i32 16000, label %61
    i32 22050, label %61
    i32 24000, label %61
    i32 32000, label %61
    i32 44100, label %61
    i32 48000, label %61
    i32 88200, label %61
    i32 96000, label %61
    i32 64000, label %64
    i32 8000, label %65
    i32 11025, label %65
    i32 12000, label %65
  ]

61:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 8, %62
  store i32 %63, i32* %10, align 4
  br label %71

64:                                               ; preds = %56
  store i32 384, i32* %10, align 4
  br label %71

65:                                               ; preds = %56, %56, %56
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 16, %66
  store i32 %67, i32* %10, align 4
  br label %71

68:                                               ; preds = %56
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %141

71:                                               ; preds = %65, %64, %61
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %73 = call i32 @params_rate(%struct.snd_pcm_hw_params* %72)
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %12, align 8
  store i32 8, i32* %9, align 4
  br label %77

77:                                               ; preds = %108, %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @snow_card_hw_params.pll_rate, i64 0, i64 0))
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* @snow_card_hw_params.pll_rate, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %91, %93
  %95 = sub i64 %90, %94
  %96 = icmp ule i64 %95, 2
  br i1 %96, label %97, label %103

97:                                               ; preds = %85
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* @snow_card_hw_params.pll_rate, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %13, align 8
  br label %107

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %81

107:                                              ; preds = %97, %81
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = sdiv i32 %109, 2
  store i32 %110, i32* %9, align 4
  br label %77

111:                                              ; preds = %77
  %112 = load i64, i64* %13, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %116 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %12, align 8
  %121 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %141

124:                                              ; preds = %111
  %125 = load %struct.snow_priv*, %struct.snow_priv** %7, align 8
  %126 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @clk_set_rate(i32 %127, i64 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %134 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @dev_err(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %132, %114, %68, %46, %31
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.snow_priv* @snd_soc_card_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
