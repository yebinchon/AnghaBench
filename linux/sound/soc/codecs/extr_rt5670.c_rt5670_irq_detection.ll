; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_irq_detection.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_irq_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5670_priv = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.snd_soc_jack*, %struct.snd_soc_jack_gpio }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.snd_soc_jack_gpio = type { i32 }

@RT5670_A_JD_CTRL1 = common dso_local global i32 0, align 4
@RT5670_INT_IRQ_ST = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected button code 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rt5670_irq_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_irq_detection(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt5670_priv*, align 8
  %4 = alloca %struct.snd_soc_jack_gpio*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.rt5670_priv*
  store %struct.rt5670_priv* %10, %struct.rt5670_priv** %3, align 8
  %11 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %11, i32 0, i32 4
  store %struct.snd_soc_jack_gpio* %12, %struct.snd_soc_jack_gpio** %4, align 8
  %13 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %13, i32 0, i32 3
  %15 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %14, align 8
  store %struct.snd_soc_jack* %15, %struct.snd_soc_jack** %5, align 8
  %16 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* @RT5670_A_JD_CTRL1, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.TYPE_7__* %27, i32 %28)
  %30 = and i32 %29, 112
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* @RT5670_A_JD_CTRL1, align 4
  %36 = call i32 @snd_soc_component_read32(%struct.TYPE_7__* %34, i32 %35)
  %37 = and i32 %36, 32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %108 [
    i32 48, label %40
    i32 0, label %40
    i32 112, label %96
    i32 16, label %96
    i32 32, label %96
  ]

40:                                               ; preds = %38, %38
  %41 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @rt5670_headset_detect(%struct.TYPE_7__* %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.snd_soc_jack_gpio*, %struct.snd_soc_jack_gpio** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_jack_gpio, %struct.snd_soc_jack_gpio* %50, i32 0, i32 0
  store i32 25, i32* %51, align 4
  br label %109

52:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  %53 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* @RT5670_INT_IRQ_ST, align 4
  %57 = call i32 @snd_soc_component_read32(%struct.TYPE_7__* %55, i32 %56)
  %58 = and i32 %57, 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %52
  %61 = load i32, i32* @SND_JACK_HEADSET, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @rt5670_button_detect(%struct.TYPE_7__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  switch i32 %66, label %79 [
    i32 8192, label %67
    i32 1024, label %71
    i32 128, label %75
  ]

67:                                               ; preds = %60
  %68 = load i32, i32* @SND_JACK_BTN_1, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %87

71:                                               ; preds = %60
  %72 = load i32, i32* @SND_JACK_BTN_0, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %87

75:                                               ; preds = %60
  %76 = load i32, i32* @SND_JACK_BTN_2, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %87

79:                                               ; preds = %60
  %80 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %75, %71, %67
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %88
  br label %109

96:                                               ; preds = %38, %38, %38
  store i32 0, i32* %8, align 4
  %97 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* @RT5670_INT_IRQ_ST, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.TYPE_7__* %99, i32 %100, i32 1, i32 0)
  %102 = load %struct.rt5670_priv*, %struct.rt5670_priv** %3, align 8
  %103 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 @rt5670_headset_detect(%struct.TYPE_7__* %104, i32 0)
  %106 = load %struct.snd_soc_jack_gpio*, %struct.snd_soc_jack_gpio** %4, align 8
  %107 = getelementptr inbounds %struct.snd_soc_jack_gpio, %struct.snd_soc_jack_gpio* %106, i32 0, i32 0
  store i32 150, i32* %107, align 4
  br label %109

108:                                              ; preds = %38
  br label %109

109:                                              ; preds = %108, %96, %95, %45
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @snd_soc_component_read32(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rt5670_headset_detect(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rt5670_button_detect(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
