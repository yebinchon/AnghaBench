; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8993_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WM8993_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8993_VMID_SEL_MASK = common dso_local global i32 0, align 4
@WM8993_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8993_TSHUT_ENA = common dso_local global i32 0, align 4
@WM8993_ANTIPOP2 = common dso_local global i32 0, align 4
@WM8993_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8993_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8993_VMID_RAMP_MASK = common dso_local global i32 0, align 4
@WM8993_BIAS_SRC = common dso_local global i32 0, align 4
@WM8993_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8993_LINEOUT_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8993_BIAS_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8993_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8993_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8993_priv* %9, %struct.wm8993_priv** %6, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @wm_hubs_set_bias_level(%struct.snd_soc_component* %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %148 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %24
    i32 131, label %111
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %16 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %17 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 2)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = load i32, i32* @WM8993_POWER_MANAGEMENT_2, align 4
  %21 = load i32, i32* @WM8993_TSHUT_ENA, align 4
  %22 = load i32, i32* @WM8993_TSHUT_ENA, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %22)
  br label %148

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %26 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %25)
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %28, label %102

28:                                               ; preds = %24
  %29 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %34 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_bulk_enable(i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %149

41:                                               ; preds = %28
  %42 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regcache_cache_only(i32 %44, i32 0)
  %46 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %47 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regcache_sync(i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %51 = call i32 @wm_hubs_vmid_ena(%struct.snd_soc_component* %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = load i32, i32* @WM8993_ANTIPOP2, align 4
  %54 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %55 = load i32, i32* @WM8993_VMID_BUF_ENA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WM8993_VMID_RAMP_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %62 = load i32, i32* @WM8993_VMID_BUF_ENA, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @WM8993_VMID_RAMP_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %60, i32 %67)
  %69 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %70 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %41
  %75 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %76 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74, %41
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %82 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %83 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %84 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %88 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %89 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %90 = load i32, i32* @WM8993_BIAS_ENA, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @WM8993_BIAS_ENA, align 4
  %93 = or i32 %92, 2
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %91, i32 %93)
  %95 = call i32 @msleep(i32 32)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %97 = load i32, i32* @WM8993_ANTIPOP2, align 4
  %98 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %99 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %86, %24
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %104 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %105 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %105, i32 4)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %108 = load i32, i32* @WM8993_POWER_MANAGEMENT_2, align 4
  %109 = load i32, i32* @WM8993_TSHUT_ENA, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %109, i32 0)
  br label %148

111:                                              ; preds = %2
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %113 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %114 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %117 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %118 = load i32, i32* @WM8993_VMID_SEL_MASK, align 4
  %119 = load i32, i32* @WM8993_BIAS_ENA, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %120, i32 0)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %123 = load i32, i32* @WM8993_ANTIPOP2, align 4
  %124 = load i32, i32* @WM8993_STARTUP_BIAS_ENA, align 4
  %125 = load i32, i32* @WM8993_VMID_BUF_ENA, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @WM8993_VMID_RAMP_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @WM8993_BIAS_SRC, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i32 %123, i32 %130, i32 0)
  %132 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %133 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @regcache_cache_only(i32 %134, i32 1)
  %136 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %137 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @regcache_mark_dirty(i32 %138)
  %140 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %141 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ARRAY_SIZE(i32 %142)
  %144 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %145 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @regulator_bulk_disable(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %2, %111, %102, %14
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %39
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm_hubs_set_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @wm_hubs_vmid_ena(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
