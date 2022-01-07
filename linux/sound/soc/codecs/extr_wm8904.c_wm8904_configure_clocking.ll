; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_configure_clocking.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_configure_clocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i32, i32, i32 }

@WM8904_CLOCK_RATES_2 = common dso_local global i32 0, align 4
@WM8904_SYSCLK_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Using %dHz MCLK\0A\00", align 1
@WM8904_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8904_FLL_OSC_ENA = common dso_local global i32 0, align 4
@WM8904_FLL_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using %dHz FLL clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"System clock not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8904_MCLK_DIV = common dso_local global i32 0, align 4
@WM8904_CLOCK_RATES_0 = common dso_local global i32 0, align 4
@WM8904_CLK_SYS_ENA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CLK_SYS is %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8904_configure_clocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_configure_clocking(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8904_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8904_priv* %9, %struct.wm8904_priv** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @WM8904_CLOCK_RATES_2, align 4
  %12 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @WM8904_CLOCK_RATES_2, align 4
  %15 = load i32, i32* @WM8904_SYSCLK_SRC, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %18 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %55 [
    i32 128, label %20
    i32 129, label %41
  ]

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %25 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @WM8904_SYSCLK_SRC, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %33 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @WM8904_FLL_CONTROL_1, align 4
  %37 = load i32, i32* @WM8904_FLL_OSC_ENA, align 4
  %38 = load i32, i32* @WM8904_FLL_ENA, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %39, i32 0)
  br label %62

41:                                               ; preds = %1
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %46 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @WM8904_SYSCLK_SRC, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %53 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %62

55:                                               ; preds = %1
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %95

62:                                               ; preds = %41, %20
  %63 = load i32, i32* %7, align 4
  %64 = icmp ugt i32 %63, 13500000
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @WM8904_MCLK_DIV, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = udiv i32 %67, 2
  %69 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %70 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %74 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %77 = load i32, i32* @WM8904_CLOCK_RATES_0, align 4
  %78 = load i32, i32* @WM8904_MCLK_DIV, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = load i32, i32* @WM8904_CLOCK_RATES_2, align 4
  %83 = load i32, i32* @WM8904_CLK_SYS_ENA, align 4
  %84 = load i32, i32* @WM8904_SYSCLK_SRC, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %85, i32 %86)
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wm8904_priv*, %struct.wm8904_priv** %4, align 8
  %92 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %75, %55
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
