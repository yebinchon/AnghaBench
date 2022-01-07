; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_headset_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_headset_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@TWL6040_HSDRVMODE = common dso_local global i32 0, align 4
@TWL6040_HSDACMODE = common dso_local global i32 0, align 4
@TWL6040_REG_HSLCTL = common dso_local global i32 0, align 4
@TWL6040_REG_HSRCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @headset_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @headset_power_mode(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @TWL6040_HSDRVMODE, align 4
  %9 = load i32, i32* @TWL6040_HSDACMODE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @TWL6040_REG_HSLCTL, align 4
  %13 = call i32 @twl6040_read(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @TWL6040_REG_HSRCTL, align 4
  %16 = call i32 @twl6040_read(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @TWL6040_REG_HSLCTL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @twl6040_write(%struct.snd_soc_component* %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @TWL6040_REG_HSRCTL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @twl6040_write(%struct.snd_soc_component* %40, i32 %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @twl6040_read(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl6040_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
