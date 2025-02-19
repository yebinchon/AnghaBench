; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_irq_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_irq_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.rt5677_priv = type { i32, i32, i32 }

@RT5677_IRQ_CTRL1 = common dso_local global i32 0, align 4
@RT5677_EN_IRQ_GPIO_JD1 = common dso_local global i32 0, align 4
@RT5677_EN_IRQ_GPIO_JD2 = common dso_local global i32 0, align 4
@RT5677_EN_IRQ_GPIO_JD3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rt5677_irq_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5677_irq_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.rt5677_priv*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.rt5677_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.rt5677_priv* %5, %struct.rt5677_priv** %3, align 8
  %6 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RT5677_IRQ_CTRL1, align 4
  %10 = load i32, i32* @RT5677_EN_IRQ_GPIO_JD1, align 4
  %11 = load i32, i32* @RT5677_EN_IRQ_GPIO_JD2, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RT5677_EN_IRQ_GPIO_JD3, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %14, i32 %17)
  %19 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local %struct.rt5677_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
