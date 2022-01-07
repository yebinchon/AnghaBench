; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@ALC5623_PWR_MANAG_ADD2 = common dso_local global i32 0, align 4
@ALC5623_PWR_ADD2_VREF = common dso_local global i32 0, align 4
@ALC5623_PWR_MANAG_ADD3 = common dso_local global i32 0, align 4
@ALC5623_PWR_ADD3_MAIN_BIAS = common dso_local global i32 0, align 4
@ALC5623_PWR_MANAG_ADD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @alc5623_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5623_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %29 [
    i32 130, label %6
    i32 129, label %9
    i32 128, label %10
    i32 131, label %19
  ]

6:                                                ; preds = %2
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call i32 @enable_power_depop(%struct.snd_soc_component* %7)
  br label %29

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @ALC5623_PWR_MANAG_ADD2, align 4
  %13 = load i32, i32* @ALC5623_PWR_ADD2_VREF, align 4
  %14 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @ALC5623_PWR_MANAG_ADD3, align 4
  %17 = load i32, i32* @ALC5623_PWR_ADD3_MAIN_BIAS, align 4
  %18 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %15, i32 %16, i32 %17)
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @ALC5623_PWR_MANAG_ADD2, align 4
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 0)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load i32, i32* @ALC5623_PWR_MANAG_ADD3, align 4
  %25 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %23, i32 %24, i32 0)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @ALC5623_PWR_MANAG_ADD1, align 4
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %2, %19, %10, %9, %6
  ret i32 0
}

declare dso_local i32 @enable_power_depop(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
