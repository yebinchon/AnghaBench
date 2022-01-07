; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { i32 }

@WM9081_VMID_CONTROL = common dso_local global i32 0, align 4
@WM9081_VMID_SEL_MASK = common dso_local global i32 0, align 4
@WM9081_BIAS_CONTROL_1 = common dso_local global i32 0, align 4
@WM9081_STBY_BIAS_ENA = common dso_local global i32 0, align 4
@WM9081_ANTI_POP_CONTROL = common dso_local global i32 0, align 4
@WM9081_LINEOUT_DISCH = common dso_local global i32 0, align 4
@WM9081_BIAS_SRC = common dso_local global i32 0, align 4
@WM9081_BIAS_ENA = common dso_local global i32 0, align 4
@WM9081_VMID_RAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm9081_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm9081_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm9081_priv* %7, %struct.wm9081_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %96 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %19
    i32 131, label %72
  ]

9:                                                ; preds = %2
  br label %96

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @WM9081_VMID_CONTROL, align 4
  %13 = load i32, i32* @WM9081_VMID_SEL_MASK, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 2)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @WM9081_BIAS_CONTROL_1, align 4
  %17 = load i32, i32* @WM9081_STBY_BIAS_ENA, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 0)
  br label %96

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %20)
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = load %struct.wm9081_priv*, %struct.wm9081_priv** %5, align 8
  %25 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regcache_cache_only(i32 %26, i32 0)
  %28 = load %struct.wm9081_priv*, %struct.wm9081_priv** %5, align 8
  %29 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regcache_sync(i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @WM9081_ANTI_POP_CONTROL, align 4
  %34 = load i32, i32* @WM9081_LINEOUT_DISCH, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @WM9081_BIAS_CONTROL_1, align 4
  %38 = load i32, i32* @WM9081_BIAS_SRC, align 4
  %39 = load i32, i32* @WM9081_BIAS_ENA, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WM9081_BIAS_SRC, align 4
  %42 = load i32, i32* @WM9081_BIAS_ENA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @WM9081_VMID_CONTROL, align 4
  %47 = load i32, i32* @WM9081_VMID_RAMP, align 4
  %48 = load i32, i32* @WM9081_VMID_SEL_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WM9081_VMID_RAMP, align 4
  %51 = or i32 %50, 6
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %49, i32 %51)
  %53 = call i32 @mdelay(i32 100)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @WM9081_VMID_CONTROL, align 4
  %56 = load i32, i32* @WM9081_VMID_RAMP, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @WM9081_BIAS_CONTROL_1, align 4
  %60 = load i32, i32* @WM9081_BIAS_SRC, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %23, %19
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = load i32, i32* @WM9081_VMID_CONTROL, align 4
  %65 = load i32, i32* @WM9081_VMID_SEL_MASK, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 4)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = load i32, i32* @WM9081_BIAS_CONTROL_1, align 4
  %69 = load i32, i32* @WM9081_STBY_BIAS_ENA, align 4
  %70 = load i32, i32* @WM9081_STBY_BIAS_ENA, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  br label %96

72:                                               ; preds = %2
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %74 = load i32, i32* @WM9081_BIAS_CONTROL_1, align 4
  %75 = load i32, i32* @WM9081_BIAS_SRC, align 4
  %76 = load i32, i32* @WM9081_BIAS_ENA, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @WM9081_BIAS_SRC, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 %77, i32 %78)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @WM9081_VMID_CONTROL, align 4
  %82 = load i32, i32* @WM9081_VMID_RAMP, align 4
  %83 = load i32, i32* @WM9081_VMID_SEL_MASK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WM9081_VMID_RAMP, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load i32, i32* @WM9081_ANTI_POP_CONTROL, align 4
  %89 = load i32, i32* @WM9081_LINEOUT_DISCH, align 4
  %90 = load i32, i32* @WM9081_LINEOUT_DISCH, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.wm9081_priv*, %struct.wm9081_priv** %5, align 8
  %93 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @regcache_cache_only(i32 %94, i32 1)
  br label %96

96:                                               ; preds = %2, %72, %62, %10, %9
  ret i32 0
}

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
