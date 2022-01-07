; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_e740_wm9705.c_e740_sync_audio_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_e740_wm9705.c_e740_sync_audio_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_E740_WM9705_nAVDD2 = common dso_local global i32 0, align 4
@GPIO_E740_AMP_ON = common dso_local global i32 0, align 4
@E740_AUDIO_OUT = common dso_local global i32 0, align 4
@GPIO_E740_MIC_ON = common dso_local global i32 0, align 4
@E740_AUDIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @e740_sync_audio_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e740_sync_audio_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @GPIO_E740_WM9705_nAVDD2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @gpio_set_value(i32 %3, i32 %7)
  %9 = load i32, i32* @GPIO_E740_AMP_ON, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @E740_AUDIO_OUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = call i32 @gpio_set_value(i32 %9, i32 %15)
  %17 = load i32, i32* @GPIO_E740_MIC_ON, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @E740_AUDIO_IN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @gpio_set_value(i32 %17, i32 %23)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
