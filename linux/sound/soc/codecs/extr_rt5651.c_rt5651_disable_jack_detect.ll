; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_disable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_disable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { i32*, i32 }

@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @rt5651_disable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5651_disable_jack_detect(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5651_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt5651_priv* %5, %struct.rt5651_priv** %3, align 8
  %6 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @disable_irq(i32 %8)
  %10 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %11 = call i32 @rt5651_cancel_work(%struct.rt5651_priv* %10)
  %12 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %13 = call i64 @rt5651_support_button_press(%struct.rt5651_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = call i32 @rt5651_disable_micbias1_ovcd_irq(%struct.snd_soc_component* %16)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = call i32 @rt5651_disable_micbias1_for_ovcd(%struct.snd_soc_component* %18)
  %20 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @SND_JACK_BTN_0, align 4
  %24 = call i32 @snd_soc_jack_report(i32* %22, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @rt5651_cancel_work(%struct.rt5651_priv*) #1

declare dso_local i64 @rt5651_support_button_press(%struct.rt5651_priv*) #1

declare dso_local i32 @rt5651_disable_micbias1_ovcd_irq(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5651_disable_micbias1_for_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_jack_report(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
