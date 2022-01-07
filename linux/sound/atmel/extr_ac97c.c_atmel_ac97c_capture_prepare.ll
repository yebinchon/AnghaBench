; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32 }
%struct.atmel_ac97c = type { i32, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ICA = common dso_local global i32 0, align 4
@PCM_LEFT = common dso_local global i32 0, align 4
@PCM_RIGHT = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAMR = common dso_local global i32 0, align 4
@AC97C_CMR_DMAEN = common dso_local global i64 0, align 8
@AC97C_CMR_SIZE_16 = common dso_local global i64 0, align 8
@AC97C_CMR_CEM_LITTLE = common dso_local global i64 0, align 8
@AC97C_CSR_OVRUN = common dso_local global i64 0, align 8
@IMR = common dso_local global i32 0, align 4
@AC97C_SR_CAEVT = common dso_local global i64 0, align 8
@IER = common dso_local global i32 0, align 4
@MR = common dso_local global i32 0, align 4
@AC97C_MR_VRA = common dso_local global i64 0, align 8
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not set rate %d Hz\0A\00", align 1
@ATMEL_PDC_RPR = common dso_local global i64 0, align 8
@ATMEL_PDC_RCR = common dso_local global i64 0, align 8
@ATMEL_PDC_RNPR = common dso_local global i64 0, align 8
@ATMEL_PDC_RNCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @atmel_ac97c_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.atmel_ac97c*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.atmel_ac97c* %10, %struct.atmel_ac97c** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %20 = load i32, i32* @ICA, align 4
  %21 = call i64 @ac97c_readl(%struct.atmel_ac97c* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @PCM_LEFT, align 4
  %25 = call i64 @AC97C_CH_MASK(i32 %24)
  %26 = load i32, i32* @PCM_RIGHT, align 4
  %27 = call i64 @AC97C_CH_MASK(i32 %26)
  %28 = or i64 %25, %27
  %29 = xor i64 %28, -1
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %51 [
    i32 1, label %35
    i32 2, label %41
  ]

35:                                               ; preds = %1
  %36 = load i32, i32* @PCM_LEFT, align 4
  %37 = load i32, i32* @A, align 4
  %38 = call i64 @AC97C_CH_ASSIGN(i32 %36, i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %54

41:                                               ; preds = %1
  %42 = load i32, i32* @PCM_LEFT, align 4
  %43 = load i32, i32* @A, align 4
  %44 = call i64 @AC97C_CH_ASSIGN(i32 %42, i32 %43)
  %45 = load i32, i32* @PCM_RIGHT, align 4
  %46 = load i32, i32* @A, align 4
  %47 = call i64 @AC97C_CH_ASSIGN(i32 %45, i32 %46)
  %48 = or i64 %44, %47
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %54

51:                                               ; preds = %1
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %207

54:                                               ; preds = %41, %35
  %55 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %56 = load i32, i32* @ICA, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @ac97c_writel(%struct.atmel_ac97c* %55, i32 %56, i64 %57)
  %59 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %60 = load i32, i32* @CAMR, align 4
  %61 = call i64 @ac97c_readl(%struct.atmel_ac97c* %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %63 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i64, i64* @AC97C_CMR_DMAEN, align 8
  %68 = load i64, i64* @AC97C_CMR_SIZE_16, align 8
  %69 = or i64 %67, %68
  store i64 %69, i64* %7, align 8
  br label %76

70:                                               ; preds = %54
  %71 = load i64, i64* @AC97C_CMR_DMAEN, align 8
  %72 = load i64, i64* @AC97C_CMR_SIZE_16, align 8
  %73 = or i64 %71, %72
  %74 = load i64, i64* %7, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %86 [
    i32 128, label %80
    i32 129, label %81
  ]

80:                                               ; preds = %76
  br label %104

81:                                               ; preds = %76
  %82 = load i64, i64* @AC97C_CMR_CEM_LITTLE, align 8
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %7, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %104

86:                                               ; preds = %76
  %87 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %88 = load i32, i32* @ICA, align 4
  %89 = call i64 @ac97c_readl(%struct.atmel_ac97c* %87, i32 %88)
  store i64 %89, i64* %7, align 8
  %90 = load i32, i32* @PCM_LEFT, align 4
  %91 = call i64 @AC97C_CH_MASK(i32 %90)
  %92 = load i32, i32* @PCM_RIGHT, align 4
  %93 = call i64 @AC97C_CH_MASK(i32 %92)
  %94 = or i64 %91, %93
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %7, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %7, align 8
  %98 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %99 = load i32, i32* @ICA, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @ac97c_writel(%struct.atmel_ac97c* %98, i32 %99, i64 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %207

104:                                              ; preds = %81, %80
  %105 = load i64, i64* @AC97C_CSR_OVRUN, align 8
  %106 = load i64, i64* %7, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %109 = load i32, i32* @CAMR, align 4
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @ac97c_writel(%struct.atmel_ac97c* %108, i32 %109, i64 %110)
  %112 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %113 = load i32, i32* @IMR, align 4
  %114 = call i64 @ac97c_readl(%struct.atmel_ac97c* %112, i32 %113)
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* @AC97C_SR_CAEVT, align 8
  %116 = load i64, i64* %7, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %7, align 8
  %118 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %119 = load i32, i32* @IER, align 4
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @ac97c_writel(%struct.atmel_ac97c* %118, i32 %119, i64 %120)
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 48000
  br i1 %125, label %126, label %137

126:                                              ; preds = %104
  %127 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %128 = load i32, i32* @MR, align 4
  %129 = call i64 @ac97c_readl(%struct.atmel_ac97c* %127, i32 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* @AC97C_MR_VRA, align 8
  %131 = load i64, i64* %7, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %7, align 8
  %133 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %134 = load i32, i32* @MR, align 4
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @ac97c_writel(%struct.atmel_ac97c* %133, i32 %134, i64 %135)
  br label %149

137:                                              ; preds = %104
  %138 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %139 = load i32, i32* @MR, align 4
  %140 = call i64 @ac97c_readl(%struct.atmel_ac97c* %138, i32 %139)
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* @AC97C_MR_VRA, align 8
  %142 = xor i64 %141, -1
  %143 = load i64, i64* %7, align 8
  %144 = and i64 %143, %142
  store i64 %144, i64* %7, align 8
  %145 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %146 = load i32, i32* @MR, align 4
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @ac97c_writel(%struct.atmel_ac97c* %145, i32 %146, i64 %147)
  br label %149

149:                                              ; preds = %137, %126
  %150 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %151 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %155 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @snd_ac97_set_rate(i32 %152, i32 %153, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %149
  %161 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %162 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dev_dbg(i32* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %160, %149
  %170 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %174 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ATMEL_PDC_RPR, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %172, i64 %177)
  %179 = load i32, i32* %6, align 4
  %180 = sdiv i32 %179, 2
  %181 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %182 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ATMEL_PDC_RCR, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %188 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %189, %190
  %192 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %193 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ATMEL_PDC_RNPR, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @writel(i32 %191, i64 %196)
  %198 = load i32, i32* %6, align 4
  %199 = sdiv i32 %198, 2
  %200 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %201 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @ATMEL_PDC_RNCR, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 %199, i64 %204)
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %169, %86, %51
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i64 @AC97C_CH_MASK(i32) #1

declare dso_local i64 @AC97C_CH_ASSIGN(i32, i32) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
