; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_sai = type { i32, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@FSL_SAI_CR2_SYNC = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@RX = common dso_local global i64 0, align 8
@FSL_SAI_CSR_FRDE = common dso_local global i32 0, align 4
@FSL_SAI_CSR_TERE = common dso_local global i32 0, align 4
@FSL_SAI_CSR_xIE_MASK = common dso_local global i32 0, align 4
@FSL_SAI_FLAGS = common dso_local global i32 0, align 4
@FSL_SAI_CSR_FR = common dso_local global i32 0, align 4
@FSL_SAI_CSR_SR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @fsl_sai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsl_sai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.fsl_sai* %14, %struct.fsl_sai** %8, align 8
  %15 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %16 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  store i32 100, i32* %12, align 4
  %26 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %27 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @FSL_SAI_TCR2(i32 %29)
  %31 = load i32, i32* @FSL_SAI_CR2_SYNC, align 4
  %32 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %33 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @TX, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @FSL_SAI_CR2_SYNC, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = call i32 @regmap_update_bits(i32 %28, i32 %30, i32 %31, i32 %43)
  %45 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %46 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @FSL_SAI_RCR2(i32 %48)
  %50 = load i32, i32* @FSL_SAI_CR2_SYNC, align 4
  %51 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %52 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @RX, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* @FSL_SAI_CR2_SYNC, align 4
  br label %61

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = call i32 @regmap_update_bits(i32 %47, i32 %49, i32 %50, i32 %62)
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %216 [
    i32 130, label %65
    i32 131, label %65
    i32 132, label %65
    i32 129, label %100
    i32 128, label %100
    i32 133, label %100
  ]

65:                                               ; preds = %61, %61, %61
  %66 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %67 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @FSL_SAI_xCSR(i32 %69, i32 %70)
  %72 = load i32, i32* @FSL_SAI_CSR_FRDE, align 4
  %73 = load i32, i32* @FSL_SAI_CSR_FRDE, align 4
  %74 = call i32 @regmap_update_bits(i32 %68, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %76 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @FSL_SAI_RCSR(i32 %78)
  %80 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %81 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %82 = call i32 @regmap_update_bits(i32 %77, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %84 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @FSL_SAI_TCSR(i32 %86)
  %88 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %89 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %90 = call i32 @regmap_update_bits(i32 %85, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %92 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @FSL_SAI_xCSR(i32 %94, i32 %95)
  %97 = load i32, i32* @FSL_SAI_CSR_xIE_MASK, align 4
  %98 = load i32, i32* @FSL_SAI_FLAGS, align 4
  %99 = call i32 @regmap_update_bits(i32 %93, i32 %96, i32 %97, i32 %98)
  br label %219

100:                                              ; preds = %61, %61, %61
  %101 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %102 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @FSL_SAI_xCSR(i32 %104, i32 %105)
  %107 = load i32, i32* @FSL_SAI_CSR_FRDE, align 4
  %108 = call i32 @regmap_update_bits(i32 %103, i32 %106, i32 %107, i32 0)
  %109 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %110 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @FSL_SAI_xCSR(i32 %112, i32 %113)
  %115 = load i32, i32* @FSL_SAI_CSR_xIE_MASK, align 4
  %116 = call i32 @regmap_update_bits(i32 %111, i32 %114, i32 %115, i32 0)
  %117 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %118 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @FSL_SAI_xCSR(i32 %123, i32 %124)
  %126 = call i32 @regmap_read(i32 %119, i32 %125, i32* %11)
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @FSL_SAI_CSR_FRDE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %215, label %131

131:                                              ; preds = %100
  %132 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %133 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @FSL_SAI_TCSR(i32 %135)
  %137 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %138 = call i32 @regmap_update_bits(i32 %134, i32 %136, i32 %137, i32 0)
  %139 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %140 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @FSL_SAI_RCSR(i32 %142)
  %144 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %145 = call i32 @regmap_update_bits(i32 %141, i32 %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %164, %131
  %147 = call i32 @udelay(i32 10)
  %148 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %149 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @FSL_SAI_xCSR(i32 %151, i32 %152)
  %154 = call i32 @regmap_read(i32 %150, i32 %153, i32* %11)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @FSL_SAI_CSR_TERE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %159, %155
  %165 = phi i1 [ false, %155 ], [ %163, %159 ]
  br i1 %165, label %146, label %166

166:                                              ; preds = %164
  %167 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %168 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @FSL_SAI_TCSR(i32 %170)
  %172 = load i32, i32* @FSL_SAI_CSR_FR, align 4
  %173 = load i32, i32* @FSL_SAI_CSR_FR, align 4
  %174 = call i32 @regmap_update_bits(i32 %169, i32 %171, i32 %172, i32 %173)
  %175 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %176 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @FSL_SAI_RCSR(i32 %178)
  %180 = load i32, i32* @FSL_SAI_CSR_FR, align 4
  %181 = load i32, i32* @FSL_SAI_CSR_FR, align 4
  %182 = call i32 @regmap_update_bits(i32 %177, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %184 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %214, label %187

187:                                              ; preds = %166
  %188 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %189 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @FSL_SAI_TCSR(i32 %191)
  %193 = load i32, i32* @FSL_SAI_CSR_SR, align 4
  %194 = call i32 @regmap_write(i32 %190, i32 %192, i32 %193)
  %195 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %196 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @FSL_SAI_RCSR(i32 %198)
  %200 = load i32, i32* @FSL_SAI_CSR_SR, align 4
  %201 = call i32 @regmap_write(i32 %197, i32 %199, i32 %200)
  %202 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %203 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @FSL_SAI_TCSR(i32 %205)
  %207 = call i32 @regmap_write(i32 %204, i32 %206, i32 0)
  %208 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %209 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @FSL_SAI_RCSR(i32 %211)
  %213 = call i32 @regmap_write(i32 %210, i32 %212, i32 0)
  br label %214

214:                                              ; preds = %187, %166
  br label %215

215:                                              ; preds = %214, %100
  br label %219

216:                                              ; preds = %61
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %4, align 4
  br label %220

219:                                              ; preds = %215, %65
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %219, %216
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FSL_SAI_TCR2(i32) #1

declare dso_local i32 @FSL_SAI_RCR2(i32) #1

declare dso_local i32 @FSL_SAI_xCSR(i32, i32) #1

declare dso_local i32 @FSL_SAI_RCSR(i32) #1

declare dso_local i32 @FSL_SAI_TCSR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
