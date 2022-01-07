; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { i64, i64, i32 }
%struct.pll_ctl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PLL_INPUT_BCLK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid PLL input %lu (%d)\0A\00", align 1
@PLL_REG_SETTINGS_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set pll setting (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sysclk(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tscs454*, align 8
  %5 = alloca %struct.pll_ctl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.tscs454* %10, %struct.tscs454** %4, align 8
  %11 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %12 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PLL_INPUT_BCLK, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %18 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @clk_get_rate(i32 %19)
  store i64 %20, i64* %6, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.tscs454*, %struct.tscs454** %4, align 8
  %23 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.pll_ctl* @get_pll_ctl(i64 %26)
  store %struct.pll_ctl* %27, %struct.pll_ctl** %5, align 8
  %28 = load %struct.pll_ctl*, %struct.pll_ctl** %5, align 8
  %29 = icmp ne %struct.pll_ctl* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PLL_REG_SETTINGS_COUNT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load %struct.pll_ctl*, %struct.pll_ctl** %5, align 8
  %49 = getelementptr inbounds %struct.pll_ctl, %struct.pll_ctl* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pll_ctl*, %struct.pll_ctl** %5, align 8
  %57 = getelementptr inbounds %struct.pll_ctl, %struct.pll_ctl* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %55, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %46
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %42

78:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %67, %30
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local %struct.pll_ctl* @get_pll_ctl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
