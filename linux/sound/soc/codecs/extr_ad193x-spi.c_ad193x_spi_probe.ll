; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x-spi.c_ad193x_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x-spi.c_ad193x_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32, i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_device_id = type { i64 }

@ad193x_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad193x_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_device_id*, align 8
  %4 = alloca %struct.regmap_config, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %5)
  store %struct.spi_device_id* %6, %struct.spi_device_id** %3, align 8
  %7 = bitcast %struct.regmap_config* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.regmap_config* @ad193x_regmap_config to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 1
  store i32 16, i32* %9, align 4
  %10 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 2
  store i32 9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 3
  store i32 8, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = call i32 @devm_regmap_init_spi(%struct.spi_device* %14, %struct.regmap_config* %4)
  %16 = load %struct.spi_device_id*, %struct.spi_device_id** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ad193x_probe(i32* %13, i32 %15, i32 %19)
  ret i32 %20
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ad193x_probe(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
