; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.snd_soc_dai_link* }
%struct.TYPE_13__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.snd_soc_dai_link = type { i32 }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.sof_card_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@is_legacy_cpu = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_EN = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_BYTCHT_EN = common dso_local global i32 0, align 4
@sof_rt5682_quirk = common dso_local global i32 0, align 4
@sof_rt5682_quirk_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pmc_plt_clk_3\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to get MCLK from pmc_plt_clk_3: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not configure MCLK state\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"sof_rt5682_quirk = %lx\0A\00", align 1
@SOF_RT5682_SSP_AMP_MASK = common dso_local global i32 0, align 4
@SOF_RT5682_SSP_AMP_SHIFT = common dso_local global i32 0, align 4
@SOF_RT5682_SSP_CODEC_MASK = common dso_local global i32 0, align 4
@sof_audio_card_rt5682 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SOF_SPEAKER_AMP_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sof_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  %5 = alloca %struct.snd_soc_acpi_mach*, align 8
  %6 = alloca %struct.sof_card_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sof_card_private* @devm_kzalloc(%struct.TYPE_13__* %13, i32 8, i32 %14)
  store %struct.sof_card_private* %15, %struct.sof_card_private** %6, align 8
  %16 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %17 = icmp ne %struct.sof_card_private* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %138

21:                                               ; preds = %1
  %22 = call i64 (...) @soc_intel_is_byt()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i64 (...) @soc_intel_is_cht()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %21
  store i32 1, i32* @is_legacy_cpu, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* @SOF_RT5682_MCLK_EN, align 4
  %29 = load i32, i32* @SOF_RT5682_MCLK_BYTCHT_EN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @SOF_RT5682_SSP_CODEC(i32 2)
  %32 = or i32 %30, %31
  store i32 %32, i32* @sof_rt5682_quirk, align 4
  br label %34

33:                                               ; preds = %24
  store i32 2, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* @sof_rt5682_quirk_table, align 4
  %36 = call i32 @dmi_check_system(i32 %35)
  %37 = load i32, i32* @sof_rt5682_quirk, align 4
  %38 = load i32, i32* @SOF_RT5682_MCLK_BYTCHT_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %34
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @devm_clk_get(%struct.TYPE_13__* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %46 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %48 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %54 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %138

62:                                               ; preds = %41
  %63 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %64 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clk_prepare_enable(i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %138

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* @sof_rt5682_quirk, align 4
  %79 = call i32 @dev_dbg(%struct.TYPE_13__* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @sof_rt5682_quirk, align 4
  %81 = load i32, i32* @SOF_RT5682_SSP_AMP_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @SOF_RT5682_SSP_AMP_SHIFT, align 4
  %84 = ashr i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @sof_rt5682_quirk, align 4
  %86 = load i32, i32* @SOF_RT5682_SSP_CODEC_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 1, %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sof_audio_card_rt5682, i32 0, i32 0), align 8
  %92 = load i32, i32* @sof_rt5682_quirk, align 4
  %93 = load i32, i32* @SOF_SPEAKER_AMP_PRESENT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %75
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sof_audio_card_rt5682, i32 0, i32 0), align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sof_audio_card_rt5682, i32 0, i32 0), align 8
  br label %99

99:                                               ; preds = %96, %75
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.snd_soc_dai_link* @sof_card_dai_links_create(%struct.TYPE_13__* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store %struct.snd_soc_dai_link* %106, %struct.snd_soc_dai_link** %4, align 8
  %107 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %108 = icmp ne %struct.snd_soc_dai_link* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %138

112:                                              ; preds = %99
  %113 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  store %struct.snd_soc_dai_link* %113, %struct.snd_soc_dai_link** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sof_audio_card_rt5682, i32 0, i32 2), align 8
  %114 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %115 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %114, i32 0, i32 0
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sof_audio_card_rt5682, i32 0, i32 1), align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %121, align 8
  store %struct.snd_soc_acpi_mach* %122, %struct.snd_soc_acpi_mach** %5, align 8
  %123 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %124 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_14__* @sof_audio_card_rt5682, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %112
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %138

132:                                              ; preds = %112
  %133 = load %struct.sof_card_private*, %struct.sof_card_private** %6, align 8
  %134 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_14__* @sof_audio_card_rt5682, %struct.sof_card_private* %133)
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @devm_snd_soc_register_card(%struct.TYPE_13__* %136, %struct.TYPE_14__* @sof_audio_card_rt5682)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %132, %130, %109, %69, %52, %18
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.sof_card_private* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @soc_intel_is_byt(...) #1

declare dso_local i64 @soc_intel_is_cht(...) #1

declare dso_local i32 @SOF_RT5682_SSP_CODEC(i32) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local %struct.snd_soc_dai_link* @sof_card_dai_links_create(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_fixup_dai_links_platform_name(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_14__*, %struct.sof_card_private*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
