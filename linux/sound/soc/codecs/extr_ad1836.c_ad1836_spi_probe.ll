; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1836.c_ad1836_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1836.c_ad1836_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ad1836_priv = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad1836_regmap_config = common dso_local global i32 0, align 4
@soc_component_dev_ad1836 = common dso_local global i32 0, align 4
@ad183x_dais = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad1836_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1836_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad1836_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ad1836_priv* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.ad1836_priv* %9, %struct.ad1836_priv** %4, align 8
  %10 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %11 = icmp eq %struct.ad1836_priv* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = call i32 @devm_regmap_init_spi(%struct.spi_device* %16, i32* @ad1836_regmap_config)
  %18 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %15
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = call %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %39 = call i32 @spi_set_drvdata(%struct.spi_device* %37, %struct.ad1836_priv* %38)
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i32*, i32** @ad183x_dais, align 8
  %43 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @devm_snd_soc_register_component(i32* %41, i32* @soc_component_dev_ad1836, i32* %46, i32 1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %30, %25, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ad1836_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ad1836_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
