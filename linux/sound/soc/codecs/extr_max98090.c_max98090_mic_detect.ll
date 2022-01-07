; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.max98090_priv = type { i32, %struct.snd_soc_jack* }

@.str = private unnamed_addr constant [21 x i8] c"max98090_mic_detect\0A\00", align 1
@M98090_REG_INTERRUPT_S = common dso_local global i32 0, align 4
@M98090_IJDET_MASK = common dso_local global i32 0, align 4
@M98090_IJDET_SHIFT = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max98090_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.max98090_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.max98090_priv* %7, %struct.max98090_priv** %5, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %13 = load %struct.max98090_priv*, %struct.max98090_priv** %5, align 8
  %14 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %13, i32 0, i32 1
  store %struct.snd_soc_jack* %12, %struct.snd_soc_jack** %14, align 8
  %15 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %16 = icmp ne %struct.snd_soc_jack* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = load i32, i32* @M98090_REG_INTERRUPT_S, align 4
  %20 = load i32, i32* @M98090_IJDET_MASK, align 4
  %21 = load i32, i32* @M98090_IJDET_SHIFT, align 4
  %22 = shl i32 1, %21
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @M98090_REG_INTERRUPT_S, align 4
  %27 = load i32, i32* @M98090_IJDET_MASK, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.max98090_priv*, %struct.max98090_priv** %5, align 8
  %31 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %30, i32 0, i32 1
  %32 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %31, align 8
  %33 = load i32, i32* @SND_JACK_HEADSET, align 4
  %34 = load i32, i32* @SND_JACK_BTN_0, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @snd_soc_jack_report(%struct.snd_soc_jack* %32, i32 0, i32 %35)
  %37 = load i32, i32* @system_power_efficient_wq, align 4
  %38 = load %struct.max98090_priv*, %struct.max98090_priv** %5, align 8
  %39 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %38, i32 0, i32 0
  %40 = call i32 @msecs_to_jiffies(i32 100)
  %41 = call i32 @queue_delayed_work(i32 %37, i32* %39, i32 %40)
  ret i32 0
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(%struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
