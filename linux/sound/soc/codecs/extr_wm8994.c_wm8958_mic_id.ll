; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_mic_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_mic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WM8958_MICD_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Detected open circuit\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Detected microphone\0A\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Detected headphone\0A\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @wm8958_mic_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_mic_id(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wm8994_priv*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.snd_soc_component*
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8994_priv* %10, %struct.wm8994_priv** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @WM8958_MICD_STS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @system_power_efficient_wq, align 4
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 3
  %23 = call i32 @msecs_to_jiffies(i32 2500)
  %24 = call i32 @queue_delayed_work(i32 %20, i32* %22, i32 %23)
  br label %73

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 1536
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %39 = call i32 @wm8958_micd_set_rate(%struct.snd_soc_component* %38)
  %40 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SND_JACK_HEADSET, align 4
  %47 = load i32, i32* @SND_JACK_HEADSET, align 4
  %48 = call i32 @snd_soc_jack_report(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %29, %25
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 252
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %59 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %61 = call i32 @wm8958_micd_set_rate(%struct.snd_soc_component* %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %63 = call i32 @wm1811_micd_stop(%struct.snd_soc_component* %62)
  %64 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %65 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %71 = load i32, i32* @SND_JACK_HEADSET, align 4
  %72 = call i32 @snd_soc_jack_report(i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %15, %53, %49
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wm8958_micd_set_rate(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @wm1811_micd_stop(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
