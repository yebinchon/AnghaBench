; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97-lib.c_pxa2xx_ac97_hw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97-lib.c_pxa2xx_ac97_hw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@reset_gpio = common dso_local global i32 0, align 4
@GCR_ACLINK_OFF = common dso_local global i32 0, align 4
@GCR = common dso_local global i32 0, align 4
@IRQ_AC97 = common dso_local global i32 0, align 4
@ac97conf_clk = common dso_local global i32* null, align 8
@ac97_clk = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_ac97_hw_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i64 (...) @cpu_is_pxa27x()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @reset_gpio, align 4
  %7 = call i32 @gpio_free(i32 %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* @GCR_ACLINK_OFF, align 4
  %10 = load i32, i32* @GCR, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @GCR, align 4
  %12 = load i32, i32* @IRQ_AC97, align 4
  %13 = call i32 @free_irq(i32 %12, i32* null)
  %14 = load i32*, i32** @ac97conf_clk, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32*, i32** @ac97conf_clk, align 8
  %18 = call i32 @clk_put(i32* %17)
  store i32* null, i32** @ac97conf_clk, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = load i32*, i32** @ac97_clk, align 8
  %21 = call i32 @clk_disable_unprepare(i32* %20)
  %22 = load i32*, i32** @ac97_clk, align 8
  %23 = call i32 @clk_put(i32* %22)
  store i32* null, i32** @ac97_clk, align 8
  ret void
}

declare dso_local i64 @cpu_is_pxa27x(...) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
