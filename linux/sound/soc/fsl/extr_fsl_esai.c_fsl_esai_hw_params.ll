; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_esai = type { i32, i32, i32, i32, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ESAI_xCR_xSWS_MASK = common dso_local global i32 0, align 4
@REG_ESAI_TCR = common dso_local global i32 0, align 4
@ESAI_xCR_xMOD_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_xMOD_NETWORK = common dso_local global i32 0, align 4
@ESAI_xFCR_xFR_MASK = common dso_local global i32 0, align 4
@ESAI_xFCR_xFR = common dso_local global i32 0, align 4
@ESAI_xFCR_xWA_MASK = common dso_local global i32 0, align 4
@ESAI_xFCR_xFWM_MASK = common dso_local global i32 0, align 4
@ESAI_xFCR_TE_MASK = common dso_local global i32 0, align 4
@ESAI_xFCR_TIEN = common dso_local global i32 0, align 4
@ESAI_xFCR_RE_MASK = common dso_local global i32 0, align 4
@ESAI_xCR_PADC = common dso_local global i32 0, align 4
@REG_ESAI_PRRC = common dso_local global i32 0, align 4
@ESAI_PRRC_PDC_MASK = common dso_local global i32 0, align 4
@ESAI_GPIO = common dso_local global i32 0, align 4
@REG_ESAI_PCRC = common dso_local global i32 0, align 4
@ESAI_PCRC_PC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @fsl_esai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsl_esai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %19 = call %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.fsl_esai* %19, %struct.fsl_esai** %8, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_width(%struct.snd_pcm_hw_params* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_channels(%struct.snd_pcm_hw_params* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %32 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DIV_ROUND_UP(i32 %30, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %37 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %42 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %3
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @params_rate(%struct.snd_pcm_hw_params* %45)
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %50 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %14, align 4
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %54 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %55 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %44
  %62 = phi i1 [ true, %44 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @fsl_esai_set_bclk(%struct.snd_soc_dai* %53, i32 %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %4, align 4
  br label %193

70:                                               ; preds = %61
  %71 = load i32, i32* @ESAI_xCR_xSWS_MASK, align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ESAI_xCR_xSWS(i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %76 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @REG_ESAI_xCR(i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @regmap_update_bits(i32 %77, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %70
  %86 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %87 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %92 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @REG_ESAI_TCR, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %85, %70
  %99 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %100 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @REG_ESAI_xCR(i32 %102)
  %104 = load i32, i32* @ESAI_xCR_xMOD_MASK, align 4
  %105 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %106 = call i32 @params_channels(%struct.snd_pcm_hw_params* %105)
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* @ESAI_xCR_xMOD_NETWORK, align 4
  br label %111

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = call i32 @regmap_update_bits(i32 %101, i32 %103, i32 %104, i32 %112)
  %114 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %115 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @REG_ESAI_xFCR(i32 %117)
  %119 = load i32, i32* @ESAI_xFCR_xFR_MASK, align 4
  %120 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %121 = call i32 @regmap_update_bits(i32 %116, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @ESAI_xFCR_xFR_MASK, align 4
  %123 = load i32, i32* @ESAI_xFCR_xWA_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ESAI_xFCR_xFWM_MASK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %111
  %130 = load i32, i32* @ESAI_xFCR_TE_MASK, align 4
  %131 = load i32, i32* @ESAI_xFCR_TIEN, align 4
  %132 = or i32 %130, %131
  br label %135

133:                                              ; preds = %111
  %134 = load i32, i32* @ESAI_xFCR_RE_MASK, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi i32 [ %132, %129 ], [ %134, %133 ]
  %137 = or i32 %126, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @ESAI_xFCR_xWA(i32 %138)
  %140 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %141 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ESAI_xFCR_xFWM(i32 %142)
  %144 = or i32 %139, %143
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %135
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @ESAI_xFCR_TE(i32 %148)
  %150 = load i32, i32* @ESAI_xFCR_TIEN, align 4
  %151 = or i32 %149, %150
  br label %155

152:                                              ; preds = %135
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @ESAI_xFCR_RE(i32 %153)
  br label %155

155:                                              ; preds = %152, %147
  %156 = phi i32 [ %151, %147 ], [ %154, %152 ]
  %157 = or i32 %144, %156
  store i32 %157, i32* %16, align 4
  %158 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %159 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @REG_ESAI_xFCR(i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @regmap_update_bits(i32 %160, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %155
  %169 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %170 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @REG_ESAI_TCR, align 4
  %173 = load i32, i32* @ESAI_xCR_PADC, align 4
  %174 = load i32, i32* @ESAI_xCR_PADC, align 4
  %175 = call i32 @regmap_update_bits(i32 %171, i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %155
  %177 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %178 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @REG_ESAI_PRRC, align 4
  %181 = load i32, i32* @ESAI_PRRC_PDC_MASK, align 4
  %182 = load i32, i32* @ESAI_GPIO, align 4
  %183 = call i32 @ESAI_PRRC_PDC(i32 %182)
  %184 = call i32 @regmap_update_bits(i32 %179, i32 %180, i32 %181, i32 %183)
  %185 = load %struct.fsl_esai*, %struct.fsl_esai** %8, align 8
  %186 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @REG_ESAI_PCRC, align 4
  %189 = load i32, i32* @ESAI_PCRC_PC_MASK, align 4
  %190 = load i32, i32* @ESAI_GPIO, align 4
  %191 = call i32 @ESAI_PCRC_PC(i32 %190)
  %192 = call i32 @regmap_update_bits(i32 %187, i32 %188, i32 %189, i32 %191)
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %176, %68
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @fsl_esai_set_bclk(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @ESAI_xCR_xSWS(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @REG_ESAI_xCR(i32) #1

declare dso_local i32 @REG_ESAI_xFCR(i32) #1

declare dso_local i32 @ESAI_xFCR_xWA(i32) #1

declare dso_local i32 @ESAI_xFCR_xFWM(i32) #1

declare dso_local i32 @ESAI_xFCR_TE(i32) #1

declare dso_local i32 @ESAI_xFCR_RE(i32) #1

declare dso_local i32 @ESAI_PRRC_PDC(i32) #1

declare dso_local i32 @ESAI_PCRC_PC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
