; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level_out3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level_out3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32, i32, i32 }

@WM8960_POWER2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to enable MCLK: %d\0A\00", align 1
@WM8960_POWER1 = common dso_local global i32 0, align 4
@WM8960_SYSCLK_AUTO = common dso_local global i32 0, align 4
@WM8960_APOP1 = common dso_local global i32 0, align 4
@WM8960_POBCTRL = common dso_local global i32 0, align 4
@WM8960_SOFT_ST = common dso_local global i32 0, align 4
@WM8960_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8960_BUFIOEN = common dso_local global i32 0, align 4
@WM8960_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8960_set_bias_level_out3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_bias_level_out3(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8960_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8960_priv* %10, %struct.wm8960_priv** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = load i32, i32* @WM8960_POWER2, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %129 [
    i32 130, label %15
    i32 129, label %16
    i32 128, label %78
    i32 131, label %114
  ]

15:                                               ; preds = %2
  br label %129

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %17)
  switch i32 %18, label %76 [
    i32 128, label %19
    i32 130, label %51
  ]

19:                                               ; preds = %16
  %20 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %21 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %27 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_prepare_enable(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %130

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %42 = call i32 @wm8960_configure_clocking(%struct.snd_soc_component* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %130

47:                                               ; preds = %40
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %49 = load i32, i32* @WM8960_POWER1, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 384, i32 128)
  br label %77

51:                                               ; preds = %16
  %52 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %53 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WM8960_SYSCLK_AUTO, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %63 = call i32 @wm8960_set_pll(%struct.snd_soc_component* %62, i32 0, i32 0)
  br label %64

64:                                               ; preds = %61, %57, %51
  %65 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %66 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IS_ERR(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %72 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @clk_disable_unprepare(i32 %73)
  br label %75

75:                                               ; preds = %70, %64
  br label %77

76:                                               ; preds = %16
  br label %77

77:                                               ; preds = %76, %75, %47
  br label %129

78:                                               ; preds = %2
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %80 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %79)
  %81 = icmp eq i32 %80, 131
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regcache_sync(i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %88 = load i32, i32* @WM8960_APOP1, align 4
  %89 = load i32, i32* @WM8960_POBCTRL, align 4
  %90 = load i32, i32* @WM8960_SOFT_ST, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @WM8960_BUFIOEN, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %95)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %98 = load i32, i32* @WM8960_POWER1, align 4
  %99 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 128, i32 128)
  %100 = call i32 @msleep(i32 100)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %102 = load i32, i32* @WM8960_POWER1, align 4
  %103 = load i32, i32* @WM8960_VREF, align 4
  %104 = load i32, i32* @WM8960_VREF, align 4
  %105 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %107 = load i32, i32* @WM8960_APOP1, align 4
  %108 = load i32, i32* @WM8960_BUFIOEN, align 4
  %109 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %82, %78
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %112 = load i32, i32* @WM8960_POWER1, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 384, i32 256)
  br label %129

114:                                              ; preds = %2
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %116 = load i32, i32* @WM8960_APOP1, align 4
  %117 = load i32, i32* @WM8960_POBCTRL, align 4
  %118 = load i32, i32* @WM8960_SOFT_ST, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @WM8960_BUFDCOPEN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @WM8960_BUFIOEN, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %115, i32 %116, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %126 = load i32, i32* @WM8960_POWER1, align 4
  %127 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %125, i32 %126, i32 0)
  %128 = call i32 @msleep(i32 600)
  br label %129

129:                                              ; preds = %2, %114, %110, %77, %15
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %45, %32
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8960_configure_clocking(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8960_set_pll(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
