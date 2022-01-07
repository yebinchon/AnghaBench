; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, i64, %struct.clk** }
%struct.clk = type { i32 }

@DA7219_DAI_WCLK_IDX = common dso_local global i64 0, align 8
@DA7219_DAI_BCLK_IDX = common dso_local global i64 0, align 8
@DA7219_DAI_WORD_LENGTH_S16_LE = common dso_local global i32 0, align 4
@DA7219_DAI_WORD_LENGTH_S20_LE = common dso_local global i32 0, align 4
@DA7219_DAI_WORD_LENGTH_S24_LE = common dso_local global i32 0, align 4
@DA7219_DAI_WORD_LENGTH_S32_LE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA7219_DAI_CH_NUM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Invalid number of channels, only 1 to %d supported\0A\00", align 1
@DA7219_DAI_CH_NUM_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set WCLK SR %lu: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to set SR %lu: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"BCLK rate mismatch against frame size\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to set BCLK rate %lu: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to set BCLKs per WCLK %d: %d\0A\00", align 1
@DA7219_DAI_CTRL = common dso_local global i32 0, align 4
@DA7219_DAI_WORD_LENGTH_MASK = common dso_local global i32 0, align 4
@DA7219_DAI_CH_NUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @da7219_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da7219_priv*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %8, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.da7219_priv* %23, %struct.da7219_priv** %9, align 8
  %24 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %25 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %24, i32 0, i32 2
  %26 = load %struct.clk**, %struct.clk*** %25, align 8
  %27 = load i64, i64* @DA7219_DAI_WCLK_IDX, align 8
  %28 = getelementptr inbounds %struct.clk*, %struct.clk** %26, i64 %27
  %29 = load %struct.clk*, %struct.clk** %28, align 8
  store %struct.clk* %29, %struct.clk** %10, align 8
  %30 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %31 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %30, i32 0, i32 2
  %32 = load %struct.clk**, %struct.clk*** %31, align 8
  %33 = load i64, i64* @DA7219_DAI_BCLK_IDX, align 8
  %34 = getelementptr inbounds %struct.clk*, %struct.clk** %32, i64 %33
  %35 = load %struct.clk*, %struct.clk** %34, align 8
  store %struct.clk* %35, %struct.clk** %11, align 8
  store i32 0, i32* %12, align 4
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_width(%struct.snd_pcm_hw_params* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  switch i32 %38, label %55 [
    i32 16, label %39
    i32 20, label %43
    i32 24, label %47
    i32 32, label %51
  ]

39:                                               ; preds = %3
  %40 = load i32, i32* @DA7219_DAI_WORD_LENGTH_S16_LE, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %58

43:                                               ; preds = %3
  %44 = load i32, i32* @DA7219_DAI_WORD_LENGTH_S20_LE, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %58

47:                                               ; preds = %3
  %48 = load i32, i32* @DA7219_DAI_WORD_LENGTH_S24_LE, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %58

51:                                               ; preds = %3
  %52 = load i32, i32* @DA7219_DAI_WORD_LENGTH_S32_LE, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %200

58:                                               ; preds = %51, %47, %43, %39
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @params_channels(%struct.snd_pcm_hw_params* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ult i32 %61, 1
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @DA7219_DAI_CH_NUM_MAX, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63, %58
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DA7219_DAI_CH_NUM_MAX, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %200

75:                                               ; preds = %63
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @DA7219_DAI_CH_NUM_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %82 = call i64 @params_rate(%struct.snd_pcm_hw_params* %81)
  store i64 %82, i64* %14, align 8
  %83 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %84 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %75
  %88 = load %struct.clk*, %struct.clk** %10, align 8
  %89 = icmp ne %struct.clk* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load %struct.clk*, %struct.clk** %10, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @clk_set_rate(%struct.clk* %91, i64 %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %100, i32 %101)
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %4, align 4
  br label %200

104:                                              ; preds = %90
  br label %120

105:                                              ; preds = %87, %75
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @da7219_set_sr(%struct.snd_soc_component* %106, i64 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %113 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %14, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %115, i32 %116)
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %4, align 4
  br label %200

119:                                              ; preds = %105
  br label %120

120:                                              ; preds = %119, %104
  %121 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %122 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %192

125:                                              ; preds = %120
  %126 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %127 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %192, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @DA7219_DAI_CH_NUM_MAX, align 4
  %133 = mul i32 %131, %132
  %134 = icmp ule i32 %133, 32
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 32, i32* %17, align 4
  br label %137

136:                                              ; preds = %130
  store i32 64, i32* %17, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load %struct.clk*, %struct.clk** %11, align 8
  %139 = icmp ne %struct.clk* %138, null
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %14, align 8
  %144 = mul i64 %142, %143
  store i64 %144, i64* %15, align 8
  %145 = load %struct.clk*, %struct.clk** %11, align 8
  %146 = load i64, i64* %15, align 8
  %147 = call i64 @clk_round_rate(%struct.clk* %145, i64 %146)
  store i64 %147, i64* %15, align 8
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* %14, align 8
  %150 = udiv i64 %148, %149
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = icmp ult i64 %150, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %140
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %156 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %200

161:                                              ; preds = %140
  %162 = load %struct.clk*, %struct.clk** %11, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @clk_set_rate(%struct.clk* %162, i64 %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %169 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %15, align 8
  %172 = load i32, i32* %18, align 4
  %173 = call i32 (i32, i8*, ...) @dev_err(i32 %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %171, i32 %172)
  %174 = load i32, i32* %18, align 4
  store i32 %174, i32* %4, align 4
  br label %200

175:                                              ; preds = %161
  br label %191

176:                                              ; preds = %137
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @da7219_set_bclks_per_wclk(%struct.snd_soc_component* %177, i32 %178)
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %184 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %18, align 4
  %188 = call i32 (i32, i8*, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load i32, i32* %18, align 4
  store i32 %189, i32* %4, align 4
  br label %200

190:                                              ; preds = %176
  br label %191

191:                                              ; preds = %190, %175
  br label %192

192:                                              ; preds = %191, %125, %120
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %194 = load i32, i32* @DA7219_DAI_CTRL, align 4
  %195 = load i32, i32* @DA7219_DAI_WORD_LENGTH_MASK, align 4
  %196 = load i32, i32* @DA7219_DAI_CH_NUM_MASK, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %193, i32 %194, i32 %197, i32 %198)
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %192, %182, %167, %154, %111, %96, %67, %55
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @da7219_set_sr(%struct.snd_soc_component*, i64) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @da7219_set_bclks_per_wclk(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
