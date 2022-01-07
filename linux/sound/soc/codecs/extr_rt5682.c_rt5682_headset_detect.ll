; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_headset_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_headset_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5682_priv = type { i32 }

@RT5682_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5682_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5682_PWR_MB = common dso_local global i32 0, align 4
@RT5682_PWR_FV2 = common dso_local global i32 0, align 4
@RT5682_PWR_ANLG_3 = common dso_local global i32 0, align 4
@RT5682_PWR_CBJ = common dso_local global i32 0, align 4
@RT5682_CBJ_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_TRIG_JD_MASK = common dso_local global i32 0, align 4
@RT5682_TRIG_JD_HIGH = common dso_local global i32 0, align 4
@RT5682_CBJ_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_JACK_TYPE_MASK = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@RT5682_TRIG_JD_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"jack_type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5682_headset_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_headset_detect(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5682_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5682_priv* %9, %struct.rt5682_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %15 = load i32, i32* @RT5682_PWR_VREF2, align 4
  %16 = load i32, i32* @RT5682_PWR_MB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RT5682_PWR_VREF2, align 4
  %19 = load i32, i32* @RT5682_PWR_MB, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %24 = load i32, i32* @RT5682_PWR_FV2, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %24, i32 0)
  %26 = call i32 @usleep_range(i32 15000, i32 20000)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %29 = load i32, i32* @RT5682_PWR_FV2, align 4
  %30 = load i32, i32* @RT5682_PWR_FV2, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @RT5682_PWR_ANLG_3, align 4
  %34 = load i32, i32* @RT5682_PWR_CBJ, align 4
  %35 = load i32, i32* @RT5682_PWR_CBJ, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @RT5682_CBJ_CTRL_1, align 4
  %39 = load i32, i32* @RT5682_TRIG_JD_MASK, align 4
  %40 = load i32, i32* @RT5682_TRIG_JD_HIGH, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @RT5682_CBJ_CTRL_2, align 4
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %42, i32 %43)
  %45 = load i32, i32* @RT5682_JACK_TYPE_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %55, %12
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %51, 50
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = call i32 @usleep_range(i32 10000, i32 15000)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32, i32* @RT5682_CBJ_CTRL_2, align 4
  %59 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %57, i32 %58)
  %60 = load i32, i32* @RT5682_JACK_TYPE_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %47

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  switch i32 %65, label %72 [
    i32 1, label %66
    i32 2, label %66
  ]

66:                                               ; preds = %64, %64
  %67 = load i32, i32* @SND_JACK_HEADSET, align 4
  %68 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = call i32 @rt5682_enable_push_button_irq(%struct.snd_soc_component* %70, i32 1)
  br label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %74 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %75 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %66
  br label %97

77:                                               ; preds = %2
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %79 = call i32 @rt5682_enable_push_button_irq(%struct.snd_soc_component* %78, i32 0)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @RT5682_CBJ_CTRL_1, align 4
  %82 = load i32, i32* @RT5682_TRIG_JD_MASK, align 4
  %83 = load i32, i32* @RT5682_TRIG_JD_LOW, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %86 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %87 = load i32, i32* @RT5682_PWR_VREF2, align 4
  %88 = load i32, i32* @RT5682_PWR_MB, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %89, i32 0)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %92 = load i32, i32* @RT5682_PWR_ANLG_3, align 4
  %93 = load i32, i32* @RT5682_PWR_CBJ, align 4
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %91, i32 %92, i32 %93, i32 0)
  %95 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %96 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %77, %76
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %102 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %106 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  ret i32 %107
}

declare dso_local %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @rt5682_enable_push_button_irq(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
