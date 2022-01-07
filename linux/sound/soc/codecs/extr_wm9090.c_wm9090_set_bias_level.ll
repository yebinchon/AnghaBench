; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9090_priv = type { i32 }

@WM9090_ANTIPOP2 = common dso_local global i32 0, align 4
@WM9090_VMID_ENA = common dso_local global i32 0, align 4
@WM9090_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM9090_BIAS_ENA = common dso_local global i32 0, align 4
@WM9090_VMID_RES_MASK = common dso_local global i32 0, align 4
@WM9090_VMID_RES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm9090_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9090_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm9090_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm9090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm9090_priv* %7, %struct.wm9090_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %48 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %27
    i32 131, label %47
  ]

9:                                                ; preds = %2
  br label %48

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @WM9090_ANTIPOP2, align 4
  %13 = load i32, i32* @WM9090_VMID_ENA, align 4
  %14 = load i32, i32* @WM9090_VMID_ENA, align 4
  %15 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @WM9090_POWER_MANAGEMENT_1, align 4
  %18 = load i32, i32* @WM9090_BIAS_ENA, align 4
  %19 = load i32, i32* @WM9090_VMID_RES_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WM9090_BIAS_ENA, align 4
  %22 = load i32, i32* @WM9090_VMID_RES_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %20, i32 %24)
  %26 = call i32 @msleep(i32 1)
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %28)
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.wm9090_priv*, %struct.wm9090_priv** %5, align 8
  %33 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regcache_sync(i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @WM9090_POWER_MANAGEMENT_1, align 4
  %39 = load i32, i32* @WM9090_BIAS_ENA, align 4
  %40 = load i32, i32* @WM9090_VMID_RES_MASK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %41, i32 0)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @WM9090_ANTIPOP2, align 4
  %45 = load i32, i32* @WM9090_VMID_ENA, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 %45, i32 0)
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %2, %47, %36, %10, %9
  ret i32 0
}

declare dso_local %struct.wm9090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
