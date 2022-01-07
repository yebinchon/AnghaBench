; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs4271_private = type { i32, i32, i64, i32, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@CS4271_MODE2 = common dso_local global i32 0, align 4
@CS4271_MODE2_PDN = common dso_local global i32 0, align 4
@CS4271_MODE1_MODE_1X = common dso_local global i32 0, align 4
@CS4271_MODE1_MODE_2X = common dso_local global i32 0, align 4
@CS4271_MODE1_MODE_4X = common dso_local global i32 0, align 4
@CS4271_NR_RATIOS = common dso_local global i32 0, align 4
@cs4271_clk_tab = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid sample rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS4271_MODE1 = common dso_local global i32 0, align 4
@CS4271_MODE1_MODE_MASK = common dso_local global i32 0, align 4
@CS4271_MODE1_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs4271_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4271_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs4271_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.cs4271_private* %18, %struct.cs4271_private** %9, align 8
  %19 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %20 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %3
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %23
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %40, %29
  %46 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %47 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CS4271_MODE2, align 4
  %50 = load i32, i32* @CS4271_MODE2_PDN, align 4
  %51 = load i32, i32* @CS4271_MODE2_PDN, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %173

57:                                               ; preds = %45
  %58 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %59 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CS4271_MODE2, align 4
  %62 = load i32, i32* @CS4271_MODE2_PDN, align 4
  %63 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %173

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %40, %34
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @params_rate(%struct.snd_pcm_hw_params* %71)
  %73 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %74 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %76 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 50000
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @CS4271_MODE1_MODE_1X, align 4
  store i32 %80, i32* %13, align 4
  br label %91

81:                                               ; preds = %70
  %82 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %83 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 100000
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @CS4271_MODE1_MODE_2X, align 4
  store i32 %87, i32* %13, align 4
  br label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @CS4271_MODE1_MODE_4X, align 4
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %93 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %96 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = udiv i32 %94, %97
  store i32 %98, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %134, %91
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @CS4271_NR_RATIOS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %99
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4271_clk_tab, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %111 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %103
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4271_clk_tab, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %114
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4271_clk_tab, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %137

133:                                              ; preds = %123, %114, %103
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %99

137:                                              ; preds = %132, %99
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @CS4271_NR_RATIOS, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %143 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %173

148:                                              ; preds = %137
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4271_clk_tab, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %13, align 4
  %157 = load %struct.cs4271_private*, %struct.cs4271_private** %9, align 8
  %158 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CS4271_MODE1, align 4
  %161 = load i32, i32* @CS4271_MODE1_MODE_MASK, align 4
  %162 = load i32, i32* @CS4271_MODE1_DIV_MASK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @regmap_update_bits(i32 %159, i32 %160, i32 %163, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %148
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %4, align 4
  br label %173

170:                                              ; preds = %148
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %172 = call i32 @cs4271_set_deemph(%struct.snd_soc_component* %171)
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %170, %168, %141, %66, %55
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cs4271_set_deemph(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
