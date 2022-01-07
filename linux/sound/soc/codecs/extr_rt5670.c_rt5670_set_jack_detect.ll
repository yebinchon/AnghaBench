; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_set_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_set_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5670_priv = type { %struct.TYPE_2__, %struct.snd_soc_jack* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, %struct.rt5670_priv*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@rt5670_irq_detection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Adding jack GPIO failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5670_set_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca %struct.rt5670_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5670_priv* %9, %struct.rt5670_priv** %6, align 8
  %10 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %11 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %12 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %11, i32 0, i32 1
  store %struct.snd_soc_jack* %10, %struct.snd_soc_jack** %12, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %17 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 8
  %19 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %20 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @SND_JACK_HEADSET, align 4
  %23 = load i32, i32* @SND_JACK_BTN_0, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SND_JACK_BTN_1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SND_JACK_BTN_2, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %33 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 150, i32* %34, align 4
  %35 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %36 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 1, i32* %37, align 8
  %38 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %39 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %40 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store %struct.rt5670_priv* %38, %struct.rt5670_priv** %41, align 8
  %42 = load i32, i32* @rt5670_irq_detection, align 4
  %43 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %44 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %47 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %46, i32 0, i32 1
  %48 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %47, align 8
  %49 = load %struct.rt5670_priv*, %struct.rt5670_priv** %6, align 8
  %50 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %49, i32 0, i32 0
  %51 = call i32 @snd_soc_jack_add_gpios(%struct.snd_soc_jack* %48, i32 1, %struct.TYPE_2__* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_jack_add_gpios(%struct.snd_soc_jack*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
