; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cx2072x_priv = type { i32, %struct.snd_soc_component* }

@CX2072X_AFG_POWER_STATE = common dso_local global i32 0, align 4
@cx2072x_reg_init = common dso_local global i32 0, align 4
@CX2072X_PORTC_PIN_CTRL = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_BIOS_TEST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cx2072x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cx2072x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.cx2072x_priv* %5, %struct.cx2072x_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %7, i32 0, i32 1
  store %struct.snd_soc_component* %6, %struct.snd_soc_component** %8, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %14 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CX2072X_AFG_POWER_STATE, align 4
  %17 = call i32 @regmap_write(i32 %15, i32 %16, i32 0)
  %18 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %19 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @cx2072x_reg_init, align 4
  %22 = load i32, i32* @cx2072x_reg_init, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @regmap_multi_reg_write(i32 %20, i32 %21, i32 %23)
  %25 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %26 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CX2072X_PORTC_PIN_CTRL, align 4
  %29 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 32, i32 32)
  %30 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %31 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CX2072X_DIGITAL_BIOS_TEST2, align 4
  %34 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 132, i32 255)
  %35 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %36 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CX2072X_AFG_POWER_STATE, align 4
  %39 = call i32 @regmap_write(i32 %37, i32 %38, i32 3)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_put(i32 %42)
  ret i32 0
}

declare dso_local %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
