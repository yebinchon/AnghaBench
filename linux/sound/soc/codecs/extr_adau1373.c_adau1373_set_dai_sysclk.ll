; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, i32 }
%struct.adau1373 = type { i32, %struct.adau1373_dai* }
%struct.adau1373_dai = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU1373_BCLKDIV_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @adau1373_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1373_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adau1373*, align 8
  %11 = alloca %struct.adau1373_dai*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.adau1373* @snd_soc_component_get_drvdata(i32 %14)
  store %struct.adau1373* %15, %struct.adau1373** %10, align 8
  %16 = load %struct.adau1373*, %struct.adau1373** %10, align 8
  %17 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %16, i32 0, i32 1
  %18 = load %struct.adau1373_dai*, %struct.adau1373_dai** %17, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %18, i64 %21
  store %struct.adau1373_dai* %22, %struct.adau1373_dai** %11, align 8
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %25 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %4, %4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.adau1373_dai*, %struct.adau1373_dai** %11, align 8
  %31 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.adau1373_dai*, %struct.adau1373_dai** %11, align 8
  %34 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.adau1373*, %struct.adau1373** %10, align 8
  %36 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ADAU1373_BCLKDIV(i64 %40)
  %42 = load i32, i32* @ADAU1373_BCLKDIV_SOURCE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 5
  %45 = call i32 @regmap_update_bits(i32 %37, i32 %41, i32 %42, i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %28, %25
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.adau1373* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADAU1373_BCLKDIV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
