; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_mic_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_mic_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.wm8350_data = type { %struct.TYPE_2__, %struct.wm8350* }
%struct.TYPE_2__ = type { i32, i32, %struct.snd_soc_jack* }
%struct.wm8350 = type { i32 }

@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_TOCLK_ENA = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_1 = common dso_local global i32 0, align 4
@WM8350_MIC_DET_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_mic_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wm8350_data*, align 8
  %10 = alloca %struct.wm8350*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8350_data* %12, %struct.wm8350_data** %9, align 8
  %13 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %14 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %13, i32 0, i32 1
  %15 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  store %struct.wm8350* %15, %struct.wm8350** %10, align 8
  %16 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %17 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %18 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store %struct.snd_soc_jack* %16, %struct.snd_soc_jack** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %22 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.wm8350_data*, %struct.wm8350_data** %9, align 8
  %26 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %4
  %34 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %35 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %36 = load i32, i32* @WM8350_TOCLK_ENA, align 4
  %37 = call i32 @wm8350_set_bits(%struct.wm8350* %34, i32 %35, i32 %36)
  %38 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %39 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %40 = load i32, i32* @WM8350_MIC_DET_ENA, align 4
  %41 = call i32 @wm8350_set_bits(%struct.wm8350* %38, i32 %39, i32 %40)
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %44 = load i32, i32* @WM8350_POWER_MGMT_1, align 4
  %45 = load i32, i32* @WM8350_MIC_DET_ENA, align 4
  %46 = call i32 @wm8350_clear_bits(%struct.wm8350* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %33
  ret i32 0
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
