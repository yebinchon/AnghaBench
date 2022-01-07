; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_report_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_report_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i64, i64 }

@M98095_007_JACK_AUTO_STS = common dso_local global i32 0, align 4
@M98095_DDONE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@M98095_HP_IN = common dso_local global i32 0, align 4
@M98095_LO_IN = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@M98095_MIC_IN = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max98095_report_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_report_jack(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98095_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.snd_soc_component*
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.max98095_priv* %14, %struct.max98095_priv** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* @M98095_007_JACK_AUTO_STS, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @M98095_DDONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @M98095_HP_IN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @M98095_LO_IN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %24
  %35 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %36 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %34, %29
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @M98095_MIC_IN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %50 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %48, %43
  %58 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %59 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %62 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %67 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SND_JACK_HEADSET, align 4
  %73 = call i32 @snd_soc_jack_report(i64 %68, i32 %71, i32 %72)
  br label %99

74:                                               ; preds = %57
  %75 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %76 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %81 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %85 = call i32 @snd_soc_jack_report(i64 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %88 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %93 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %97 = call i32 @snd_soc_jack_report(i64 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %86
  br label %99

99:                                               ; preds = %98, %65
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %22
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
