; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_spdifrx_data = type { i64, i32, i32, i32, %struct.regmap_config* }
%struct.regmap_config = type { i32 }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@stm32_spdifrx_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"kclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not get kclk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_spdifrx_data*)* @stm32_spdifrx_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_parse_of(%struct.platform_device* %0, %struct.stm32_spdifrx_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_spdifrx_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_spdifrx_data* %1, %struct.stm32_spdifrx_data** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load i32, i32* @stm32_spdifrx_ids, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.of_device_id* @of_match_device(i32 %19, %struct.TYPE_5__* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %7, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %24 = icmp ne %struct.of_device_id* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.regmap_config*
  %30 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %31 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %30, i32 0, i32 4
  store %struct.regmap_config* %29, %struct.regmap_config** %31, align 8
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %25
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %8, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %40, %struct.resource* %41)
  %43 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %44 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %52 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %94

55:                                               ; preds = %35
  %56 = load %struct.resource*, %struct.resource** %8, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %60 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @devm_clk_get(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %65 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %67 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %55
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_5__* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %76 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %94

79:                                               ; preds = %55
  %80 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %81 = call i64 @platform_get_irq(%struct.platform_device* %80, i32 0)
  %82 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %83 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %85 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %90 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %88, %71, %50, %32, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
