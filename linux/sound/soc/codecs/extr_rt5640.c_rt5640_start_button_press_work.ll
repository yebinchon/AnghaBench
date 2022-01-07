; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_start_button_press_work.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_start_button_press_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32, i32, i32, i64, i64, i64 }

@BP_POLL_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @rt5640_start_button_press_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5640_start_button_press_work(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5640_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt5640_priv* %5, %struct.rt5640_priv** %3, align 8
  %6 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = call i32 @rt5640_clear_micbias1_ovcd(%struct.snd_soc_component* %16)
  %18 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %18, i32 0, i32 2
  %20 = load i32, i32* @BP_POLL_TIME, align 4
  %21 = call i32 @msecs_to_jiffies(i32 %20)
  %22 = call i32 @schedule_delayed_work(i32* %19, i32 %21)
  ret void
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5640_clear_micbias1_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
