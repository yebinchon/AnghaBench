; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_vmid_dereference.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_vmid_dereference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Dereferencing VMID, refcount is now %d\0A\00", align 1
@WM8994_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4
@WM8994_LINEOUT1N_ENA = common dso_local global i32 0, align 4
@WM8994_LINEOUT1P_ENA = common dso_local global i32 0, align 4
@WM8994_LINEOUT2N_ENA = common dso_local global i32 0, align 4
@WM8994_LINEOUT2P_ENA = common dso_local global i32 0, align 4
@WM8994_ANTIPOP_2 = common dso_local global i32 0, align 4
@WM8994_BIAS_SRC = common dso_local global i32 0, align 4
@WM8994_VMID_DISCH = common dso_local global i32 0, align 4
@WM8994_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8994_VMID_SEL_MASK = common dso_local global i32 0, align 4
@WM8994_ANTIPOP_1 = common dso_local global i32 0, align 4
@WM8994_LINEOUT1_DISCH = common dso_local global i32 0, align 4
@WM8994_LINEOUT2_DISCH = common dso_local global i32 0, align 4
@WM8994_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8994_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8994_VMID_RAMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @vmid_dereference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmid_dereference(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8994_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.wm8994_priv* %5, %struct.wm8994_priv** %3, align 8
  %6 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %1
  %22 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %23 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @WM8994_POWER_MANAGEMENT_3, align 4
  %30 = load i32, i32* @WM8994_LINEOUT1N_ENA, align 4
  %31 = load i32, i32* @WM8994_LINEOUT1P_ENA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM8994_LINEOUT1N_ENA, align 4
  %34 = load i32, i32* @WM8994_LINEOUT1P_ENA, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %27, %21
  %38 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %39 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %45 = load i32, i32* @WM8994_POWER_MANAGEMENT_3, align 4
  %46 = load i32, i32* @WM8994_LINEOUT2N_ENA, align 4
  %47 = load i32, i32* @WM8994_LINEOUT2P_ENA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WM8994_LINEOUT2N_ENA, align 4
  %50 = load i32, i32* @WM8994_LINEOUT2P_ENA, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %37
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %56 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %57 = load i32, i32* @WM8994_VMID_DISCH, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %60 = load i32, i32* @WM8994_VMID_DISCH, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %64 = load i32, i32* @WM8994_POWER_MANAGEMENT_1, align 4
  %65 = load i32, i32* @WM8994_VMID_SEL_MASK, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 0)
  %67 = call i32 @msleep(i32 400)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %69 = load i32, i32* @WM8994_ANTIPOP_1, align 4
  %70 = load i32, i32* @WM8994_LINEOUT1_DISCH, align 4
  %71 = load i32, i32* @WM8994_LINEOUT2_DISCH, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WM8994_LINEOUT1_DISCH, align 4
  %74 = load i32, i32* @WM8994_LINEOUT2_DISCH, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %78 = load i32, i32* @WM8994_POWER_MANAGEMENT_3, align 4
  %79 = load i32, i32* @WM8994_LINEOUT1N_ENA, align 4
  %80 = load i32, i32* @WM8994_LINEOUT1P_ENA, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WM8994_LINEOUT2N_ENA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @WM8994_LINEOUT2P_ENA, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %85, i32 0)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %88 = load i32, i32* @WM8994_ANTIPOP_2, align 4
  %89 = load i32, i32* @WM8994_BIAS_SRC, align 4
  %90 = load i32, i32* @WM8994_STARTUP_BIAS_ENA, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @WM8994_VMID_BUF_ENA, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @WM8994_VMID_RAMP_MASK, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %95, i32 0)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %98 = load i32, i32* @WM8994_POWER_MANAGEMENT_1, align 4
  %99 = load i32, i32* @WM8994_VMID_SEL_MASK, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %53, %1
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %103 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pm_runtime_put(i32 %104)
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
