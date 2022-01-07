; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unsupported clock setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@RT5651_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5651_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5651_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5651_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5651_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5651_I2S1_SDP = common dso_local global i32 0, align 4
@RT5651_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5651_ADDA_CLK1 = common dso_local global i32 0, align 4
@RT5651_I2S_BCLK_MS2_MASK = common dso_local global i32 0, align 4
@RT5651_I2S_PD2_MASK = common dso_local global i32 0, align 4
@RT5651_I2S_PD2_SFT = common dso_local global i32 0, align 4
@RT5651_I2S2_SDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Wrong dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5651_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5651_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5651_priv* %20, %struct.rt5651_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %34 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rl6231_get_clk_info(i32 %32, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %181

51:                                               ; preds = %3
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %53 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %181

64:                                               ; preds = %51
  %65 = load i32, i32* %15, align 4
  %66 = icmp sgt i32 %65, 32
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  store i32 %68, i32* %14, align 4
  %69 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %70 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 32, %77
  %79 = mul nsw i32 %76, %78
  %80 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %81 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %86, align 4
  %87 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %91 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %99 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %105)
  %107 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %113 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111, i64 %114)
  %116 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %117 = call i32 @params_width(%struct.snd_pcm_hw_params* %116)
  switch i32 %117, label %131 [
    i32 16, label %118
    i32 20, label %119
    i32 24, label %123
    i32 8, label %127
  ]

118:                                              ; preds = %64
  br label %134

119:                                              ; preds = %64
  %120 = load i32, i32* @RT5651_I2S_DL_20, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %134

123:                                              ; preds = %64
  %124 = load i32, i32* @RT5651_I2S_DL_24, align 4
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  br label %134

127:                                              ; preds = %64
  %128 = load i32, i32* @RT5651_I2S_DL_8, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %134

131:                                              ; preds = %64
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %181

134:                                              ; preds = %127, %123, %119, %118
  %135 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %136 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  switch i64 %137, label %170 [
    i64 129, label %138
    i64 128, label %153
  ]

138:                                              ; preds = %134
  %139 = load i32, i32* @RT5651_I2S_PD1_MASK, align 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @RT5651_I2S_PD1_SFT, align 4
  %142 = shl i32 %140, %141
  store i32 %142, i32* %11, align 4
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %144 = load i32, i32* @RT5651_I2S1_SDP, align 4
  %145 = load i32, i32* @RT5651_I2S_DL_MASK, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %149 = load i32, i32* @RT5651_ADDA_CLK1, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %148, i32 %149, i32 %150, i32 %151)
  br label %180

153:                                              ; preds = %134
  %154 = load i32, i32* @RT5651_I2S_BCLK_MS2_MASK, align 4
  %155 = load i32, i32* @RT5651_I2S_PD2_MASK, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @RT5651_I2S_PD2_SFT, align 4
  %159 = shl i32 %157, %158
  store i32 %159, i32* %11, align 4
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %161 = load i32, i32* @RT5651_I2S2_SDP, align 4
  %162 = load i32, i32* @RT5651_I2S_DL_MASK, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %166 = load i32, i32* @RT5651_ADDA_CLK1, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %165, i32 %166, i32 %167, i32 %168)
  br label %180

170:                                              ; preds = %134
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %172 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %175 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 (i32, i8*, ...) @dev_err(i32 %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %181

180:                                              ; preds = %153, %138
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %170, %131, %56, %44
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
