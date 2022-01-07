; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_hw_params_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_hw_params_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_3__*, %struct.snd_soc_component* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, %struct.TYPE_4__*, %struct.madera_dai_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.madera_dai_priv = type { i32 }

@madera_sr_vals = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported sample rate %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MADERA_SAMPLE_RATE_1 = common dso_local global i32 0, align 4
@MADERA_AIF1_RATE_SHIFT = common dso_local global i32 0, align 4
@MADERA_SAMPLE_RATE_2 = common dso_local global i32 0, align 4
@MADERA_SAMPLE_RATE_3 = common dso_local global i32 0, align 4
@MADERA_ASYNC_SAMPLE_RATE_1 = common dso_local global i32 0, align 4
@MADERA_ASYNC_SAMPLE_RATE_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid clock %d\0A\00", align 1
@MADERA_SAMPLE_RATE_1_MASK = common dso_local global i32 0, align 4
@MADERA_AIF_RATE_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to check rate: %d\0A\00", align 1
@MADERA_AIF1_RATE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot change rate while active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @madera_hw_params_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_hw_params_rate(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.madera_priv*, align 8
  %10 = alloca %struct.madera_dai_priv*, align 8
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
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %8, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.madera_priv* %22, %struct.madera_priv** %9, align 8
  %23 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %24 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %23, i32 0, i32 2
  %25 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %24, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %25, i64 %30
  store %struct.madera_dai_priv* %31, %struct.madera_dai_priv** %10, align 8
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %54, %3
  %38 = load i32, i32* %12, align 4
  %39 = load i64*, i64** @madera_sr_vals, align 8
  %40 = call i32 @ARRAY_SIZE(i64* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i64*, i64** @madera_sr_vals, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %49 = call i32 @params_rate(%struct.snd_pcm_hw_params* %48)
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %37

57:                                               ; preds = %52, %37
  %58 = load i32, i32* %12, align 4
  %59 = load i64*, i64** @madera_sr_vals, align 8
  %60 = call i32 @ARRAY_SIZE(i64* %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %65 = call i32 @params_rate(%struct.snd_pcm_hw_params* %64)
  %66 = call i32 @madera_aif_err(%struct.snd_soc_dai* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %169

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %10, align 8
  %72 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %94 [
    i32 130, label %74
    i32 129, label %78
    i32 128, label %82
    i32 132, label %86
    i32 131, label %90
  ]

74:                                               ; preds = %69
  %75 = load i32, i32* @MADERA_SAMPLE_RATE_1, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* @MADERA_AIF1_RATE_SHIFT, align 4
  %77 = shl i32 0, %76
  store i32 %77, i32* %16, align 4
  br label %102

78:                                               ; preds = %69
  %79 = load i32, i32* @MADERA_SAMPLE_RATE_2, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* @MADERA_AIF1_RATE_SHIFT, align 4
  %81 = shl i32 1, %80
  store i32 %81, i32* %16, align 4
  br label %102

82:                                               ; preds = %69
  %83 = load i32, i32* @MADERA_SAMPLE_RATE_3, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* @MADERA_AIF1_RATE_SHIFT, align 4
  %85 = shl i32 2, %84
  store i32 %85, i32* %16, align 4
  br label %102

86:                                               ; preds = %69
  %87 = load i32, i32* @MADERA_ASYNC_SAMPLE_RATE_1, align 4
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* @MADERA_AIF1_RATE_SHIFT, align 4
  %89 = shl i32 8, %88
  store i32 %89, i32* %16, align 4
  br label %102

90:                                               ; preds = %69
  %91 = load i32, i32* @MADERA_ASYNC_SAMPLE_RATE_2, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* @MADERA_AIF1_RATE_SHIFT, align 4
  %93 = shl i32 9, %92
  store i32 %93, i32* %16, align 4
  br label %102

94:                                               ; preds = %69
  %95 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %96 = load %struct.madera_dai_priv*, %struct.madera_dai_priv** %10, align 8
  %97 = getelementptr inbounds %struct.madera_dai_priv, %struct.madera_dai_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @madera_aif_err(%struct.snd_soc_dai* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %169

102:                                              ; preds = %90, %86, %82, %78, %74
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @MADERA_SAMPLE_RATE_1_MASK, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %169

111:                                              ; preds = %102
  %112 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %113 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @MADERA_AIF_RATE_CTRL, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @regmap_read(i32 %116, i32 %119, i32* %15)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @madera_aif_err(%struct.snd_soc_dai* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %4, align 4
  br label %169

128:                                              ; preds = %111
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @MADERA_AIF1_RATE_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @MADERA_AIF1_RATE_MASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %169

137:                                              ; preds = %128
  %138 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %139 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %138, i32 0, i32 0
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @MADERA_AIF_RATE_CTRL, align 4
  %144 = add nsw i32 %142, %143
  %145 = call i32 @madera_can_change_grp_rate(%struct.madera_priv* %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %137
  %148 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %149 = call i32 @madera_aif_warn(%struct.snd_soc_dai* %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @EBUSY, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %17, align 4
  br label %164

152:                                              ; preds = %137
  %153 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %154 = call i32 @madera_spin_sysclk(%struct.madera_priv* %153)
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @MADERA_AIF_RATE_CTRL, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* @MADERA_AIF1_RATE_MASK, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %155, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %163 = call i32 @madera_spin_sysclk(%struct.madera_priv* %162)
  br label %164

164:                                              ; preds = %152, %147
  %165 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %166 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %165, i32 0, i32 0
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %17, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %164, %136, %123, %110, %94, %62
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @madera_aif_err(%struct.snd_soc_dai*, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @madera_can_change_grp_rate(%struct.madera_priv*, i32) #1

declare dso_local i32 @madera_aif_warn(%struct.snd_soc_dai*, i8*) #1

declare dso_local i32 @madera_spin_sysclk(%struct.madera_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
