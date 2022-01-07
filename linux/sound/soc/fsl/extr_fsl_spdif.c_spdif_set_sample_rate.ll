; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.fsl_spdif_priv = type { i64*, i64*, i32*, i32*, i32*, %struct.platform_device*, %struct.regmap*, %struct.spdif_mixer_control }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }
%struct.spdif_mixer_control = type { i32 }

@SPDIF_TXRATE_32000 = common dso_local global i64 0, align 8
@IEC958_AES3_CON_FS_32000 = common dso_local global i64 0, align 8
@SPDIF_TXRATE_44100 = common dso_local global i64 0, align 8
@IEC958_AES3_CON_FS_44100 = common dso_local global i64 0, align 8
@SPDIF_TXRATE_48000 = common dso_local global i64 0, align 8
@IEC958_AES3_CON_FS_48000 = common dso_local global i64 0, align 8
@SPDIF_TXRATE_96000 = common dso_local global i64 0, align 8
@IEC958_AES3_CON_FS_96000 = common dso_local global i64 0, align 8
@SPDIF_TXRATE_192000 = common dso_local global i64 0, align 8
@IEC958_AES3_CON_FS_192000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"unsupported sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STC_TXCLK_SRC_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"tx clock source is out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"the txclk_df can't be zero\0A\00", align 1
@STC_TXCLK_SPDIF_ROOT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to set tx clock rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"expected clock rate = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"actual clock rate = %ld\0A\00", align 1
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@STC_TXCLK_ALL_EN = common dso_local global i64 0, align 8
@STC_TXCLK_ALL_EN_MASK = common dso_local global i64 0, align 8
@STC_TXCLK_SRC_MASK = common dso_local global i64 0, align 8
@STC_TXCLK_DF_MASK = common dso_local global i64 0, align 8
@STC_SYSCLK_DF_MASK = common dso_local global i64 0, align 8
@REG_SPDIF_STC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"set sample rate to %dHz for %dHz playback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @spdif_set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_set_sample_rate(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.fsl_spdif_priv*, align 8
  %8 = alloca %struct.spdif_mixer_control*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %20, align 8
  store %struct.snd_soc_pcm_runtime* %21, %struct.snd_soc_pcm_runtime** %6, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32 %24)
  store %struct.fsl_spdif_priv* %25, %struct.fsl_spdif_priv** %7, align 8
  %26 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %27 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %26, i32 0, i32 7
  store %struct.spdif_mixer_control* %27, %struct.spdif_mixer_control** %8, align 8
  %28 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %29 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %28, i32 0, i32 6
  %30 = load %struct.regmap*, %struct.regmap** %29, align 8
  store %struct.regmap* %30, %struct.regmap** %9, align 8
  %31 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %32 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %31, i32 0, i32 5
  %33 = load %struct.platform_device*, %struct.platform_device** %32, align 8
  store %struct.platform_device* %33, %struct.platform_device** %10, align 8
  store i64 0, i64* %11, align 8
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %50 [
    i32 32000, label %35
    i32 44100, label %38
    i32 48000, label %41
    i32 96000, label %44
    i32 192000, label %47
  ]

35:                                               ; preds = %2
  %36 = load i64, i64* @SPDIF_TXRATE_32000, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* @IEC958_AES3_CON_FS_32000, align 8
  store i64 %37, i64* %11, align 8
  br label %57

38:                                               ; preds = %2
  %39 = load i64, i64* @SPDIF_TXRATE_44100, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* @IEC958_AES3_CON_FS_44100, align 8
  store i64 %40, i64* %11, align 8
  br label %57

41:                                               ; preds = %2
  %42 = load i64, i64* @SPDIF_TXRATE_48000, align 8
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* @IEC958_AES3_CON_FS_48000, align 8
  store i64 %43, i64* %11, align 8
  br label %57

44:                                               ; preds = %2
  %45 = load i64, i64* @SPDIF_TXRATE_96000, align 8
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* @IEC958_AES3_CON_FS_96000, align 8
  store i64 %46, i64* %11, align 8
  br label %57

47:                                               ; preds = %2
  %48 = load i64, i64* @SPDIF_TXRATE_192000, align 8
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* @IEC958_AES3_CON_FS_192000, align 8
  store i64 %49, i64* %11, align 8
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %180

57:                                               ; preds = %47, %44, %41, %38, %35
  %58 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %59 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* @STC_TXCLK_SRC_MAX, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %180

73:                                               ; preds = %57
  %74 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %75 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %180

88:                                               ; preds = %73
  %89 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %90 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* @STC_TXCLK_SPDIF_ROOT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %121

99:                                               ; preds = %88
  %100 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %101 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = mul nsw i32 64, %106
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %17, align 8
  %110 = mul nsw i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @clk_set_rate(i32 %105, i32 %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %99
  %116 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %3, align 4
  br label %180

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 64, %124
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %17, align 8
  %128 = mul nsw i64 %126, %127
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %128, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %137 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @clk_get_rate(i32 %141)
  %143 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %8, align 8
  %145 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @spdif_set_cstatus(%struct.spdif_mixer_control* %144, i32 %145, i64 %146)
  %148 = load i64, i64* @STC_TXCLK_ALL_EN, align 8
  %149 = load i64, i64* %16, align 8
  %150 = call i64 @STC_TXCLK_SRC_SET(i64 %149)
  %151 = or i64 %148, %150
  %152 = load i64, i64* %17, align 8
  %153 = call i64 @STC_TXCLK_DF(i64 %152)
  %154 = or i64 %151, %153
  %155 = load i32, i32* %15, align 4
  %156 = call i64 @STC_SYSCLK_DF(i32 %155)
  %157 = or i64 %154, %156
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* @STC_TXCLK_ALL_EN_MASK, align 8
  %159 = load i64, i64* @STC_TXCLK_SRC_MASK, align 8
  %160 = or i64 %158, %159
  %161 = load i64, i64* @STC_TXCLK_DF_MASK, align 8
  %162 = or i64 %160, %161
  %163 = load i64, i64* @STC_SYSCLK_DF_MASK, align 8
  %164 = or i64 %162, %163
  store i64 %164, i64* %13, align 8
  %165 = load %struct.regmap*, %struct.regmap** %9, align 8
  %166 = load i32, i32* @REG_SPDIF_STC, align 4
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* %12, align 8
  %169 = call i32 @regmap_update_bits(%struct.regmap* %165, i32 %166, i64 %167, i64 %168)
  %170 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %7, align 8
  %173 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %14, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %177, i32 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %121, %115, %82, %67, %50
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spdif_set_cstatus(%struct.spdif_mixer_control*, i32, i64) #1

declare dso_local i64 @STC_TXCLK_SRC_SET(i64) #1

declare dso_local i64 @STC_TXCLK_DF(i64) #1

declare dso_local i64 @STC_SYSCLK_DF(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
