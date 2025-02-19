; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_pll_power_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_pll_power_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"PLL 1\00", align 1
@FM_PLLCTL_PLL1CLKEN = common dso_local global i32 0, align 4
@FM_PLLCTL_PLL2CLKEN = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@FV_PLL1CLKEN_ENABLE = common dso_local global i32 0, align 4
@FV_PLL2CLKEN_ENABLE = common dso_local global i32 0, align 4
@FV_PLL1CLKEN_DISABLE = common dso_local global i32 0, align 4
@FV_PLL2CLKEN_DISABLE = common dso_local global i32 0, align 4
@R_PLLCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to %s PLL %d  (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to sync coeff ram (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @pll_power_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_power_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.tscs454*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.tscs454* %20, %struct.tscs454** %9, align 8
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strstr(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @FM_PLLCTL_PLL1CLKEN, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @FM_PLLCTL_PLL2CLKEN, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @FV_PLL1CLKEN_ENABLE, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @FV_PLL2CLKEN_ENABLE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %13, align 4
  br label %63

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @FV_PLL1CLKEN_DISABLE, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @FV_PLL2CLKEN_DISABLE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %52
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = load i32, i32* @R_PLLCTL, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 2
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %105

86:                                               ; preds = %63
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = call i32 @msleep(i32 20)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %92 = load %struct.tscs454*, %struct.tscs454** %9, align 8
  %93 = call i32 @coeff_ram_sync(%struct.snd_soc_component* %91, %struct.tscs454* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %4, align 4
  br label %105

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %86
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %96, %71
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @coeff_ram_sync(%struct.snd_soc_component*, %struct.tscs454*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
