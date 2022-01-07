; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-feature.c_ftr_gpio_set_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-feature.c_ftr_gpio_set_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { i32 }

@hw_reset_gpio = common dso_local global i64 0, align 8
@PMAC_FTR_READ_GPIO = common dso_local global i32 0, align 4
@hw_reset = common dso_local global i32 0, align 4
@PMAC_FTR_WRITE_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*, i32)* @ftr_gpio_set_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftr_gpio_set_hw_reset(%struct.gpio_runtime* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_runtime*, %struct.gpio_runtime** %3, align 8
  %7 = icmp ne %struct.gpio_runtime* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  %14 = load i64, i64* @hw_reset_gpio, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %29

17:                                               ; preds = %13
  %18 = load i32, i32* @PMAC_FTR_READ_GPIO, align 4
  %19 = load i64, i64* @hw_reset_gpio, align 8
  %20 = call i32 @pmac_call_feature(i32 %18, i32* null, i64 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @hw_reset, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SWITCH_GPIO(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @PMAC_FTR_WRITE_GPIO, align 4
  %26 = load i64, i64* @hw_reset_gpio, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pmac_call_feature(i32 %25, i32* null, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %16, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmac_call_feature(i32, i32*, i64, i32) #1

declare dso_local i32 @SWITCH_GPIO(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
