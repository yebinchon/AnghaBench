; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_daiops_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_daiops_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpass_data = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid bit width given: %d\0A\00", align 1
@LPAIF_I2SCTL_LOOPBACK_DISABLE = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_WSSRC_INTERNAL = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_BITWIDTH_16 = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_BITWIDTH_24 = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_BITWIDTH_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid bitwidth given: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@LPAIF_I2SCTL_SPKMODE_SD0 = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKMONO_MONO = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKMONO_STEREO = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKMODE_QUAD01 = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKMODE_6CH = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKMODE_8CH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid channels given: %u\0A\00", align 1
@LPAIF_I2SCTL_MICMODE_SD0 = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICMONO_MONO = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICMONO_STEREO = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICMODE_QUAD01 = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICMODE_6CH = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICMODE_8CH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"error writing to i2sctl reg: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"error setting mi2s bitclk to %u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @lpass_cpu_daiops_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cpu_daiops_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.lpass_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.lpass_data* %16, %struct.lpass_data** %8, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_format(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_channels(%struct.snd_pcm_hw_params* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @snd_pcm_format_width(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %211

34:                                               ; preds = %3
  %35 = load i32, i32* @LPAIF_I2SCTL_LOOPBACK_DISABLE, align 4
  %36 = load i32, i32* @LPAIF_I2SCTL_WSSRC_INTERNAL, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %51 [
    i32 16, label %39
    i32 24, label %43
    i32 32, label %47
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @LPAIF_I2SCTL_BITWIDTH_16, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %59

43:                                               ; preds = %34
  %44 = load i32, i32* @LPAIF_I2SCTL_BITWIDTH_24, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %59

47:                                               ; preds = %34
  %48 = load i32, i32* @LPAIF_I2SCTL_BITWIDTH_32, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %59

51:                                               ; preds = %34
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %211

59:                                               ; preds = %47, %43, %39
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %102 [
    i32 1, label %67
    i32 2, label %74
    i32 4, label %81
    i32 6, label %88
    i32 8, label %95
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* @LPAIF_I2SCTL_SPKMODE_SD0, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @LPAIF_I2SCTL_SPKMONO_MONO, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %110

74:                                               ; preds = %65
  %75 = load i32, i32* @LPAIF_I2SCTL_SPKMODE_SD0, align 4
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @LPAIF_I2SCTL_SPKMONO_STEREO, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %110

81:                                               ; preds = %65
  %82 = load i32, i32* @LPAIF_I2SCTL_SPKMODE_QUAD01, align 4
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* @LPAIF_I2SCTL_SPKMONO_STEREO, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %110

88:                                               ; preds = %65
  %89 = load i32, i32* @LPAIF_I2SCTL_SPKMODE_6CH, align 4
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* @LPAIF_I2SCTL_SPKMONO_STEREO, align 4
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %110

95:                                               ; preds = %65
  %96 = load i32, i32* @LPAIF_I2SCTL_SPKMODE_8CH, align 4
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* @LPAIF_I2SCTL_SPKMONO_STEREO, align 4
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %110

102:                                              ; preds = %65
  %103 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %211

110:                                              ; preds = %95, %88, %81, %74, %67
  br label %157

111:                                              ; preds = %59
  %112 = load i32, i32* %10, align 4
  switch i32 %112, label %148 [
    i32 1, label %113
    i32 2, label %120
    i32 4, label %127
    i32 6, label %134
    i32 8, label %141
  ]

113:                                              ; preds = %111
  %114 = load i32, i32* @LPAIF_I2SCTL_MICMODE_SD0, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @LPAIF_I2SCTL_MICMONO_MONO, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %156

120:                                              ; preds = %111
  %121 = load i32, i32* @LPAIF_I2SCTL_MICMODE_SD0, align 4
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* @LPAIF_I2SCTL_MICMONO_STEREO, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %156

127:                                              ; preds = %111
  %128 = load i32, i32* @LPAIF_I2SCTL_MICMODE_QUAD01, align 4
  %129 = load i32, i32* %12, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* @LPAIF_I2SCTL_MICMONO_STEREO, align 4
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %156

134:                                              ; preds = %111
  %135 = load i32, i32* @LPAIF_I2SCTL_MICMODE_6CH, align 4
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* @LPAIF_I2SCTL_MICMONO_STEREO, align 4
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %156

141:                                              ; preds = %111
  %142 = load i32, i32* @LPAIF_I2SCTL_MICMODE_8CH, align 4
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* @LPAIF_I2SCTL_MICMONO_STEREO, align 4
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  br label %156

148:                                              ; preds = %111
  %149 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %150 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %211

156:                                              ; preds = %141, %134, %127, %120, %113
  br label %157

157:                                              ; preds = %156, %110
  %158 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %159 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %162 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %165 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %164, i32 0, i32 1
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @LPAIF_I2SCTL_REG(i32 %163, i64 %168)
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @regmap_write(i32 %160, i32 %169, i32 %170)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %157
  %175 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %176 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %177, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %4, align 4
  br label %211

181:                                              ; preds = %157
  %182 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %183 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %186 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i32, i32* %184, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %13, align 4
  %194 = mul i32 %192, %193
  %195 = mul i32 %194, 2
  %196 = call i32 @clk_set_rate(i32 %191, i32 %195)
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %181
  %200 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %201 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %13, align 4
  %205 = mul i32 %203, %204
  %206 = mul i32 %205, 2
  %207 = load i32, i32* %14, align 4
  %208 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %207)
  %209 = load i32, i32* %14, align 4
  store i32 %209, i32* %4, align 4
  br label %211

210:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %199, %174, %148, %102, %51, %27
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_I2SCTL_REG(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
