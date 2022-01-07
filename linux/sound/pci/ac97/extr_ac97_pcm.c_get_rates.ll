; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_get_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_get_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_pcm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }

@AC97_RATES_FRONT_DAC = common dso_local global i32 0, align 4
@AC97_RATES_SURR_DAC = common dso_local global i32 0, align 4
@AC97_RATES_LFE_DAC = common dso_local global i32 0, align 4
@AC97_RATES_ADC = common dso_local global i32 0, align 4
@AC97_RATES_MIC_ADC = common dso_local global i32 0, align 4
@AC97_RATES_SPDIF = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_64000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_pcm*, i32, i16, i32)* @get_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rates(%struct.ac97_pcm* %0, i32 %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.ac97_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.ac97_pcm* %0, %struct.ac97_pcm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %11, align 4
  store i32 3, i32* %9, align 4
  br label %13

13:                                               ; preds = %65, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 12
  br i1 %15, label %16, label %68

16:                                               ; preds = %13
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %65

24:                                               ; preds = %16
  %25 = load %struct.ac97_pcm*, %struct.ac97_pcm** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call zeroext i8 @get_slot_reg(%struct.ac97_pcm* %25, i32 %26, i32 %27, i32 %28)
  store i8 %29, i8* %12, align 1
  %30 = load i8, i8* %12, align 1
  %31 = zext i8 %30 to i32
  switch i32 %31, label %42 [
    i32 132, label %32
    i32 128, label %34
    i32 131, label %36
    i32 130, label %38
    i32 129, label %40
  ]

32:                                               ; preds = %24
  %33 = load i32, i32* @AC97_RATES_FRONT_DAC, align 4
  store i32 %33, i32* %10, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load i32, i32* @AC97_RATES_SURR_DAC, align 4
  store i32 %35, i32* %10, align 4
  br label %44

36:                                               ; preds = %24
  %37 = load i32, i32* @AC97_RATES_LFE_DAC, align 4
  store i32 %37, i32* %10, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load i32, i32* @AC97_RATES_ADC, align 4
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %24
  %41 = load i32, i32* @AC97_RATES_MIC_ADC, align 4
  store i32 %41, i32* %10, align 4
  br label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @AC97_RATES_SPDIF, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %34, %32
  %45 = load %struct.ac97_pcm*, %struct.ac97_pcm** %5, align 8
  %46 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %44, %23
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %13

68:                                               ; preds = %13
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @SNDRV_PCM_RATE_64000, align 4
  %73 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %71, %68
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local zeroext i8 @get_slot_reg(%struct.ac97_pcm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
