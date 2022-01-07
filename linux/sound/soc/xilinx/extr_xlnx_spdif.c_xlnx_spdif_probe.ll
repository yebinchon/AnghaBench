; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_driver = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.spdif_dev_data = type { i64, i64, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"s_axi_aclk\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get s_axi_aclk(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to enable s_axi_aclk(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"xlnx,spdif-mode\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot get SPDIF mode\0A\00", align 1
@xlnx_spdif_tx_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"No IRQ resource found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@xlnx_spdifrx_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"XLNX_SPDIF_RX\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"spdif rx irq request failed\0A\00", align 1
@xlnx_spdif_rx_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"xlnx,aud_clk_i\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"cannot get aud_clk_i value\0A\00", align 1
@xlnx_spdif_component = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"SPDIF component registration failed\0A\00", align 1
@XSPDIF_SOFT_RESET_VALUE = common dso_local global i32 0, align 4
@XSPDIF_SOFT_RESET_REG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"%s DAI registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlnx_spdif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_spdif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca %struct.spdif_dev_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %9, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.spdif_dev_data* @devm_kzalloc(%struct.device* %15, i32 40, i32 %16)
  store %struct.spdif_dev_data* %17, %struct.spdif_dev_data** %7, align 8
  %18 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %19 = icmp ne %struct.spdif_dev_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %156

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = call i64 @devm_clk_get(%struct.device* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %27 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %29 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %35 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @PTR_ERR(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %156

42:                                               ; preds = %23
  %43 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %44 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @clk_prepare_enable(i64 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %156

54:                                               ; preds = %42
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %55, i32 0)
  %57 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %58 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %60 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @IS_ERR(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %66 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @PTR_ERR(i64 %67)
  store i32 %68, i32* %4, align 4
  br label %150

69:                                               ; preds = %54
  %70 = load %struct.device_node*, %struct.device_node** %9, align 8
  %71 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %72 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %71, i32 0, i32 4
  %73 = call i32 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %150

79:                                               ; preds = %69
  %80 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %81 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store %struct.snd_soc_dai_driver* @xlnx_spdif_tx_dai, %struct.snd_soc_dai_driver** %6, align 8
  br label %115

85:                                               ; preds = %79
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load i32, i32* @IORESOURCE_IRQ, align 4
  %88 = call %struct.resource* @platform_get_resource(%struct.platform_device* %86, i32 %87, i32 0)
  store %struct.resource* %88, %struct.resource** %5, align 8
  %89 = load %struct.resource*, %struct.resource** %5, align 8
  %90 = icmp ne %struct.resource* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.device*, %struct.device** %8, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %150

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %8, align 8
  %98 = load %struct.resource*, %struct.resource** %5, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @xlnx_spdifrx_irq_handler, align 4
  %102 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %103 = call i32 @devm_request_irq(%struct.device* %97, i32 %100, i32 %101, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.spdif_dev_data* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %150

111:                                              ; preds = %96
  %112 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %113 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %112, i32 0, i32 3
  %114 = call i32 @init_waitqueue_head(i32* %113)
  store %struct.snd_soc_dai_driver* @xlnx_spdif_rx_dai, %struct.snd_soc_dai_driver** %6, align 8
  br label %115

115:                                              ; preds = %111, %84
  %116 = load %struct.device_node*, %struct.device_node** %9, align 8
  %117 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %118 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %117, i32 0, i32 2
  %119 = call i32 @of_property_read_u32(%struct.device_node* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.device*, %struct.device** %8, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %150

125:                                              ; preds = %115
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %128 = call i32 @dev_set_drvdata(%struct.device* %126, %struct.spdif_dev_data* %127)
  %129 = load %struct.device*, %struct.device** %8, align 8
  %130 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %131 = call i32 @devm_snd_soc_register_component(%struct.device* %129, i32* @xlnx_spdif_component, %struct.snd_soc_dai_driver* %130, i32 1)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.device*, %struct.device** %8, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %150

137:                                              ; preds = %125
  %138 = load i32, i32* @XSPDIF_SOFT_RESET_VALUE, align 4
  %139 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %140 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @XSPDIF_SOFT_RESET_REG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  %145 = load %struct.device*, %struct.device** %8, align 8
  %146 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %147 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dev_info(%struct.device* %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %137, %134, %122, %106, %91, %76, %64
  %151 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %7, align 8
  %152 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @clk_disable_unprepare(i64 %153)
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %150, %49, %33, %20
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.spdif_dev_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.spdif_dev_data*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.spdif_dev_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
