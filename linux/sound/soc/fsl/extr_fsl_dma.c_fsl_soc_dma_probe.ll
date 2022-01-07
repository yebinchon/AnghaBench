; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_dma.c_fsl_soc_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_dma.c_fsl_soc_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dma_object = type { i32, i32, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"cannot find parent SSI node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not determine resources for %pOF\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@fsl_dma_ops = common dso_local global i32 0, align 4
@fsl_dma_new = common dso_local global i32 0, align 4
@fsl_dma_free_dma_buffers = common dso_local global i32 0, align 4
@REG_SSI_STX0 = common dso_local global i64 0, align 8
@REG_SSI_SRX0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fsl,fifo-depth\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not register platform\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_soc_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_soc_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dma_object*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @find_ssi_node(%struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @of_address_to_resource(%struct.device_node* %25, i32 0, %struct.resource* %7)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %32)
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %117

37:                                               ; preds = %24
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.dma_object* @kzalloc(i32 56, i32 %38)
  store %struct.dma_object* %39, %struct.dma_object** %4, align 8
  %40 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %41 = icmp ne %struct.dma_object* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %117

47:                                               ; preds = %37
  %48 = load i32, i32* @DRV_NAME, align 4
  %49 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %50 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %53 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32* @fsl_dma_ops, i32** %54, align 8
  %55 = load i32, i32* @fsl_dma_new, align 4
  %56 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %57 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @fsl_dma_free_dma_buffers, align 4
  %60 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %61 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_SSI_STX0, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %68 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %67, i32 0, i32 5
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @REG_SSI_SRX0, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %74 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = call i32* @of_get_property(%struct.device_node* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %47
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @be32_to_cpup(i32* %80)
  %82 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %83 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %87

84:                                               ; preds = %47
  %85 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %86 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %85, i32 0, i32 0
  store i32 8, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = call i32 @of_node_put(%struct.device_node* %88)
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %93 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %92, i32 0, i32 3
  %94 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %91, %struct.TYPE_6__* %93, i32* null, i32 0)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %102 = call i32 @kfree(%struct.dma_object* %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %117

104:                                              ; preds = %87
  %105 = load %struct.device_node*, %struct.device_node** %5, align 8
  %106 = call i32 @of_iomap(%struct.device_node* %105, i32 0)
  %107 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %108 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.device_node*, %struct.device_node** %5, align 8
  %110 = call i32 @irq_of_parse_and_map(%struct.device_node* %109, i32 0)
  %111 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %112 = getelementptr inbounds %struct.dma_object, %struct.dma_object* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.dma_object*, %struct.dma_object** %4, align 8
  %116 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %114, %struct.dma_object* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %104, %97, %42, %29, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.device_node* @find_ssi_node(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.dma_object* @kzalloc(i32, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.dma_object*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.dma_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
