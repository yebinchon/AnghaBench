; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_codec_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_codec_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.atmel_pdmic = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"only supports one channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"sample rate is %dHz, min rate is %dHz, max rate is %dHz\0A\00", align 1
@PDMIC_DSPR0_SIZE_16_BITS = common dso_local global i32 0, align 4
@PDMIC_DSPR0_SIZE_SHIFT = common dso_local global i32 0, align 4
@PDMIC_DSPR0_SIZE_32_BITS = common dso_local global i32 0, align 4
@PDMIC_DSPR0_OSR_64 = common dso_local global i32 0, align 4
@PDMIC_DSPR0_OSR_SHIFT = common dso_local global i32 0, align 4
@PDMIC_DSPR0_OSR_128 = common dso_local global i32 0, align 4
@PDMIC_MR_PRESCAL_MAX_VAL = common dso_local global i32 0, align 4
@PDMIC_MR_PRESCAL_SHIFT = common dso_local global i32 0, align 4
@PDMIC_MR_CLKS_GCK = common dso_local global i32 0, align 4
@PDMIC_MR_CLKS_SHIFT = common dso_local global i32 0, align 4
@PDMIC_MR_CLKS_PCK = common dso_local global i32 0, align 4
@PDMIC_MR = common dso_local global i32 0, align 4
@PDMIC_MR_PRESCAL_MASK = common dso_local global i32 0, align 4
@PDMIC_MR_CLKS_MASK = common dso_local global i32 0, align 4
@PDMIC_DSPR0 = common dso_local global i32 0, align 4
@PDMIC_DSPR0_OSR_MASK = common dso_local global i32 0, align 4
@PDMIC_DSPR0_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @atmel_pdmic_codec_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pdmic_codec_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.atmel_pdmic*, align 8
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 1
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %23, align 8
  store %struct.snd_soc_pcm_runtime* %24, %struct.snd_soc_pcm_runtime** %8, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.atmel_pdmic* @snd_soc_card_get_drvdata(i32 %27)
  store %struct.atmel_pdmic* %28, %struct.atmel_pdmic** %9, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %30, align 8
  store %struct.snd_soc_component* %31, %struct.snd_soc_component** %10, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @params_rate(%struct.snd_pcm_hw_params* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %47 = call i32 @params_width(%struct.snd_pcm_hw_params* %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %49 = call i32 @params_channels(%struct.snd_pcm_hw_params* %48)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %3
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %184

58:                                               ; preds = %3
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62, %58
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %184

76:                                               ; preds = %62
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %86 [
    i32 16, label %78
    i32 32, label %82
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* @PDMIC_DSPR0_SIZE_16_BITS, align 4
  %80 = load i32, i32* @PDMIC_DSPR0_SIZE_SHIFT, align 4
  %81 = shl i32 %79, %80
  store i32 %81, i32* %19, align 4
  br label %89

82:                                               ; preds = %76
  %83 = load i32, i32* @PDMIC_DSPR0_SIZE_32_BITS, align 4
  %84 = load i32, i32* @PDMIC_DSPR0_SIZE_SHIFT, align 4
  %85 = shl i32 %83, %84
  store i32 %85, i32* %19, align 4
  br label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %184

89:                                               ; preds = %82, %78
  %90 = load i32, i32* %13, align 4
  %91 = shl i32 %90, 7
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 %92, 6
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* %13, align 4
  %97 = shl i32 %96, 6
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* @PDMIC_DSPR0_OSR_64, align 4
  %99 = load i32, i32* @PDMIC_DSPR0_OSR_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %19, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %19, align 4
  br label %111

103:                                              ; preds = %89
  %104 = load i32, i32* %13, align 4
  %105 = shl i32 %104, 7
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* @PDMIC_DSPR0_OSR_128, align 4
  %107 = load i32, i32* @PDMIC_DSPR0_OSR_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %19, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %103, %95
  %112 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %9, align 8
  %113 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @clk_get_rate(i32 %114)
  store i64 %115, i64* %15, align 8
  %116 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %9, align 8
  %117 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @clk_get_rate(i32 %118)
  store i64 %119, i64* %16, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i32, i32* %17, align 4
  %122 = shl i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = udiv i64 %120, %123
  %125 = trunc i64 %124 to i32
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %20, align 4
  %127 = load i64, i64* %16, align 8
  %128 = load i32, i32* %17, align 4
  %129 = shl i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = udiv i64 %127, %130
  %132 = trunc i64 %131 to i32
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @PDMIC_MR_PRESCAL_MAX_VAL, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %151, label %137

137:                                              ; preds = %111
  %138 = load i64, i64* %16, align 8
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 1
  %141 = shl i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = udiv i64 %138, %142
  %144 = load i64, i64* %15, align 8
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  %147 = shl i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = udiv i64 %144, %148
  %150 = icmp ult i64 %143, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %137, %111
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* @PDMIC_MR_PRESCAL_SHIFT, align 4
  %154 = shl i32 %152, %153
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* @PDMIC_MR_CLKS_GCK, align 4
  %156 = load i32, i32* @PDMIC_MR_CLKS_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %18, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %18, align 4
  br label %169

160:                                              ; preds = %137
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* @PDMIC_MR_PRESCAL_SHIFT, align 4
  %163 = shl i32 %161, %162
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* @PDMIC_MR_CLKS_PCK, align 4
  %165 = load i32, i32* @PDMIC_MR_CLKS_SHIFT, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* %18, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %160, %151
  %170 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %171 = load i32, i32* @PDMIC_MR, align 4
  %172 = load i32, i32* @PDMIC_MR_PRESCAL_MASK, align 4
  %173 = load i32, i32* @PDMIC_MR_CLKS_MASK, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %170, i32 %171, i32 %174, i32 %175)
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %178 = load i32, i32* @PDMIC_DSPR0, align 4
  %179 = load i32, i32* @PDMIC_DSPR0_OSR_MASK, align 4
  %180 = load i32, i32* @PDMIC_DSPR0_SIZE_MASK, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %177, i32 %178, i32 %181, i32 %182)
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %169, %86, %66, %51
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.atmel_pdmic* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
