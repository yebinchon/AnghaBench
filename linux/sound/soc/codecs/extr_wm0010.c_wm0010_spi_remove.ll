; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.wm0010_priv = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wm0010_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm0010_spi_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.wm0010_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.wm0010_priv* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.wm0010_priv* %5, %struct.wm0010_priv** %3, align 8
  %6 = load %struct.wm0010_priv*, %struct.wm0010_priv** %3, align 8
  %7 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.wm0010_priv*, %struct.wm0010_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @gpio_set_value_cansleep(i32 %8, i32 %11)
  %13 = load %struct.wm0010_priv*, %struct.wm0010_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @irq_set_irq_wake(i64 %15, i32 0)
  %17 = load %struct.wm0010_priv*, %struct.wm0010_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.wm0010_priv*, %struct.wm0010_priv** %3, align 8
  %23 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wm0010_priv*, %struct.wm0010_priv** %3, align 8
  %26 = call i32 @free_irq(i64 %24, %struct.wm0010_priv* %25)
  br label %27

27:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.wm0010_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @irq_set_irq_wake(i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.wm0010_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
