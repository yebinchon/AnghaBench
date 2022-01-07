; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.alc5632_priv = type { i32 }

@alc5632_vol_snd_controls = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @alc5632_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5632_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.alc5632_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = call %struct.alc5632_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.alc5632_priv* %6, %struct.alc5632_priv** %4, align 8
  %7 = load %struct.alc5632_priv*, %struct.alc5632_priv** %4, align 8
  %8 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 92, label %10
  ]

10:                                               ; preds = %1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @alc5632_vol_snd_controls, align 4
  %13 = load i32, i32* @alc5632_vol_snd_controls, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %11, i32 %12, i32 %14)
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.alc5632_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
