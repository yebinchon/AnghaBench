; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tas5086_private = type { i32, i32, i32, i32, i32 }

@tas5086_sample_rates = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid sample rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TAS5086_CLOCK_CONTROL = common dso_local global i32 0, align 4
@TAS5086_CLOCK_RATE_MASK = common dso_local global i32 0, align 4
@tas5086_ratios = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid MCLK / Fs ratio\0A\00", align 1
@TAS5086_CLOCK_RATIO_MASK = common dso_local global i32 0, align 4
@TAS5086_CLOCK_SCLK_RATIO_48 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid DAI format\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid bit width\0A\00", align 1
@TAS5086_SERIAL_DATA_IF = common dso_local global i32 0, align 4
@TAS5086_CLOCK_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tas5086_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5086_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.tas5086_private*, align 8
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
  %16 = call %struct.tas5086_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.tas5086_private* %16, %struct.tas5086_private** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %20 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @tas5086_sample_rates, align 4
  %22 = load i32, i32* @tas5086_sample_rates, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %25 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @index_in_array(i32 %21, i32 %23, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %169

37:                                               ; preds = %3
  %38 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %39 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TAS5086_CLOCK_CONTROL, align 4
  %42 = load i32, i32* @TAS5086_CLOCK_RATE_MASK, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @TAS5086_CLOCK_RATE(i32 %43)
  %45 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %169

50:                                               ; preds = %37
  %51 = load i32, i32* @tas5086_ratios, align 4
  %52 = load i32, i32* @tas5086_ratios, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %55 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %58 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %56, %59
  %61 = call i32 @index_in_array(i32 %51, i32 %53, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %169

71:                                               ; preds = %50
  %72 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %73 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TAS5086_CLOCK_CONTROL, align 4
  %76 = load i32, i32* @TAS5086_CLOCK_RATIO_MASK, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @TAS5086_CLOCK_RATIO(i32 %77)
  %79 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %169

84:                                               ; preds = %71
  %85 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %86 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TAS5086_CLOCK_CONTROL, align 4
  %89 = load i32, i32* @TAS5086_CLOCK_SCLK_RATIO_48, align 4
  %90 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %91 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %94 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 48, %95
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* @TAS5086_CLOCK_SCLK_RATIO_48, align 4
  br label %101

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %169

108:                                              ; preds = %101
  %109 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %110 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %113 = and i32 %111, %112
  switch i32 %113, label %117 [
    i32 128, label %114
    i32 130, label %115
    i32 129, label %116
  ]

114:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %124

115:                                              ; preds = %108
  store i32 3, i32* %10, align 4
  br label %124

116:                                              ; preds = %108
  store i32 6, i32* %10, align 4
  br label %124

117:                                              ; preds = %108
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %119 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %169

124:                                              ; preds = %116, %115, %114
  %125 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %126 = call i32 @params_width(%struct.snd_pcm_hw_params* %125)
  switch i32 %126, label %136 [
    i32 16, label %127
    i32 20, label %130
    i32 24, label %133
  ]

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 0
  store i32 %129, i32* %10, align 4
  br label %143

130:                                              ; preds = %124
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %143

133:                                              ; preds = %124
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %10, align 4
  br label %143

136:                                              ; preds = %124
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %138 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_err(i32 %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %169

143:                                              ; preds = %133, %130, %127
  %144 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %145 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @TAS5086_SERIAL_DATA_IF, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @regmap_write(i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %4, align 4
  br label %169

154:                                              ; preds = %143
  %155 = load %struct.tas5086_private*, %struct.tas5086_private** %9, align 8
  %156 = getelementptr inbounds %struct.tas5086_private, %struct.tas5086_private* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @TAS5086_CLOCK_CONTROL, align 4
  %159 = load i32, i32* @TAS5086_CLOCK_VALID, align 4
  %160 = load i32, i32* @TAS5086_CLOCK_VALID, align 4
  %161 = call i32 @regmap_update_bits(i32 %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %4, align 4
  br label %169

166:                                              ; preds = %154
  %167 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %168 = call i32 @tas5086_set_deemph(%struct.snd_soc_component* %167)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %166, %164, %152, %136, %117, %106, %82, %64, %48, %30
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.tas5086_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @index_in_array(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @TAS5086_CLOCK_RATE(i32) #1

declare dso_local i32 @TAS5086_CLOCK_RATIO(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tas5086_set_deemph(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
