; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-out.c_img_spdif_out_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-out.c_img_spdif_out_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_spdif_out = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"hw_params rate %ld channels %u format %u\0A\00", align 1
@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IMG_SPDIF_OUT_CTL = common dso_local global i32 0, align 4
@IMG_SPDIF_OUT_CTL_CLK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @img_spdif_out_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_out_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.img_spdif_out*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = call %struct.img_spdif_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.img_spdif_out* %19, %struct.img_spdif_out** %8, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i64 @params_rate(%struct.snd_pcm_hw_params* %20)
  store i64 %21, i64* %14, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i64 @params_format(%struct.snd_pcm_hw_params* %22)
  store i64 %23, i64* %17, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_channels(%struct.snd_pcm_hw_params* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %27 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %17, align 8
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %30, i64 %31)
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* @SNDRV_PCM_FORMAT_S32_LE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %130

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %130

45:                                               ; preds = %39
  %46 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %47 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %14, align 8
  %50 = mul nsw i64 %49, 256
  %51 = call i64 @clk_round_rate(i32 %48, i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i64, i64* %10, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %130

57:                                               ; preds = %45
  %58 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %59 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %14, align 8
  %62 = mul nsw i64 %61, 384
  %63 = call i64 @clk_round_rate(i32 %60, i64 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %130

69:                                               ; preds = %57
  %70 = load i64, i64* %10, align 8
  %71 = sdiv i64 %70, 256
  %72 = load i64, i64* %14, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i64 @abs(i64 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sdiv i64 %75, 384
  %77 = load i64, i64* %14, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i64 @abs(i64 %78)
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %85 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @clk_set_rate(i32 %86, i64 %87)
  br label %95

89:                                               ; preds = %69
  %90 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %91 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @clk_set_rate(i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %97 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @clk_get_rate(i32 %98)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = sdiv i64 %100, 256
  %102 = load i64, i64* %14, align 8
  %103 = sub nsw i64 %101, %102
  %104 = call i64 @abs(i64 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %15, align 8
  %106 = sdiv i64 %105, 384
  %107 = load i64, i64* %14, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i64 @abs(i64 %108)
  store i64 %109, i64* %13, align 8
  %110 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %111 = load i32, i32* @IMG_SPDIF_OUT_CTL, align 4
  %112 = call i32 @img_spdif_out_readl(%struct.img_spdif_out* %110, i32 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp sle i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %95
  %117 = load i32, i32* @IMG_SPDIF_OUT_CTL_CLK_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %16, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %16, align 4
  br label %125

121:                                              ; preds = %95
  %122 = load i32, i32* @IMG_SPDIF_OUT_CTL_CLK_MASK, align 4
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @IMG_SPDIF_OUT_CTL, align 4
  %129 = call i32 @img_spdif_out_writel(%struct.img_spdif_out* %126, i32 %127, i32 %128)
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %66, %54, %42, %36
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.img_spdif_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i64) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @img_spdif_out_readl(%struct.img_spdif_out*, i32) #1

declare dso_local i32 @img_spdif_out_writel(%struct.img_spdif_out*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
