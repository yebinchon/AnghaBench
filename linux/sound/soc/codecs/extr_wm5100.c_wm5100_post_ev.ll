; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_post_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_post_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm5100_priv = type { i32 }

@WM5100_INTERRUPT_RAW_STATUS_3 = common dso_local global i32 0, align 4
@WM5100_SPK_SHUTDOWN_WARN_STS = common dso_local global i32 0, align 4
@WM5100_SPK_SHUTDOWN_STS = common dso_local global i32 0, align 4
@WM5100_CLKGEN_ERR_STS = common dso_local global i32 0, align 4
@WM5100_CLKGEN_ERR_ASYNC_STS = common dso_local global i32 0, align 4
@WM5100_INTERRUPT_RAW_STATUS_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm5100_post_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_post_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm5100_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm5100_priv* %15, %struct.wm5100_priv** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = load i32, i32* @WM5100_INTERRUPT_RAW_STATUS_3, align 4
  %18 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @WM5100_SPK_SHUTDOWN_WARN_STS, align 4
  %20 = load i32, i32* @WM5100_SPK_SHUTDOWN_STS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WM5100_CLKGEN_ERR_STS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WM5100_CLKGEN_ERR_ASYNC_STS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.wm5100_priv*, %struct.wm5100_priv** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @wm5100_log_status3(%struct.wm5100_priv* %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %32 = load i32, i32* @WM5100_INTERRUPT_RAW_STATUS_4, align 4
  %33 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.wm5100_priv*, %struct.wm5100_priv** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @wm5100_log_status4(%struct.wm5100_priv* %34, i32 %35)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm5100_log_status3(%struct.wm5100_priv*, i32) #1

declare dso_local i32 @wm5100_log_status4(%struct.wm5100_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
