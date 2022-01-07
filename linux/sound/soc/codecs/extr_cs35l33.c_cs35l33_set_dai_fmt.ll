; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS35L33_ADSP_CTL = common dso_local global i32 0, align 4
@CS35L33_MS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Audio port in master mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Audio port in slave mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Audio port in TDM mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Audio port in I2S mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs35l33_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs35l33_private*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.cs35l33_private* %12, %struct.cs35l33_private** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %39 [
    i32 131, label %16
    i32 130, label %28
  ]

16:                                               ; preds = %2
  %17 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %18 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CS35L33_ADSP_CTL, align 4
  %21 = load i32, i32* @CS35L33_MS_MASK, align 4
  %22 = load i32, i32* @CS35L33_MS_MASK, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %30 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CS35L33_ADSP_CTL, align 4
  %33 = load i32, i32* @CS35L33_MS_MASK, align 4
  %34 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %28, %16
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %60 [
    i32 129, label %46
    i32 128, label %53
  ]

46:                                               ; preds = %42
  %47 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %48 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %63

53:                                               ; preds = %42
  %54 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %55 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %63

60:                                               ; preds = %42
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %53, %46
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %39
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
