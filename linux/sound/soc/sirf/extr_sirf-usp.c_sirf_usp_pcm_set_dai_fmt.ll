; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_pcm_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_pcm_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sirf_usp = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Only CBM and CFM supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Only I2S and DSP_A format supported\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @sirf_usp_pcm_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_usp_pcm_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sirf_usp*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.sirf_usp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.sirf_usp* %8, %struct.sirf_usp** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %13 [
    i32 132, label %12
  ]

12:                                               ; preds = %2
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %30 [
    i32 130, label %24
    i32 131, label %24
  ]

24:                                               ; preds = %20, %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.sirf_usp*, %struct.sirf_usp** %6, align 8
  %29 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %50 [
    i32 128, label %41
    i32 129, label %42
  ]

41:                                               ; preds = %37
  br label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.sirf_usp*, %struct.sirf_usp** %6, align 8
  %47 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %42, %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %30, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.sirf_usp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
