; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_component_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_component_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.wm8350 = type { i32 }

@WM8350_JACK_DETECT = common dso_local global i32 0, align 4
@WM8350_JDL_ENA = common dso_local global i32 0, align 4
@WM8350_JDR_ENA = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_TOCLK_ENA = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_MICD = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_MICSCD = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_JCK_DET_L = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_JCK_DET_R = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_5 = common dso_local global i32 0, align 4
@WM8350_CODEC_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8350_component_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_component_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8350_data*, align 8
  %4 = alloca %struct.wm8350*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8350_data* %6, %struct.wm8350_data** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wm8350* @dev_get_platdata(i32 %9)
  store %struct.wm8350* %10, %struct.wm8350** %4, align 8
  %11 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %12 = load i32, i32* @WM8350_JACK_DETECT, align 4
  %13 = load i32, i32* @WM8350_JDL_ENA, align 4
  %14 = load i32, i32* @WM8350_JDR_ENA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @wm8350_clear_bits(%struct.wm8350* %11, i32 %12, i32 %15)
  %17 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %18 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %19 = load i32, i32* @WM8350_TOCLK_ENA, align 4
  %20 = call i32 @wm8350_clear_bits(%struct.wm8350* %17, i32 %18, i32 %19)
  %21 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %22 = load i32, i32* @WM8350_IRQ_CODEC_MICD, align 4
  %23 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %24 = call i32 @wm8350_free_irq(%struct.wm8350* %21, i32 %22, %struct.wm8350_data* %23)
  %25 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %26 = load i32, i32* @WM8350_IRQ_CODEC_MICSCD, align 4
  %27 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %28 = call i32 @wm8350_free_irq(%struct.wm8350* %25, i32 %26, %struct.wm8350_data* %27)
  %29 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %30 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_L, align 4
  %31 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %32 = call i32 @wm8350_free_irq(%struct.wm8350* %29, i32 %30, %struct.wm8350_data* %31)
  %33 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %34 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_R, align 4
  %35 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %36 = call i32 @wm8350_free_irq(%struct.wm8350* %33, i32 %34, %struct.wm8350_data* %35)
  %37 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %38 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %41 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %44 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %47 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @cancel_delayed_work_sync(i32* %48)
  %50 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %51 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @cancel_delayed_work_sync(i32* %52)
  %54 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %55 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %54, i32 0, i32 0
  %56 = call i32 @flush_delayed_work(i32* %55)
  %57 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %58 = load i32, i32* @WM8350_POWER_MGMT_5, align 4
  %59 = load i32, i32* @WM8350_CODEC_ENA, align 4
  %60 = call i32 @wm8350_clear_bits(%struct.wm8350* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8350* @dev_get_platdata(i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_free_irq(%struct.wm8350*, i32, %struct.wm8350_data*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
