; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_asoc_mcbsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_asoc_mcbsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.omap_mcbsp_platform_data = type { i32, i32, i32 }
%struct.omap_mcbsp = type { %struct.omap_mcbsp_platform_data*, %struct.TYPE_13__*, i32 }
%struct.of_device_id = type { i32 }

@omap_mcbsp_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ti,buffer-size\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"missing platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i8* null, align 8
@omap_mcbsp_dai = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@omap_mcbsp_component = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asoc_mcbsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_mcbsp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_mcbsp_platform_data*, align 8
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.omap_mcbsp_platform_data*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.omap_mcbsp_platform_data* @dev_get_platdata(%struct.TYPE_13__* %12)
  store %struct.omap_mcbsp_platform_data* %13, %struct.omap_mcbsp_platform_data** %4, align 8
  %14 = load i32, i32* @omap_mcbsp_of_match, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.TYPE_13__* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %6, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  store %struct.device_node* %24, %struct.device_node** %8, align 8
  %25 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  store %struct.omap_mcbsp_platform_data* %25, %struct.omap_mcbsp_platform_data** %9, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(%struct.TYPE_13__* %27, i32 12, i32 %28)
  %30 = bitcast i8* %29 to %struct.omap_mcbsp_platform_data*
  store %struct.omap_mcbsp_platform_data* %30, %struct.omap_mcbsp_platform_data** %4, align 8
  %31 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  %32 = icmp ne %struct.omap_mcbsp_platform_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %124

36:                                               ; preds = %20
  %37 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.omap_mcbsp_platform_data* %37, i32 %40, i32 12)
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = call i32 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %10)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.omap_mcbsp_platform_data, %struct.omap_mcbsp_platform_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %9, align 8
  %51 = icmp ne %struct.omap_mcbsp_platform_data* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %9, align 8
  %54 = getelementptr inbounds %struct.omap_mcbsp_platform_data, %struct.omap_mcbsp_platform_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  %57 = getelementptr inbounds %struct.omap_mcbsp_platform_data, %struct.omap_mcbsp_platform_data* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %49
  br label %69

59:                                               ; preds = %1
  %60 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  %61 = icmp ne %struct.omap_mcbsp_platform_data* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_13__* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %124

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @devm_kzalloc(%struct.TYPE_13__* %71, i32 24, i32 %72)
  %74 = bitcast i8* %73 to %struct.omap_mcbsp*
  store %struct.omap_mcbsp* %74, %struct.omap_mcbsp** %5, align 8
  %75 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %76 = icmp ne %struct.omap_mcbsp* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %124

80:                                               ; preds = %69
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %85 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %4, align 8
  %87 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %88 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %87, i32 0, i32 0
  store %struct.omap_mcbsp_platform_data* %86, %struct.omap_mcbsp_platform_data** %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %92 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %91, i32 0, i32 1
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.omap_mcbsp* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i32 @omap_mcbsp_init(%struct.platform_device* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %80
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %124

102:                                              ; preds = %80
  %103 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %104 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %103, i32 0, i32 0
  %105 = load %struct.omap_mcbsp_platform_data*, %struct.omap_mcbsp_platform_data** %104, align 8
  %106 = getelementptr inbounds %struct.omap_mcbsp_platform_data, %struct.omap_mcbsp_platform_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** @SNDRV_PCM_FMTBIT_S16_LE, align 8
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @omap_mcbsp_dai, i32 0, i32 1, i32 0), align 8
  %111 = load i8*, i8** @SNDRV_PCM_FMTBIT_S16_LE, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @omap_mcbsp_dai, i32 0, i32 0, i32 0), align 8
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @devm_snd_soc_register_component(%struct.TYPE_13__* %114, i32* @omap_mcbsp_component, %struct.TYPE_14__* @omap_mcbsp_dai, i32 1)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %124

120:                                              ; preds = %112
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @sdma_pcm_platform_register(%struct.TYPE_13__* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %118, %100, %77, %62, %33
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.omap_mcbsp_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.omap_mcbsp_platform_data*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_mcbsp*) #1

declare dso_local i32 @omap_mcbsp_init(%struct.platform_device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sdma_pcm_platform_register(%struct.TYPE_13__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
