; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.es8328_priv = type { i32*, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ES8328_DACCONTROL2 = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No MCLK configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"LRCLK %d unsupported with current clock\0A\00", align 1
@ES8328_MASTERMODE = common dso_local global i32 0, align 4
@ES8328_MASTERMODE_MCLKDIV2 = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1 = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1_DACWL_MASK = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1_DACWL_SHIFT = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4 = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4_ADCWL_MASK = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4_ADCWL_SHIFT = common dso_local global i32 0, align 4
@ES8328_RATEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @es8328_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.es8328_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.es8328_priv* %18, %struct.es8328_priv** %9, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ES8328_DACCONTROL2, align 4
  store i32 %25, i32* %11, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ES8328_ADCCONTROL5, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %30 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %97

33:                                               ; preds = %28
  %34 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %35 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %158

45:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %49 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %56 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %65 = call i64 @params_rate(%struct.snd_pcm_hw_params* %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %46

72:                                               ; preds = %67, %46
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %75 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %73, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %85 = call i64 @params_rate(%struct.snd_pcm_hw_params* %84)
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %158

89:                                               ; preds = %72
  %90 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %91 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %13, align 4
  br label %100

97:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  %98 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %99 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %89
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %102 = load i32, i32* @ES8328_MASTERMODE, align 4
  %103 = load i32, i32* @ES8328_MASTERMODE_MCLKDIV2, align 4
  %104 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %105 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @ES8328_MASTERMODE_MCLKDIV2, align 4
  br label %111

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %103, i32 %112)
  %114 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %115 = call i32 @params_width(%struct.snd_pcm_hw_params* %114)
  switch i32 %115, label %121 [
    i32 16, label %116
    i32 18, label %117
    i32 20, label %118
    i32 24, label %119
    i32 32, label %120
  ]

116:                                              ; preds = %111
  store i32 3, i32* %12, align 4
  br label %124

117:                                              ; preds = %111
  store i32 2, i32* %12, align 4
  br label %124

118:                                              ; preds = %111
  store i32 1, i32* %12, align 4
  br label %124

119:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %124

120:                                              ; preds = %111
  store i32 4, i32* %12, align 4
  br label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %158

124:                                              ; preds = %120, %119, %118, %117, %116
  %125 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = load i32, i32* @ES8328_DACCONTROL1, align 4
  %133 = load i32, i32* @ES8328_DACCONTROL1_DACWL_MASK, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @ES8328_DACCONTROL1_DACWL_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %131, i32 %132, i32 %133, i32 %136)
  %138 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %139 = call i64 @params_rate(%struct.snd_pcm_hw_params* %138)
  %140 = load %struct.es8328_priv*, %struct.es8328_priv** %9, align 8
  %141 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %143 = call i32 @es8328_set_deemph(%struct.snd_soc_component* %142)
  br label %152

144:                                              ; preds = %124
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %146 = load i32, i32* @ES8328_ADCCONTROL4, align 4
  %147 = load i32, i32* @ES8328_ADCCONTROL4_ADCWL_MASK, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @ES8328_ADCCONTROL4_ADCWL_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %145, i32 %146, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %144, %130
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @ES8328_RATEMASK, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %152, %121, %80, %38
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @es8328_set_deemph(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
