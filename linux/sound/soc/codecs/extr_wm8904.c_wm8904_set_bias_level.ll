; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i32, i32 }

@WM8904_VMID_CONTROL_0 = common dso_local global i32 0, align 4
@WM8904_VMID_RES_MASK = common dso_local global i32 0, align 4
@WM8904_VMID_RES_SHIFT = common dso_local global i32 0, align 4
@WM8904_BIAS_CONTROL_0 = common dso_local global i32 0, align 4
@WM8904_ISEL_MASK = common dso_local global i32 0, align 4
@WM8904_ISEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to enable MCLK: %d\0A\00", align 1
@WM8904_BIAS_ENA = common dso_local global i32 0, align 4
@WM8904_VMID_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8904_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8904_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8904_priv* %9, %struct.wm8904_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %136 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %25
    i32 131, label %105
  ]

11:                                               ; preds = %2
  br label %136

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @WM8904_VMID_CONTROL_0, align 4
  %15 = load i32, i32* @WM8904_VMID_RES_MASK, align 4
  %16 = load i32, i32* @WM8904_VMID_RES_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = load i32, i32* @WM8904_BIAS_CONTROL_0, align 4
  %21 = load i32, i32* @WM8904_ISEL_MASK, align 4
  %22 = load i32, i32* @WM8904_ISEL_SHIFT, align 4
  %23 = shl i32 2, %22
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %23)
  br label %136

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %26)
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %94

29:                                               ; preds = %25
  %30 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regulator_bulk_enable(i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %137

47:                                               ; preds = %29
  %48 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %49 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_prepare_enable(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %61 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %65 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regulator_bulk_disable(i32 %63, i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %137

69:                                               ; preds = %47
  %70 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %71 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regcache_cache_only(i32 %72, i32 0)
  %74 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %75 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @regcache_sync(i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %79 = load i32, i32* @WM8904_BIAS_CONTROL_0, align 4
  %80 = load i32, i32* @WM8904_BIAS_ENA, align 4
  %81 = load i32, i32* @WM8904_BIAS_ENA, align 4
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %84 = load i32, i32* @WM8904_VMID_CONTROL_0, align 4
  %85 = load i32, i32* @WM8904_VMID_ENA, align 4
  %86 = load i32, i32* @WM8904_VMID_RES_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @WM8904_VMID_ENA, align 4
  %89 = load i32, i32* @WM8904_VMID_RES_SHIFT, align 4
  %90 = shl i32 3, %89
  %91 = or i32 %88, %90
  %92 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i32 %84, i32 %87, i32 %91)
  %93 = call i32 @msleep(i32 1)
  br label %94

94:                                               ; preds = %69, %25
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %96 = load i32, i32* @WM8904_VMID_CONTROL_0, align 4
  %97 = load i32, i32* @WM8904_VMID_RES_MASK, align 4
  %98 = load i32, i32* @WM8904_VMID_RES_SHIFT, align 4
  %99 = shl i32 2, %98
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %95, i32 %96, i32 %97, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %102 = load i32, i32* @WM8904_BIAS_CONTROL_0, align 4
  %103 = load i32, i32* @WM8904_ISEL_MASK, align 4
  %104 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %103, i32 0)
  br label %136

105:                                              ; preds = %2
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %107 = load i32, i32* @WM8904_VMID_CONTROL_0, align 4
  %108 = load i32, i32* @WM8904_VMID_RES_MASK, align 4
  %109 = load i32, i32* @WM8904_VMID_ENA, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %110, i32 0)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %113 = load i32, i32* @WM8904_BIAS_CONTROL_0, align 4
  %114 = load i32, i32* @WM8904_BIAS_ENA, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %117 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @regcache_cache_only(i32 %118, i32 1)
  %120 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %121 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @regcache_mark_dirty(i32 %122)
  %124 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %125 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ARRAY_SIZE(i32 %126)
  %128 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %129 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @regulator_bulk_disable(i32 %127, i32 %130)
  %132 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %133 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @clk_disable_unprepare(i32 %134)
  br label %136

136:                                              ; preds = %2, %105, %94, %12, %11
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %54, %40
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
