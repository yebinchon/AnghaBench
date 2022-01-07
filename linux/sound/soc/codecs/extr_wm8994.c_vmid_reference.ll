; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_vmid_reference.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_vmid_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Referencing VMID, refcount is now %d\0A\00", align 1
@WM8994_ANTIPOP_1 = common dso_local global i32 0, align 4
@WM8994_LINEOUT1_DISCH = common dso_local global i32 0, align 4
@WM8994_LINEOUT2_DISCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid VMID mode\00", align 1
@WM8994_ANTIPOP_2 = common dso_local global i32 0, align 4
@WM8994_BIAS_SRC = common dso_local global i32 0, align 4
@WM8994_VMID_DISCH = common dso_local global i32 0, align 4
@WM8994_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8994_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8994_VMID_RAMP_MASK = common dso_local global i32 0, align 4
@WM8994_VMID_RAMP_SHIFT = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8994_BIAS_ENA = common dso_local global i32 0, align 4
@WM8994_VMID_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @vmid_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmid_reference(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8994_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.wm8994_priv* %5, %struct.wm8994_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pm_runtime_get_sync(i32 %8)
  %10 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %112

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @WM8994_ANTIPOP_1, align 4
  %28 = load i32, i32* @WM8994_LINEOUT1_DISCH, align 4
  %29 = load i32, i32* @WM8994_LINEOUT2_DISCH, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %30, i32 0)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = call i32 @wm_hubs_vmid_ena(%struct.snd_soc_component* %32)
  %34 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %35 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %37 [
    i32 128, label %39
    i32 129, label %75
  ]

37:                                               ; preds = %25
  %38 = call i32 @WARN_ON(i32 0)
  br label %39

39:                                               ; preds = %25, %37
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %42 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %43 = load i32, i32* @WM8994_VMID_DISCH, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WM8994_STARTUP_BIAS_ENA, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WM8994_VMID_BUF_ENA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WM8994_VMID_RAMP_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %52 = load i32, i32* @WM8994_STARTUP_BIAS_ENA, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WM8994_VMID_BUF_ENA, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @WM8994_VMID_RAMP_SHIFT, align 4
  %57 = shl i32 2, %56
  %58 = or i32 %55, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %50, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %61 = load i32, i32* @WM8994_POWER_MANAGEMENT_1, align 4
  %62 = load i32, i32* @WM8994_BIAS_ENA, align 4
  %63 = load i32, i32* @WM8994_VMID_SEL_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WM8994_BIAS_ENA, align 4
  %66 = or i32 %65, 2
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %64, i32 %66)
  %68 = call i32 @msleep(i32 300)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %70 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %71 = load i32, i32* @WM8994_VMID_RAMP_MASK, align 4
  %72 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %73, i32 0)
  br label %111

75:                                               ; preds = %25
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %78 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %79 = load i32, i32* @WM8994_VMID_DISCH, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @WM8994_STARTUP_BIAS_ENA, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @WM8994_VMID_BUF_ENA, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WM8994_VMID_RAMP_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %88 = load i32, i32* @WM8994_STARTUP_BIAS_ENA, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @WM8994_VMID_BUF_ENA, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @WM8994_VMID_RAMP_SHIFT, align 4
  %93 = shl i32 2, %92
  %94 = or i32 %91, %93
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %86, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %97 = load i32, i32* @WM8994_POWER_MANAGEMENT_1, align 4
  %98 = load i32, i32* @WM8994_BIAS_ENA, align 4
  %99 = load i32, i32* @WM8994_VMID_SEL_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @WM8994_BIAS_ENA, align 4
  %102 = or i32 %101, 2
  %103 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %100, i32 %102)
  %104 = call i32 @msleep(i32 400)
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %106 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %107 = load i32, i32* @WM8994_VMID_RAMP_MASK, align 4
  %108 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %105, i32 %106, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %75, %39
  br label %112

112:                                              ; preds = %111, %1
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm_hubs_vmid_ena(%struct.snd_soc_component*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
