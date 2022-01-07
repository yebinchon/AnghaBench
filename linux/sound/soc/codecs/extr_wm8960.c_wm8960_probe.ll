; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32, %struct.wm8960_data }
%struct.wm8960_data = type { i64 }

@wm8960_set_bias_level_capless = common dso_local global i32 0, align 4
@wm8960_set_bias_level_out3 = common dso_local global i32 0, align 4
@wm8960_snd_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8960_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8960_priv*, align 8
  %4 = alloca %struct.wm8960_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8960_priv* %6, %struct.wm8960_priv** %3, align 8
  %7 = load %struct.wm8960_priv*, %struct.wm8960_priv** %3, align 8
  %8 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %7, i32 0, i32 1
  store %struct.wm8960_data* %8, %struct.wm8960_data** %4, align 8
  %9 = load %struct.wm8960_data*, %struct.wm8960_data** %4, align 8
  %10 = getelementptr inbounds %struct.wm8960_data, %struct.wm8960_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @wm8960_set_bias_level_capless, align 4
  %15 = load %struct.wm8960_priv*, %struct.wm8960_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @wm8960_set_bias_level_out3, align 4
  %19 = load %struct.wm8960_priv*, %struct.wm8960_priv** %3, align 8
  %20 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = load i32, i32* @wm8960_snd_controls, align 4
  %24 = load i32, i32* @wm8960_snd_controls, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %22, i32 %23, i32 %25)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = call i32 @wm8960_add_widgets(%struct.snd_soc_component* %27)
  ret i32 0
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8960_add_widgets(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
