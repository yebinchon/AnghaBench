; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau1977 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @adau1977_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adau1977*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.adau1977* %8, %struct.adau1977** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %23 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %12
    i32 131, label %20
  ]

10:                                               ; preds = %2
  br label %23

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %13)
  %15 = icmp eq i32 %14, 131
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %18 = call i32 @adau1977_power_enable(%struct.adau1977* %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %12
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.adau1977*, %struct.adau1977** %5, align 8
  %22 = call i32 @adau1977_power_disable(%struct.adau1977* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %2, %20, %19, %11, %10
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @adau1977_power_enable(%struct.adau1977*) #1

declare dso_local i32 @adau1977_power_disable(%struct.adau1977*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
