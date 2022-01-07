; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt274_priv = type { i32 }

@RT274_PLL2_CTRL = common dso_local global i32 0, align 4
@RT274_PLL2_SRC_MASK = common dso_local global i32 0, align 4
@RT274_PLL2_SRC_MCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid pll source, use BCLK\0A\00", align 1
@RT274_PLL2_SRC_BCLK = common dso_local global i32 0, align 4
@RT274_MCLK_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid freq_in, assume 4.8M\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt274_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt274_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.rt274_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %11, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %17 = call %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.rt274_priv* %17, %struct.rt274_priv** %12, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %25 [
    i32 128, label %19
    i32 129, label %30
  ]

19:                                               ; preds = %5
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %21 = load i32, i32* @RT274_PLL2_CTRL, align 4
  %22 = load i32, i32* @RT274_PLL2_SRC_MASK, align 4
  %23 = load i32, i32* @RT274_PLL2_SRC_MCLK, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  br label %36

25:                                               ; preds = %5
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %5, %25
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %32 = load i32, i32* @RT274_PLL2_CTRL, align 4
  %33 = load i32, i32* @RT274_PLL2_SRC_MASK, align 4
  %34 = load i32, i32* @RT274_PLL2_SRC_BCLK, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %19
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 129
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %41 = load i32, i32* @RT274_MCLK_CTRL, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 12288, i32 12288)
  %43 = load %struct.rt274_priv*, %struct.rt274_priv** %12, align 8
  %44 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %67 [
    i32 50, label %46
    i32 64, label %53
    i32 128, label %60
    i32 100, label %72
  ]

46:                                               ; preds = %39
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 122, i32 43702)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 123, i32 769)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 124, i32 1278)
  br label %79

53:                                               ; preds = %39
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %54, i32 122, i32 43670)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %56, i32 123, i32 32771)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %59 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i32 124, i32 2078)
  br label %79

60:                                               ; preds = %39
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i32 122, i32 43670)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 123, i32 32771)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 124, i32 2062)
  br label %79

67:                                               ; preds = %39
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_warn(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %39, %67
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 122, i32 43702)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %76 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i32 123, i32 769)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %77, i32 124, i32 1150)
  br label %79

79:                                               ; preds = %72, %60, %53, %46
  br label %80

80:                                               ; preds = %79, %36
  ret i32 0
}

declare dso_local %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
