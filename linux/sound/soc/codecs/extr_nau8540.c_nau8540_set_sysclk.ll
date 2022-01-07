; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.nau8540 = type { i32, i32 }

@NAU8540_REG_CLOCK_SRC = common dso_local global i32 0, align 4
@NAU8540_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8540_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8540_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8540_DCO_EN = common dso_local global i32 0, align 4
@NAU8540_CLK_SRC_VCO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @nau8540_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8540_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nau8540*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.nau8540* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.nau8540* %14, %struct.nau8540** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %45 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %30
  ]

16:                                               ; preds = %5, %5
  %17 = load %struct.nau8540*, %struct.nau8540** %12, align 8
  %18 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAU8540_REG_CLOCK_SRC, align 4
  %21 = load i32, i32* @NAU8540_CLK_SRC_MASK, align 4
  %22 = load i32, i32* @NAU8540_CLK_SRC_MCLK, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.nau8540*, %struct.nau8540** %12, align 8
  %25 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NAU8540_REG_FLL6, align 4
  %28 = load i32, i32* @NAU8540_DCO_EN, align 4
  %29 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 0)
  br label %53

30:                                               ; preds = %5
  %31 = load %struct.nau8540*, %struct.nau8540** %12, align 8
  %32 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NAU8540_REG_FLL6, align 4
  %35 = load i32, i32* @NAU8540_DCO_EN, align 4
  %36 = load i32, i32* @NAU8540_DCO_EN, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.nau8540*, %struct.nau8540** %12, align 8
  %39 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NAU8540_REG_CLOCK_SRC, align 4
  %42 = load i32, i32* @NAU8540_CLK_SRC_MASK, align 4
  %43 = load i32, i32* @NAU8540_CLK_SRC_VCO, align 4
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %43)
  br label %53

45:                                               ; preds = %5
  %46 = load %struct.nau8540*, %struct.nau8540** %12, align 8
  %47 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %60

53:                                               ; preds = %30, %16
  %54 = load %struct.nau8540*, %struct.nau8540** %12, align 8
  %55 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %53, %45
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.nau8540* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
