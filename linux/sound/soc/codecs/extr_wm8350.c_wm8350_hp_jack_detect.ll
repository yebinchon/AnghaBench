; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_hp_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_hp_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.wm8350_data = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.wm8350* }
%struct.TYPE_3__ = type { i32, %struct.snd_soc_jack* }
%struct.TYPE_4__ = type { i32, %struct.snd_soc_jack* }
%struct.wm8350 = type { i32 }

@WM8350_JDL_ENA = common dso_local global i32 0, align 4
@WM8350_JDR_ENA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_TOCLK_ENA = common dso_local global i32 0, align 4
@WM8350_JACK_DETECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_hp_jack_detect(%struct.snd_soc_component* %0, i32 %1, %struct.snd_soc_jack* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_jack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8350_data*, align 8
  %11 = alloca %struct.wm8350*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.snd_soc_jack* %2, %struct.snd_soc_jack** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm8350_data* %14, %struct.wm8350_data** %10, align 8
  %15 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %16 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %15, i32 0, i32 2
  %17 = load %struct.wm8350*, %struct.wm8350** %16, align 8
  store %struct.wm8350* %17, %struct.wm8350** %11, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %39 [
    i32 129, label %19
    i32 128, label %29
  ]

19:                                               ; preds = %4
  %20 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %8, align 8
  %21 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %22 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.snd_soc_jack* %20, %struct.snd_soc_jack** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %26 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @WM8350_JDL_ENA, align 4
  store i32 %28, i32* %12, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %8, align 8
  %31 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %32 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.snd_soc_jack* %30, %struct.snd_soc_jack** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %36 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @WM8350_JDR_ENA, align 4
  store i32 %38, i32* %12, align 4
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %68

42:                                               ; preds = %29, %19
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %47 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %48 = load i32, i32* @WM8350_TOCLK_ENA, align 4
  %49 = call i32 @wm8350_set_bits(%struct.wm8350* %46, i32 %47, i32 %48)
  %50 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %51 = load i32, i32* @WM8350_JACK_DETECT, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @wm8350_set_bits(%struct.wm8350* %50, i32 %51, i32 %52)
  br label %59

54:                                               ; preds = %42
  %55 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %56 = load i32, i32* @WM8350_JACK_DETECT, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @wm8350_clear_bits(%struct.wm8350* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %67 [
    i32 129, label %61
    i32 128, label %64
  ]

61:                                               ; preds = %59
  %62 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %63 = call i32 @wm8350_hpl_jack_handler(i32 0, %struct.wm8350_data* %62)
  br label %67

64:                                               ; preds = %59
  %65 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %66 = call i32 @wm8350_hpr_jack_handler(i32 0, %struct.wm8350_data* %65)
  br label %67

67:                                               ; preds = %59, %64, %61
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_hpl_jack_handler(i32, %struct.wm8350_data*) #1

declare dso_local i32 @wm8350_hpr_jack_handler(i32, %struct.wm8350_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
