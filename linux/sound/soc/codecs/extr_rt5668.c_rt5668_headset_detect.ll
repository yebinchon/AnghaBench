; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_headset_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_headset_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5668_priv = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"CBJ Power\00", align 1
@RT5668_CBJ_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_TRIG_JD_MASK = common dso_local global i32 0, align 4
@RT5668_TRIG_JD_HIGH = common dso_local global i32 0, align 4
@RT5668_CBJ_CTRL_2 = common dso_local global i32 0, align 4
@RT5668_JACK_TYPE_MASK = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@RT5668_TRIG_JD_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"jack_type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5668_headset_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_headset_detect(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5668_priv*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt5668_priv* %10, %struct.rt5668_priv** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %17 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %19 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @RT5668_CBJ_CTRL_1, align 4
  %22 = load i32, i32* @RT5668_TRIG_JD_MASK, align 4
  %23 = load i32, i32* @RT5668_TRIG_JD_HIGH, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %8, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @RT5668_CBJ_CTRL_2, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  %28 = load i32, i32* @RT5668_JACK_TYPE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %38, %15
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %34, 50
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = call i32 @usleep_range(i32 10000, i32 15000)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @RT5668_CBJ_CTRL_2, align 4
  %42 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %40, i32 %41)
  %43 = load i32, i32* @RT5668_JACK_TYPE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %30

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %55 [
    i32 1, label %49
    i32 2, label %49
  ]

49:                                               ; preds = %47, %47
  %50 = load i32, i32* @SND_JACK_HEADSET, align 4
  %51 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %52 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = call i32 @rt5668_enable_push_button_irq(%struct.snd_soc_component* %53, i32 1)
  br label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %57 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %58 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %49
  br label %74

60:                                               ; preds = %2
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = call i32 @rt5668_enable_push_button_irq(%struct.snd_soc_component* %61, i32 0)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = load i32, i32* @RT5668_CBJ_CTRL_1, align 4
  %65 = load i32, i32* @RT5668_TRIG_JD_MASK, align 4
  %66 = load i32, i32* @RT5668_TRIG_JD_LOW, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %69 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %71 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %70)
  %72 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %73 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %60, %59
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %79 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %83 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  ret i32 %84
}

declare dso_local %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rt5668_enable_push_button_irq(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
