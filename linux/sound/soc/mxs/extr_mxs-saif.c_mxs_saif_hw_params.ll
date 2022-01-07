; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mxs_saif = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"set mclk first\0A\00", align 1
@SAIF_STAT = common dso_local global i64 0, align 8
@BM_SAIF_STAT_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"error: busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to get proper clk\0A\00", align 1
@SAIF_CTRL = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_WORD_LENGTH = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_BITCLK_48XFS_ENABLE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_READ_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @mxs_saif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.mxs_saif*, align 8
  %9 = alloca %struct.mxs_saif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.mxs_saif* %14, %struct.mxs_saif** %8, align 8
  %15 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %16 = call %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif* %15)
  store %struct.mxs_saif* %16, %struct.mxs_saif** %9, align 8
  %17 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %18 = icmp ne %struct.mxs_saif* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %170

22:                                               ; preds = %3
  %23 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %24 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %29 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %170

39:                                               ; preds = %27, %22
  %40 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %41 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SAIF_STAT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @__raw_readl(i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %47 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @BM_SAIF_STAT_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %170

62:                                               ; preds = %50, %39
  %63 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %64 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %65 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %68 = call i32 @params_rate(%struct.snd_pcm_hw_params* %67)
  %69 = call i32 @mxs_saif_set_clk(%struct.mxs_saif* %63, i32 %66, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %170

78:                                               ; preds = %62
  %79 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %80 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %81 = icmp ne %struct.mxs_saif* %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %84 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_enable(i32 %85)
  %87 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %88 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @clk_set_rate(i32 %89, i32 24000000)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %92 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @clk_disable(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %170

99:                                               ; preds = %82
  %100 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %101 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @clk_prepare(i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %170

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %78
  %110 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %111 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SAIF_CTRL, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @__raw_readl(i64 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @BM_SAIF_CTRL_WORD_LENGTH, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @BM_SAIF_CTRL_BITCLK_48XFS_ENABLE, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %125 = call i32 @params_format(%struct.snd_pcm_hw_params* %124)
  switch i32 %125, label %144 [
    i32 130, label %126
    i32 129, label %130
    i32 128, label %137
  ]

126:                                              ; preds = %109
  %127 = call i32 @BF_SAIF_CTRL_WORD_LENGTH(i32 0)
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %147

130:                                              ; preds = %109
  %131 = call i32 @BF_SAIF_CTRL_WORD_LENGTH(i32 4)
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @BM_SAIF_CTRL_BITCLK_48XFS_ENABLE, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %147

137:                                              ; preds = %109
  %138 = call i32 @BF_SAIF_CTRL_WORD_LENGTH(i32 8)
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* @BM_SAIF_CTRL_BITCLK_48XFS_ENABLE, align 4
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %147

144:                                              ; preds = %109
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %170

147:                                              ; preds = %137, %130, %126
  %148 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i32, i32* @BM_SAIF_CTRL_READ_MODE, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %10, align 4
  br label %162

158:                                              ; preds = %147
  %159 = load i32, i32* @BM_SAIF_CTRL_READ_MODE, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %165 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SAIF_CTRL, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @__raw_writel(i32 %163, i64 %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %162, %144, %106, %97, %72, %55, %32, %19
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @mxs_saif_set_clk(%struct.mxs_saif*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @BF_SAIF_CTRL_WORD_LENGTH(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
