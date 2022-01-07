; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8523_priv = type { i32 }

@WM8523_AIF_CTRL1 = common dso_local global i32 0, align 4
@WM8523_AIF_CTRL2 = common dso_local global i32 0, align 4
@lrclk_ratios = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"MCLK/fs ratio %d unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8523_SR_MASK = common dso_local global i32 0, align 4
@WM8523_AIF_MSTR = common dso_local global i32 0, align 4
@bclk_ratios = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"No matching BCLK/fs ratio for word length %d\0A\00", align 1
@WM8523_BCLKDIV_MASK = common dso_local global i32 0, align 4
@WM8523_BCLKDIV_SHIFT = common dso_local global i32 0, align 4
@WM8523_WL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8523_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8523_priv*, align 8
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
  %17 = call %struct.wm8523_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8523_priv* %17, %struct.wm8523_priv** %9, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = load i32, i32* @WM8523_AIF_CTRL2, align 4
  %23 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %45, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lrclk_ratios, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.wm8523_priv*, %struct.wm8523_priv** %9, align 8
  %31 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  %35 = sdiv i32 %32, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lrclk_ratios, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %48

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %24

48:                                               ; preds = %43, %24
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lrclk_ratios, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wm8523_priv*, %struct.wm8523_priv** %9, align 8
  %58 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %61 = call i32 @params_rate(%struct.snd_pcm_hw_params* %60)
  %62 = sdiv i32 %59, %61
  %63 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %160

66:                                               ; preds = %48
  %67 = load i32, i32* @WM8523_SR_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lrclk_ratios, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @WM8523_AIF_MSTR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %134

83:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bclk_ratios, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_width(%struct.snd_pcm_hw_params* %90)
  %92 = mul nsw i32 %91, 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bclk_ratios, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sle i32 %92, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %105

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %84

105:                                              ; preds = %100, %84
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bclk_ratios, align 8
  %108 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %107)
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %115 = call i32 @params_width(%struct.snd_pcm_hw_params* %114)
  %116 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %160

119:                                              ; preds = %105
  %120 = load i32, i32* @WM8523_BCLKDIV_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bclk_ratios, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WM8523_BCLKDIV_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %119, %66
  %135 = load i32, i32* @WM8523_WL_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %11, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %140 = call i32 @params_width(%struct.snd_pcm_hw_params* %139)
  switch i32 %140, label %151 [
    i32 16, label %141
    i32 20, label %142
    i32 24, label %145
    i32 32, label %148
  ]

141:                                              ; preds = %134
  br label %151

142:                                              ; preds = %134
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, 8
  store i32 %144, i32* %11, align 4
  br label %151

145:                                              ; preds = %134
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, 16
  store i32 %147, i32* %11, align 4
  br label %151

148:                                              ; preds = %134
  %149 = load i32, i32* %11, align 4
  %150 = or i32 %149, 24
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %134, %148, %145, %142, %141
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %153 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %152, i32 %153, i32 %154)
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %157 = load i32, i32* @WM8523_AIF_CTRL2, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %156, i32 %157, i32 %158)
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %151, %110, %53
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.wm8523_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
