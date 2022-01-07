; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_start_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_start_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.tm2_machine_priv = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM5110_FLL1_REFCLK = common dso_local global i32 0, align 4
@ARIZONA_FLL_SRC_MCLK1 = common dso_local global i32 0, align 4
@MCLK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to set FLL1 source: %d\0A\00", align 1
@WM5110_FLL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to start FLL1: %d\0A\00", align 1
@ARIZONA_CLK_SYSCLK = common dso_local global i32 0, align 4
@ARIZONA_CLK_SRC_FLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set SYSCLK source: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @tm2_start_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_start_sysclk(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.tm2_machine_priv*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %8 = call %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %7)
  store %struct.tm2_machine_priv* %8, %struct.tm2_machine_priv** %4, align 8
  %9 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %4, align 8
  %10 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = load i32, i32* @WM5110_FLL1_REFCLK, align 4
  %14 = load i32, i32* @ARIZONA_FLL_SRC_MCLK1, align 4
  %15 = load i32, i32* @MCLK_RATE, align 4
  %16 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %4, align 8
  %17 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %12, i32 %13, i32 %14, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %1
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %31 = load i32, i32* @WM5110_FLL1, align 4
  %32 = load i32, i32* @ARIZONA_FLL_SRC_MCLK1, align 4
  %33 = load i32, i32* @MCLK_RATE, align 4
  %34 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %4, align 8
  %35 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %66

47:                                               ; preds = %29
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %49 = load i32, i32* @ARIZONA_CLK_SYSCLK, align 4
  %50 = load i32, i32* @ARIZONA_CLK_SRC_FLL1, align 4
  %51 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %4, align 8
  %52 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %55 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %58, %40, %22
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_component_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
