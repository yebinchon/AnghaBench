; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt286_priv = type { i32, i32, %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i64 }

@RT286_IRQ_CTRL = common dso_local global i32 0, align 4
@rt286_jack_detect_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt286_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt286_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt286_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt286_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt286_priv* %5, %struct.rt286_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.rt286_priv*, %struct.rt286_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %7, i32 0, i32 3
  store %struct.snd_soc_component* %6, %struct.snd_soc_component** %8, align 8
  %9 = load %struct.rt286_priv*, %struct.rt286_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.rt286_priv*, %struct.rt286_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RT286_IRQ_CTRL, align 4
  %20 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 2, i32 2)
  %21 = load %struct.rt286_priv*, %struct.rt286_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %21, i32 0, i32 0
  %23 = load i32, i32* @rt286_jack_detect_work, align 4
  %24 = call i32 @INIT_DELAYED_WORK(i32* %22, i32 %23)
  %25 = load %struct.rt286_priv*, %struct.rt286_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %25, i32 0, i32 0
  %27 = call i32 @msecs_to_jiffies(i32 1250)
  %28 = call i32 @schedule_delayed_work(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.rt286_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
