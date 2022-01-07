; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tas2552_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Out of range PLL_CLKIN: %u\0A\00", align 1
@TAS2552_PLL_SRC_MASK = common dso_local global i32 0, align 4
@TAS2552_CFG_1 = common dso_local global i32 0, align 4
@TAS2552_PDM_CLK_SEL_MASK = common dso_local global i32 0, align 4
@TAS2552_PDM_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid clk id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @tas2552_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas2552_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.tas2552_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %10, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.tas2552_data* @dev_get_drvdata(i32 %20)
  store %struct.tas2552_data* %21, %struct.tas2552_data** %11, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %62 [
    i32 128, label %23
    i32 129, label %23
    i32 130, label %36
    i32 131, label %36
    i32 132, label %49
    i32 134, label %49
    i32 135, label %49
    i32 133, label %49
  ]

23:                                               ; preds = %4, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 512000
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ugt i32 %27, 24576000
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %23
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 130, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %4, %4, %35
  %37 = load i32, i32* @TAS2552_PLL_SRC_MASK, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 3
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @TAS2552_CFG_1, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.tas2552_data*, %struct.tas2552_data** %11, align 8
  %45 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.tas2552_data*, %struct.tas2552_data** %11, align 8
  %48 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %70

49:                                               ; preds = %4, %4, %4, %4
  %50 = load i32, i32* @TAS2552_PDM_CLK_SEL_MASK, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 1
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @TAS2552_PDM_CFG, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.tas2552_data*, %struct.tas2552_data** %11, align 8
  %58 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.tas2552_data*, %struct.tas2552_data** %11, align 8
  %61 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %70

62:                                               ; preds = %4
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %49, %36
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %62
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.tas2552_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
