; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8971.c_wm8971_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8971.c_wm8971_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8971_priv = type { i32 }

@wm8971_charge_work = common dso_local global i32 0, align 4
@WM8971_LDAC = common dso_local global i32 0, align 4
@WM8971_RDAC = common dso_local global i32 0, align 4
@WM8971_LOUT1V = common dso_local global i32 0, align 4
@WM8971_ROUT1V = common dso_local global i32 0, align 4
@WM8971_LOUT2V = common dso_local global i32 0, align 4
@WM8971_ROUT2V = common dso_local global i32 0, align 4
@WM8971_LINVOL = common dso_local global i32 0, align 4
@WM8971_RINVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8971_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8971_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8971_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.wm8971_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.wm8971_priv* %5, %struct.wm8971_priv** %3, align 8
  %6 = load %struct.wm8971_priv*, %struct.wm8971_priv** %3, align 8
  %7 = getelementptr inbounds %struct.wm8971_priv, %struct.wm8971_priv* %6, i32 0, i32 0
  %8 = load i32, i32* @wm8971_charge_work, align 4
  %9 = call i32 @INIT_DELAYED_WORK(i32* %7, i32 %8)
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call i32 @wm8971_reset(%struct.snd_soc_component* %10)
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = load i32, i32* @WM8971_LDAC, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 256, i32 256)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @WM8971_RDAC, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 256, i32 256)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = load i32, i32* @WM8971_LOUT1V, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 256, i32 256)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @WM8971_ROUT1V, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 256, i32 256)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %25 = load i32, i32* @WM8971_LOUT2V, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 256, i32 256)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = load i32, i32* @WM8971_ROUT2V, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 256, i32 256)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = load i32, i32* @WM8971_LINVOL, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 256, i32 256)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @WM8971_RINVOL, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 256, i32 256)
  ret i32 0
}

declare dso_local %struct.wm8971_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @wm8971_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
