; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.hdmi_audio_data = type { %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.snd_pcm_substream*, %struct.snd_cea_861_aud_if, %struct.snd_aes_iec958 }
%struct.TYPE_6__ = type { %struct.snd_cea_861_aud_if*, %struct.snd_aes_iec958* }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_cea_861_aud_if = type { i32, i32, i32, i64, i32 }
%struct.snd_aes_iec958 = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"format not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_NONE = common dso_local global i32 0, align 4
@IEC958_AES1_CON_GENERAL = common dso_local global i32 0, align 4
@IEC958_AES2_CON_SOURCE_UNSPEC = common dso_local global i32 0, align 4
@IEC958_AES2_CON_CHANNEL_UNSPEC = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_88200 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_176400 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rate not supported!\0A\00", align 1
@IEC958_AES3_CON_CLOCK_1000PPM = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN_20_16 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_MAX_WORDLEN_24 = common dso_local global i32 0, align 4
@IEC958_AES4_CON_WORDLEN_24_20 = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB1CC = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB1CT_FROM_STREAM = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB2SF_FROM_STREAM = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB2SS_FROM_STREAM = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB5_DM_INH_PERMITTED = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB5_DM_INH_PROHIBITED = common dso_local global i32 0, align 4
@CEA861_AUDIO_INFOFRAME_DB5_LSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @hdmi_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.hdmi_audio_data*, align 8
  %9 = alloca %struct.snd_aes_iec958*, align 8
  %10 = alloca %struct.snd_cea_861_aud_if*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = call %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream* %11)
  store %struct.hdmi_audio_data* %12, %struct.hdmi_audio_data** %8, align 8
  %13 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %14 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %13, i32 0, i32 6
  store %struct.snd_aes_iec958* %14, %struct.snd_aes_iec958** %9, align 8
  %15 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %16 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %15, i32 0, i32 5
  store %struct.snd_cea_861_aud_if* %16, %struct.snd_cea_861_aud_if** %10, align 8
  %17 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %18 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %17, i32 0, i32 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = icmp ne %struct.snd_pcm_substream* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_format(%struct.snd_pcm_hw_params* %24)
  switch i32 %25, label %34 [
    i32 129, label %26
    i32 128, label %30
  ]

26:                                               ; preds = %3
  %27 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %28 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 16, i32* %29, align 8
  br label %41

30:                                               ; preds = %3
  %31 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %32 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 32, i32* %33, align 8
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %287

41:                                               ; preds = %30, %26
  %42 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %43 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %44 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store %struct.snd_aes_iec958* %42, %struct.snd_aes_iec958** %45, align 8
  %46 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %47 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %48 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.snd_cea_861_aud_if* %46, %struct.snd_cea_861_aud_if** %49, align 8
  %50 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %51 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @memset(i32* %52, i32 0, i32 8)
  %54 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %57 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %65 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %71 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %72 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_NONE, align 4
  %78 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %79 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @IEC958_AES1_CON_GENERAL, align 4
  %85 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %86 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @IEC958_AES2_CON_SOURCE_UNSPEC, align 4
  %90 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %91 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @IEC958_AES2_CON_CHANNEL_UNSPEC, align 4
  %97 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %98 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  %103 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %104 = call i32 @params_rate(%struct.snd_pcm_hw_params* %103)
  switch i32 %104, label %161 [
    i32 32000, label %105
    i32 44100, label %113
    i32 48000, label %121
    i32 88200, label %129
    i32 96000, label %137
    i32 176400, label %145
    i32 192000, label %153
  ]

105:                                              ; preds = %41
  %106 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %107 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %108 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %106
  store i32 %112, i32* %110, align 4
  br label %168

113:                                              ; preds = %41
  %114 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %115 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %116 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %168

121:                                              ; preds = %41
  %122 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %123 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %124 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 4
  br label %168

