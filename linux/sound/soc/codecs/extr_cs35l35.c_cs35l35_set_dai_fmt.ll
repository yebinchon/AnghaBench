; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { i32, i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS35L35_CLK_CTL1 = common dso_local global i32 0, align 4
@CS35L35_MS_MASK = common dso_local global i32 0, align 4
@CS35L35_MS_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs35l35_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs35l35_private*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.cs35l35_private* %12, %struct.cs35l35_private** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %38 [
    i32 131, label %16
    i32 130, label %27
  ]

16:                                               ; preds = %2
  %17 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %18 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CS35L35_CLK_CTL1, align 4
  %21 = load i32, i32* @CS35L35_MS_MASK, align 4
  %22 = load i32, i32* @CS35L35_MS_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %26 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %29 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CS35L35_CLK_CTL1, align 4
  %32 = load i32, i32* @CS35L35_MS_MASK, align 4
  %33 = load i32, i32* @CS35L35_MS_SHIFT, align 4
  %34 = shl i32 0, %33
  %35 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %37 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %27, %16
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %50
  ]

45:                                               ; preds = %41
  %46 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %47 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %49 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %52 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  %53 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %54 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %50, %45
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %38
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
