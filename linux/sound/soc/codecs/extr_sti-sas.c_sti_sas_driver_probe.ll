; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sti-sas.c_sti_sas_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sti-sas.c_sti_sas_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sti_sas_data = type { %struct.sti_sas_dev_data*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.sti_sas_dev_data = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sti_sas_dev_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"data associated to device is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"audio registers not enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"syscon registers not available\0A\00", align 1
@sti_sas_dai = common dso_local global %struct.TYPE_16__* null, align 8
@STI_SAS_DAI_ANALOG_OUT = common dso_local global i64 0, align 8
@sti_sas_driver = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_sas_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_sas_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sti_sas_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sti_sas_data* @devm_kzalloc(%struct.TYPE_17__* %12, i32 32, i32 %13)
  store %struct.sti_sas_data* %14, %struct.sti_sas_data** %5, align 8
  %15 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %16 = icmp ne %struct.sti_sas_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %140

20:                                               ; preds = %1
  %21 = load i32, i32* @sti_sas_dev_match, align 4
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call %struct.of_device_id* @of_match_node(i32 %21, %struct.device_node* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %6, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_17__* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %140

34:                                               ; preds = %20
  %35 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.sti_sas_dev_data*
  %39 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %40 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %39, i32 0, i32 0
  store %struct.sti_sas_dev_data* %38, %struct.sti_sas_dev_data** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %44 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %43, i32 0, i32 3
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %48 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %49 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %48, i32 0, i32 0
  %50 = load %struct.sti_sas_dev_data*, %struct.sti_sas_dev_data** %49, align 8
  %51 = getelementptr inbounds %struct.sti_sas_dev_data, %struct.sti_sas_dev_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @devm_regmap_init(%struct.TYPE_17__* %46, i32* null, %struct.sti_sas_data* %47, i32 %52)
  %54 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %55 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %58 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %34
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_17__* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %68 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %140

72:                                               ; preds = %34
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %76 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %79 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %72
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_17__* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %89 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %140

93:                                               ; preds = %72
  %94 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %95 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %99 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %102 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %101, i32 0, i32 0
  %103 = load %struct.sti_sas_dev_data*, %struct.sti_sas_dev_data** %102, align 8
  %104 = getelementptr inbounds %struct.sti_sas_dev_data, %struct.sti_sas_dev_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sti_sas_dai, align 8
  %107 = load i64, i64* @STI_SAS_DAI_ANALOG_OUT, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %111 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %110, i32 0, i32 0
  %112 = load %struct.sti_sas_dev_data*, %struct.sti_sas_dev_data** %111, align 8
  %113 = getelementptr inbounds %struct.sti_sas_dev_data, %struct.sti_sas_dev_data* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sti_sas_driver, i32 0, i32 3), align 4
  %115 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %116 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %115, i32 0, i32 0
  %117 = load %struct.sti_sas_dev_data*, %struct.sti_sas_dev_data** %116, align 8
  %118 = getelementptr inbounds %struct.sti_sas_dev_data, %struct.sti_sas_dev_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sti_sas_driver, i32 0, i32 2), align 4
  %120 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %121 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %120, i32 0, i32 0
  %122 = load %struct.sti_sas_dev_data*, %struct.sti_sas_dev_data** %121, align 8
  %123 = getelementptr inbounds %struct.sti_sas_dev_data, %struct.sti_sas_dev_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sti_sas_driver, i32 0, i32 1), align 4
  %125 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %126 = getelementptr inbounds %struct.sti_sas_data, %struct.sti_sas_data* %125, i32 0, i32 0
  %127 = load %struct.sti_sas_dev_data*, %struct.sti_sas_dev_data** %126, align 8
  %128 = getelementptr inbounds %struct.sti_sas_dev_data, %struct.sti_sas_dev_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sti_sas_driver, i32 0, i32 0), align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.sti_sas_data*, %struct.sti_sas_data** %5, align 8
  %133 = call i32 @dev_set_drvdata(%struct.TYPE_17__* %131, %struct.sti_sas_data* %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sti_sas_dai, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sti_sas_dai, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %137)
  %139 = call i32 @devm_snd_soc_register_component(%struct.TYPE_17__* %135, %struct.TYPE_15__* @sti_sas_driver, %struct.TYPE_16__* %136, i32 %138)
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %93, %84, %63, %28, %17
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.sti_sas_data* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @devm_regmap_init(%struct.TYPE_17__*, i32*, %struct.sti_sas_data*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_17__*, %struct.sti_sas_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
