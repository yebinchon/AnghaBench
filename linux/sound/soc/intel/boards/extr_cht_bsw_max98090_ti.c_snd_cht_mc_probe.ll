; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_snd_cht_mc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_snd_cht_mc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.device*, i64, i32* }
%struct.device = type { %struct.snd_soc_acpi_mach*, i32 }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.platform_device = type { %struct.device }
%struct.dmi_system_id = type { i64 }
%struct.cht_mc_private = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cht_max98090_quirk_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"104C227E\00", align 1
@snd_soc_card_cht = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@acpi_max98090_gpios = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to add GPIO mapping table\0A\00", align 1
@QUIRK_PMC_PLT_CLK_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"pmc_plt_clk_0\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pmc_plt_clk_3\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to get MCLK from %s: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MCLK enable error: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"snd_soc_register_card failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_cht_mc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cht_mc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dmi_system_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cht_mc_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_soc_acpi_mach*, align 8
  %10 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cht_mc_private* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.cht_mc_private* %16, %struct.cht_mc_private** %7, align 8
  %17 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %18 = icmp ne %struct.cht_mc_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %145

22:                                               ; preds = %1
  %23 = load i32, i32* @cht_max98090_quirk_table, align 4
  %24 = call %struct.dmi_system_id* @dmi_first_match(i32 %23)
  store %struct.dmi_system_id* %24, %struct.dmi_system_id** %4, align 8
  %25 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %26 = icmp ne %struct.dmi_system_id* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %29 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %32 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = call i32 @acpi_dev_found(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %36 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %38 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %33
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @snd_soc_card_cht, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @snd_soc_card_cht, i32 0, i32 1), align 8
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @acpi_max98090_gpios, align 4
  %46 = call i32 @devm_acpi_dev_add_driver_gpios(i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  store %struct.device* %55, %struct.device** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @snd_soc_card_cht, i32 0, i32 0), align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %58, align 8
  store %struct.snd_soc_acpi_mach* %59, %struct.snd_soc_acpi_mach** %9, align 8
  %60 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %9, align 8
  %61 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_8__* @snd_soc_card_cht, i8* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %145

70:                                               ; preds = %53
  %71 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %72 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_8__* @snd_soc_card_cht, %struct.cht_mc_private* %71)
  %73 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %74 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @QUIRK_PMC_PLT_CLK_0, align 4
  %77 = sext i32 %76 to i64
  %78 = and i64 %75, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %82

81:                                               ; preds = %70
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %82

82:                                               ; preds = %81, %80
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @devm_clk_get(%struct.device* %84, i8* %85)
  %87 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %88 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %90 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %82
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %99 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PTR_ERR(i32 %100)
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %97, i32 %101)
  %103 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %104 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %145

107:                                              ; preds = %82
  %108 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %109 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @QUIRK_PMC_PLT_CLK_0, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %110, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %107
  %116 = load %struct.cht_mc_private*, %struct.cht_mc_private** %7, align 8
  %117 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @clk_prepare_enable(i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %6, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %145

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %107
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @devm_snd_soc_register_card(%struct.device* %131, %struct.TYPE_8__* @snd_soc_card_cht)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %145

141:                                              ; preds = %129
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.TYPE_8__* @snd_soc_card_cht)
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %135, %122, %94, %68, %19
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.cht_mc_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i32 @acpi_dev_found(i8*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_8__*, %struct.cht_mc_private*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
