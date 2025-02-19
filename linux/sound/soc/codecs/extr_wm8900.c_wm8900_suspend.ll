; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8900_priv = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Failed to stop FLL\0A\00", align 1
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8900_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_suspend(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8900_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm8900_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8900_priv* %9, %struct.wm8900_priv** %4, align 8
  %10 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %11 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %14 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = call i32 @wm8900_set_fll(%struct.snd_soc_component* %16, i32 0, i32 0, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %29 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %32 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %35 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.wm8900_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8900_set_fll(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
