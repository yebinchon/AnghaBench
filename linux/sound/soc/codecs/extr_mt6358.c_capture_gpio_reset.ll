; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_capture_gpio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_capture_gpio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32 }

@MT6358_GPIO_MODE3_CLR = common dso_local global i32 0, align 4
@MT6358_GPIO_MODE3 = common dso_local global i32 0, align 4
@MT6358_GPIO_DIR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt6358_priv*)* @capture_gpio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_gpio_reset(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MT6358_GPIO_MODE3_CLR, align 4
  %7 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 65535, i32 65535)
  %8 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MT6358_GPIO_MODE3, align 4
  %12 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 65535, i32 0)
  %13 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MT6358_GPIO_DIR0, align 4
  %17 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 61440, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
