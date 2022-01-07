; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32 }

@M98090_REG_SYSTEM_CLOCK = common dso_local global i32 0, align 4
@M98090_PSCLK_DIV1 = common dso_local global i32 0, align 4
@M98090_PSCLK_DIV2 = common dso_local global i32 0, align 4
@M98090_PSCLK_DIV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid master clock frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @max98090_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.max98090_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.max98090_priv* %16, %struct.max98090_priv** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %19 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %97

23:                                               ; preds = %4
  %24 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %25 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_ERR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %31 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @clk_round_rate(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %36 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @clk_set_rate(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp uge i32 %41, 10000000
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ule i32 %44, 20000000
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %48 = load i32, i32* @M98090_REG_SYSTEM_CLOCK, align 4
  %49 = load i32, i32* @M98090_PSCLK_DIV1, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %53 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %93

54:                                               ; preds = %43, %40
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %55, 20000000
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp ule i32 %58, 40000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %62 = load i32, i32* @M98090_REG_SYSTEM_CLOCK, align 4
  %63 = load i32, i32* @M98090_PSCLK_DIV2, align 4
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = lshr i32 %65, 1
  %67 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %68 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %92

69:                                               ; preds = %57, %54
  %70 = load i32, i32* %8, align 4
  %71 = icmp ugt i32 %70, 40000000
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp ule i32 %73, 60000000
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %77 = load i32, i32* @M98090_REG_SYSTEM_CLOCK, align 4
  %78 = load i32, i32* @M98090_PSCLK_DIV4, align 4
  %79 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = lshr i32 %80, 2
  %82 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %83 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %91

84:                                               ; preds = %72, %69
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %86 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %97

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %60
  br label %93

93:                                               ; preds = %92, %46
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.max98090_priv*, %struct.max98090_priv** %11, align 8
  %96 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %84, %22
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
