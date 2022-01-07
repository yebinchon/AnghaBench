; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_dai_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_dai_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@MCKO = common dso_local global i32 0, align 4
@PMPLL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@MS = common dso_local global i32 0, align 4
@BCKO_64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PW_MGMT2 = common dso_local global i32 0, align 4
@MD_CTL1 = common dso_local global i32 0, align 4
@BCKO_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@LEFT_J = common dso_local global i32 0, align 4
@I2S = common dso_local global i32 0, align 4
@DIF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ak4642_dai_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4642_dai_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load i32, i32* @MCKO, align 4
  %13 = load i32, i32* @PMPLL, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %24 [
    i32 131, label %18
    i32 130, label %23
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @MS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @BCKO_64, align 4
  store i32 %22, i32* %8, align 4
  br label %27

23:                                               ; preds = %2
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %58

27:                                               ; preds = %23, %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %29 = load i32, i32* @PW_MGMT2, align 4
  %30 = load i32, i32* @MS, align 4
  %31 = load i32, i32* @MCKO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PMPLL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %38 = load i32, i32* @MD_CTL1, align 4
  %39 = load i32, i32* @BCKO_MASK, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %49 [
    i32 128, label %45
    i32 129, label %47
  ]

45:                                               ; preds = %27
  %46 = load i32, i32* @LEFT_J, align 4
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %27
  %48 = load i32, i32* @I2S, align 4
  store i32 %48, i32* %7, align 4
  br label %52

49:                                               ; preds = %27
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %47, %45
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %54 = load i32, i32* @MD_CTL1, align 4
  %55 = load i32, i32* @DIF_MASK, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %49, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
