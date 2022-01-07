; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32, i32 }

@R_PLLREFSEL = common dso_local global i32 0, align 4
@RV_PLLREFSEL_PLL1_REF_SEL_XTAL_MCLK1 = common dso_local global i32 0, align 4
@RV_PLLREFSEL_PLL2_REF_SEL_XTAL_MCLK1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to set pll reference input (%d)\0A\00", align 1
@RV_PLLREFSEL_PLL1_REF_SEL_MCLK2 = common dso_local global i32 0, align 4
@RV_PLLREFSEL_PLL2_REF_SEL_MCLK2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set PLL reference (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pll src is unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to setup PLL input freq (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sysclk(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tscs42xx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.tscs42xx* %8, %struct.tscs42xx** %4, align 8
  %9 = load %struct.tscs42xx*, %struct.tscs42xx** %4, align 8
  %10 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %46 [
    i32 128, label %12
    i32 130, label %12
    i32 129, label %29
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @R_PLLREFSEL, align 4
  %15 = load i32, i32* @RV_PLLREFSEL_PLL1_REF_SEL_XTAL_MCLK1, align 4
  %16 = load i32, i32* @RV_PLLREFSEL_PLL2_REF_SEL_XTAL_MCLK1, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %13, i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %71

28:                                               ; preds = %12
  br label %53

29:                                               ; preds = %1
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @R_PLLREFSEL, align 4
  %32 = load i32, i32* @RV_PLLREFSEL_PLL1_REF_SEL_MCLK2, align 4
  %33 = load i32, i32* @RV_PLLREFSEL_PLL2_REF_SEL_MCLK2, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %71

45:                                               ; preds = %29
  br label %53

46:                                               ; preds = %1
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %71

53:                                               ; preds = %45, %28
  %54 = load %struct.tscs42xx*, %struct.tscs42xx** %4, align 8
  %55 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @clk_get_rate(i32 %56)
  store i64 %57, i64* %5, align 8
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @set_pll_ctl_from_input_freq(%struct.snd_soc_component* %58, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %63, %46, %38, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @set_pll_ctl_from_input_freq(%struct.snd_soc_component*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
