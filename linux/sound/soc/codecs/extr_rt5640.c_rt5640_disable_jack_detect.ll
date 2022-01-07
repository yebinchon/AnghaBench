; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_disable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_disable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @rt5640_disable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5640_disable_jack_detect(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5640_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt5640_priv* %5, %struct.rt5640_priv** %3, align 8
  %6 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @disable_irq(i32 %8)
  %10 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %11 = call i32 @rt5640_cancel_work(%struct.rt5640_priv* %10)
  %12 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = call i32 @rt5640_disable_micbias1_ovcd_irq(%struct.snd_soc_component* %21)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = call i32 @rt5640_disable_micbias1_for_ovcd(%struct.snd_soc_component* %23)
  %25 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @SND_JACK_BTN_0, align 4
  %29 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %27, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %31, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  ret void
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @rt5640_cancel_work(%struct.rt5640_priv*) #1

declare dso_local i32 @rt5640_disable_micbias1_ovcd_irq(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5640_disable_micbias1_for_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_jack_report(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
