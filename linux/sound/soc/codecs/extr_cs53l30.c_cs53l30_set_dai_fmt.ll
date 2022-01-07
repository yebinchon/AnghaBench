; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.cs53l30_private = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS53L30_ASP_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@CS53L30_ASP_TDM_PDN = common dso_local global i32 0, align 4
@CS53L30_SHIFT_LEFT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@CS53L30_ASP_SCLK_INV = common dso_local global i32 0, align 4
@CS53L30_ASPCFG_CTL = common dso_local global i32 0, align 4
@CS53L30_ASP_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs53l30_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs53l30_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs53l30_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cs53l30_private* @snd_soc_component_get_drvdata(i32 %11)
  store %struct.cs53l30_private* %12, %struct.cs53l30_private** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %21 [
    i32 133, label %16
    i32 132, label %20
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @CS53L30_ASP_MS, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %24

20:                                               ; preds = %2
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %36 [
    i32 130, label %28
    i32 131, label %32
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @CS53L30_ASP_TDM_PDN, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load i32, i32* @CS53L30_SHIFT_LEFT, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %47 [
    i32 128, label %43
    i32 129, label %43
  ]

43:                                               ; preds = %39, %39
  %44 = load i32, i32* @CS53L30_ASP_SCLK_INV, align 4
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %43
  %49 = load %struct.cs53l30_private*, %struct.cs53l30_private** %6, align 8
  %50 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CS53L30_ASPCFG_CTL, align 4
  %53 = load i32, i32* @CS53L30_ASP_MS, align 4
  %54 = load i32, i32* @CS53L30_ASP_SCLK_INV, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %55, i32 %56)
  %58 = load %struct.cs53l30_private*, %struct.cs53l30_private** %6, align 8
  %59 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS53L30_ASP_CTL1, align 4
  %62 = load i32, i32* @CS53L30_ASP_TDM_PDN, align 4
  %63 = load i32, i32* @CS53L30_SHIFT_LEFT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %48, %36, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.cs53l30_private* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
