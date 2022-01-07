; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5672.c_snd_cht_mc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5672.c_snd_cht_mc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_18__ }
%struct.cht_mc_private = type { i32, i32 }
%struct.acpi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RT5672_I2C_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i2c-%s\00", align 1
@cht_dailink = common dso_local global %struct.TYPE_14__* null, align 8
@snd_soc_card_cht = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"pmc_plt_clk_3\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to get MCLK from pmc_plt_clk_3: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"snd_soc_register_card failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_cht_mc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cht_mc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cht_mc_private*, align 8
  %6 = alloca %struct.snd_soc_acpi_mach*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %12, align 8
  store %struct.snd_soc_acpi_mach* %13, %struct.snd_soc_acpi_mach** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.cht_mc_private* @devm_kzalloc(%struct.TYPE_18__* %15, i32 8, i32 %16)
  store %struct.cht_mc_private* %17, %struct.cht_mc_private** %5, align 8
  %18 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %19 = icmp ne %struct.cht_mc_private* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %132

23:                                               ; preds = %1
  %24 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %25 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RT5672_I2C_DEFAULT, align 4
  %28 = call i32 @strcpy(i32 %26, i32 %27)
  %29 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.acpi_device* @acpi_dev_get_first_match_dev(i32 %31, i32* null, i32 -1)
  store %struct.acpi_device* %32, %struct.acpi_device** %8, align 8
  %33 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %34 = icmp ne %struct.acpi_device* %33, null
  br i1 %34, label %35, label %78

35:                                               ; preds = %23
  %36 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %37 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %40 = call i8* @acpi_dev_name(%struct.acpi_device* %39)
  %41 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = call i32 @put_device(i32* %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %74, %35
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cht_dailink, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cht_dailink, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RT5672_I2C_DEFAULT, align 4
  %60 = call i32 @strcmp(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %50
  %63 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %64 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cht_dailink, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  br label %77

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %45

77:                                               ; preds = %62, %45
  br label %78

78:                                               ; preds = %77, %23
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @snd_soc_card_cht, i32 0, i32 0), align 8
  %81 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %6, align 8
  %82 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_17__* @snd_soc_card_cht, i8* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %132

91:                                               ; preds = %78
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @devm_clk_get(%struct.TYPE_18__* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %96 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %98 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @IS_ERR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %91
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %106 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PTR_ERR(i32 %107)
  %109 = call i32 @dev_err(%struct.TYPE_18__* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %111 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %132

114:                                              ; preds = %91
  %115 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %116 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_17__* @snd_soc_card_cht, %struct.cht_mc_private* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @devm_snd_soc_register_card(%struct.TYPE_18__* %118, %struct.TYPE_17__* @snd_soc_card_cht)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @dev_err(%struct.TYPE_18__* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %132

128:                                              ; preds = %114
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %129, %struct.TYPE_17__* @snd_soc_card_cht)
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %122, %102, %89, %20
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.cht_mc_private* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.acpi_device* @acpi_dev_get_first_match_dev(i32, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @acpi_dev_name(%struct.acpi_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_17__*, %struct.cht_mc_private*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
