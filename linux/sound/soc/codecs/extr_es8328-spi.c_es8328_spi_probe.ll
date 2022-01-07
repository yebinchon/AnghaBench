; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328-spi.c_es8328_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328-spi.c_es8328_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@es8328_regmap_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @es8328_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %3 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %4 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %3, i32 0, i32 0
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call i32 @devm_regmap_init_spi(%struct.spi_device* %5, i32* @es8328_regmap_config)
  %7 = call i32 @es8328_probe(i32* %4, i32 %6)
  ret i32 %7
}

declare dso_local i32 @es8328_probe(i32*, i32) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
