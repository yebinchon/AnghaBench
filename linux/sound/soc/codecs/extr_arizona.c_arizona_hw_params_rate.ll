; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_hw_params_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_hw_params_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_3__*, %struct.snd_soc_component* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.TYPE_4__*, %struct.arizona_dai_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.arizona_dai_priv = type { i32 }

@arizona_sr_vals = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported sample rate %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ARIZONA_DVFS_SR1_RQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to change DVFS %d\0A\00", align 1
@ARIZONA_SAMPLE_RATE_1 = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_1_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_RATE_CTRL = common dso_local global i32 0, align 4
@ARIZONA_AIF1_RATE_MASK = common dso_local global i32 0, align 4
@ARIZONA_ASYNC_SAMPLE_RATE_1 = common dso_local global i32 0, align 4
@ARIZONA_ASYNC_SAMPLE_RATE_1_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF1_RATE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid clock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @arizona_hw_params_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_hw_params_rate(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona_priv*, align 8
  %10 = alloca %struct.arizona_dai_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.arizona_priv* %19, %struct.arizona_priv** %9, align 8
  %20 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %21 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %20, i32 0, i32 1
  %22 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %21, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %22, i64 %27
  store %struct.arizona_dai_priv* %28, %struct.arizona_dai_priv** %10, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %51, %3
  %35 = load i32, i32* %12, align 4
  %36 = load i64*, i64** @arizona_sr_vals, align 8
  %37 = call i32 @ARRAY_SIZE(i64* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i64*, i64** @arizona_sr_vals, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @params_rate(%struct.snd_pcm_hw_params* %45)
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %34

54:                                               ; preds = %49, %34
  %55 = load i32, i32* %12, align 4
  %56 = load i64*, i64** @arizona_sr_vals, align 8
  %57 = call i32 @ARRAY_SIZE(i64* %56)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %62 = call i32 @params_rate(%struct.snd_pcm_hw_params* %61)
  %63 = call i32 @arizona_aif_err(%struct.snd_soc_dai* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %157

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %13, align 4
  %68 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %69 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %97 [
    i32 129, label %73
    i32 128, label %73
  ]

73:                                               ; preds = %66, %66
  %74 = load i64*, i64** @arizona_sr_vals, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 88200
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i32, i32* @ARIZONA_DVFS_SR1_RQ, align 4
  %83 = call i32 @arizona_dvfs_up(%struct.snd_soc_component* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %86 = load i32, i32* @ARIZONA_DVFS_SR1_RQ, align 4
  %87 = call i32 @arizona_dvfs_down(%struct.snd_soc_component* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @arizona_aif_err(%struct.snd_soc_dai* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %4, align 4
  br label %157

96:                                               ; preds = %88
  br label %98

97:                                               ; preds = %66
  br label %98

98:                                               ; preds = %97, %96
  %99 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %10, align 8
  %100 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %148 [
    i32 130, label %102
    i32 131, label %130
  ]

102:                                              ; preds = %98
  %103 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %104 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %113 [
    i32 129, label %108
  ]

108:                                              ; preds = %102
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %111 = call i32 @params_rate(%struct.snd_pcm_hw_params* %110)
  %112 = call i32 @arizona_wm5102_set_dac_comp(%struct.snd_soc_component* %109, i32 %111)
  br label %114

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %108
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %116 = load i32, i32* @ARIZONA_SAMPLE_RATE_1, align 4
  %117 = load i32, i32* @ARIZONA_SAMPLE_RATE_1_MASK, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @ARIZONA_AIF_RATE_CTRL, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @ARIZONA_AIF1_RATE_MASK, align 4
  %128 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i32 %126, i32 %127, i32 0)
  br label %129

129:                                              ; preds = %122, %114
  br label %156

130:                                              ; preds = %98
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = load i32, i32* @ARIZONA_ASYNC_SAMPLE_RATE_1, align 4
  %133 = load i32, i32* @ARIZONA_ASYNC_SAMPLE_RATE_1_MASK, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @ARIZONA_AIF_RATE_CTRL, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @ARIZONA_AIF1_RATE_MASK, align 4
  %144 = load i32, i32* @ARIZONA_AIF1_RATE_SHIFT, align 4
  %145 = shl i32 8, %144
  %146 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i32 %142, i32 %143, i32 %145)
  br label %147

147:                                              ; preds = %138, %130
  br label %156

148:                                              ; preds = %98
  %149 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %150 = load %struct.arizona_dai_priv*, %struct.arizona_dai_priv** %10, align 8
  %151 = getelementptr inbounds %struct.arizona_dai_priv, %struct.arizona_dai_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @arizona_aif_err(%struct.snd_soc_dai* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %157

156:                                              ; preds = %147, %129
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %148, %91, %59
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @arizona_aif_err(%struct.snd_soc_dai*, i8*, i32) #1

declare dso_local i32 @arizona_dvfs_up(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @arizona_dvfs_down(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @arizona_wm5102_set_dac_comp(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