129:                                              ; preds = %41
  %130 = load i32, i32* @IEC958_AES3_CON_FS_88200, align 4
  %131 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %132 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 4
  br label %168

137:                                              ; preds = %41
  %138 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  %139 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %140 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  br label %168

145:                                              ; preds = %41
  %146 = load i32, i32* @IEC958_AES3_CON_FS_176400, align 4
  %147 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %148 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  br label %168

153:                                              ; preds = %41
  %154 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  %155 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %156 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %154
  store i32 %160, i32* %158, align 4
  br label %168

161:                                              ; preds = %41
  %162 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %287

168:                                              ; preds = %153, %145, %137, %129, %121, %113, %105
  %169 = load i32, i32* @IEC958_AES3_CON_CLOCK_1000PPM, align 4
  %170 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %171 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 4
  %176 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %177 = call i32 @params_format(%struct.snd_pcm_hw_params* %176)
  switch i32 %177, label %209 [
    i32 129, label %178
    i32 128, label %194
  ]

178:                                              ; preds = %168
  %179 = load i32, i32* @IEC958_AES4_CON_WORDLEN_20_16, align 4
  %180 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %181 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 4
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %179
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @IEC958_AES4_CON_MAX_WORDLEN_24, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %189 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 4
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %187
  store i32 %193, i32* %191, align 4
  br label %216

194:                                              ; preds = %168
  %195 = load i32, i32* @IEC958_AES4_CON_WORDLEN_24_20, align 4
  %196 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %197 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @IEC958_AES4_CON_MAX_WORDLEN_24, align 4
  %203 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %9, align 8
  %204 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %202
  store i32 %208, i32* %206, align 4
  br label %216

209:                                              ; preds = %168
  %210 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %211 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dev_err(i32 %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %287

216:                                              ; preds = %194, %178
  %217 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %218 = call i32 @params_channels(%struct.snd_pcm_hw_params* %217)
  %219 = sub nsw i32 %218, 1
  %220 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB1CC, align 4
  %221 = and i32 %219, %220
  %222 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %223 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB1CT_FROM_STREAM, align 4
  %225 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %226 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB2SF_FROM_STREAM, align 4
  %230 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %231 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB2SS_FROM_STREAM, align 4
  %233 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %234 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %238 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %237, i32 0, i32 3
  store i64 0, i64* %238, align 8
  %239 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %240 = call i32 @params_channels(%struct.snd_pcm_hw_params* %239)
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %245

242:                                              ; preds = %216
  %243 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %244 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %243, i32 0, i32 1
  store i32 0, i32* %244, align 4
  br label %256

245:                                              ; preds = %216
  %246 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %247 = call i32 @params_channels(%struct.snd_pcm_hw_params* %246)
  %248 = icmp eq i32 %247, 6
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %251 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %250, i32 0, i32 1
  store i32 11, i32* %251, align 4
  br label %255

252:                                              ; preds = %245
  %253 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %254 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %253, i32 0, i32 1
  store i32 19, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %249
  br label %256

256:                                              ; preds = %255, %242
  %257 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %258 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB5_DM_INH_PERMITTED, align 4
  %263 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %264 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  br label %269

265:                                              ; preds = %256
  %266 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB5_DM_INH_PROHIBITED, align 4
  %267 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %268 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  br label %269

269:                                              ; preds = %265, %261
  %270 = load i32, i32* @CEA861_AUDIO_INFOFRAME_DB5_LSV, align 4
  %271 = and i32 0, %270
  %272 = load %struct.snd_cea_861_aud_if*, %struct.snd_cea_861_aud_if** %10, align 8
  %273 = getelementptr inbounds %struct.snd_cea_861_aud_if, %struct.snd_cea_861_aud_if* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %277 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %276, i32 0, i32 2
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %279, align 8
  %281 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %282 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %8, align 8
  %285 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %284, i32 0, i32 0
  %286 = call i32 %280(i32 %283, %struct.TYPE_6__* %285)
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %269, %209, %161, %34
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
