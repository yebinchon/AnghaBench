; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8016_sbc.c_apq8016_sbc_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8016_sbc.c_apq8016_sbc_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.snd_soc_card = type { i32, i32, %struct.device* }
%struct.apq8016_sbc_data = type { %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@apq8016_sbc_dapm_widgets = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error resolving dai links: %ld\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mic-iomux\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"spkr-iomux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @apq8016_sbc_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apq8016_sbc_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.apq8016_sbc_data*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.snd_soc_card* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.snd_soc_card* %12, %struct.snd_soc_card** %5, align 8
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %14 = icmp ne %struct.snd_soc_card* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 2
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load i32, i32* @apq8016_sbc_dapm_widgets, align 4
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @apq8016_sbc_dapm_widgets, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %30 = call %struct.apq8016_sbc_data* @apq8016_sbc_parse_of(%struct.snd_soc_card* %29)
  store %struct.apq8016_sbc_data* %30, %struct.apq8016_sbc_data** %6, align 8
  %31 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %32 = call i64 @IS_ERR(%struct.apq8016_sbc_data* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %18
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.apq8016_sbc_data* %37)
  %39 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.apq8016_sbc_data* %40)
  store i32 %41, i32* %2, align 4
  br label %90

42:                                               ; preds = %18
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = call i8* @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = bitcast i8* %48 to %struct.apq8016_sbc_data*
  %50 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %51 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %50, i32 0, i32 1
  store %struct.apq8016_sbc_data* %49, %struct.apq8016_sbc_data** %51, align 8
  %52 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %53 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %52, i32 0, i32 1
  %54 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %53, align 8
  %55 = call i64 @IS_ERR(%struct.apq8016_sbc_data* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %59 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %58, i32 0, i32 1
  %60 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %59, align 8
  %61 = call i32 @PTR_ERR(%struct.apq8016_sbc_data* %60)
  store i32 %61, i32* %2, align 4
  br label %90

62:                                               ; preds = %42
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %65, %struct.resource** %7, align 8
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = call i8* @devm_ioremap_resource(%struct.device* %66, %struct.resource* %67)
  %69 = bitcast i8* %68 to %struct.apq8016_sbc_data*
  %70 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %71 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %70, i32 0, i32 0
  store %struct.apq8016_sbc_data* %69, %struct.apq8016_sbc_data** %71, align 8
  %72 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %73 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %72, i32 0, i32 0
  %74 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %73, align 8
  %75 = call i64 @IS_ERR(%struct.apq8016_sbc_data* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %79 = getelementptr inbounds %struct.apq8016_sbc_data, %struct.apq8016_sbc_data* %78, i32 0, i32 0
  %80 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.apq8016_sbc_data* %80)
  store i32 %81, i32* %2, align 4
  br label %90

82:                                               ; preds = %62
  %83 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %84 = load %struct.apq8016_sbc_data*, %struct.apq8016_sbc_data** %6, align 8
  %85 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %83, %struct.apq8016_sbc_data* %84)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %89 = call i32 @devm_snd_soc_register_card(%struct.device* %87, %struct.snd_soc_card* %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %82, %77, %57, %34, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.snd_soc_card* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.apq8016_sbc_data* @apq8016_sbc_parse_of(%struct.snd_soc_card*) #1

declare dso_local i64 @IS_ERR(%struct.apq8016_sbc_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.apq8016_sbc_data*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.apq8016_sbc_data*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
