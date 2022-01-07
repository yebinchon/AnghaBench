; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_esai = type { i32, i64 }

@REG_ESAI_SAICR = common dso_local global i32 0, align 4
@ESAI_SAICR_SYNC = common dso_local global i32 0, align 4
@REG_ESAI_TCCR = common dso_local global i32 0, align 4
@ESAI_xCCR_xDC_MASK = common dso_local global i32 0, align 4
@REG_ESAI_RCCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @fsl_esai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.fsl_esai*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = call %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.fsl_esai* %7, %struct.fsl_esai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %2
  %13 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REG_ESAI_SAICR, align 4
  %17 = load i32, i32* @ESAI_SAICR_SYNC, align 4
  %18 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @ESAI_SAICR_SYNC, align 4
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %26)
  %28 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %29 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @REG_ESAI_TCCR, align 4
  %32 = load i32, i32* @ESAI_xCCR_xDC_MASK, align 4
  %33 = call i32 @ESAI_xCCR_xDC(i32 2)
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %36 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @REG_ESAI_RCCR, align 4
  %39 = load i32, i32* @ESAI_xCCR_xDC_MASK, align 4
  %40 = call i32 @ESAI_xCCR_xDC(i32 2)
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %25, %2
  ret i32 0
}

declare dso_local %struct.fsl_esai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ESAI_xCCR_xDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
