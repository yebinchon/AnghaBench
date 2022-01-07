; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_max98927.c_kabylake_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_max98927.c_kabylake_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.kbl_rt5663_private = type { i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kabylake_audio_card = common dso_local global %struct.snd_soc_card* null, align 8
@constraints_dmic_2ch = common dso_local global i32 0, align 4
@constraints_dmic_channels = common dso_local global i32 0, align 4
@dmic_constraints = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ssp1_mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get ssp1_sclk, defer probe\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to get ssp1_mclk with err:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ssp1_sclk\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to get ssp1_sclk with err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kabylake_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kbl_rt5663_private*, align 8
  %5 = alloca %struct.snd_soc_acpi_mach*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.kbl_rt5663_private* @devm_kzalloc(%struct.TYPE_10__* %8, i32 24, i32 %9)
  store %struct.kbl_rt5663_private* %10, %struct.kbl_rt5663_private** %4, align 8
  %11 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %12 = icmp ne %struct.kbl_rt5663_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %116

16:                                               ; preds = %1
  %17 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %18 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.snd_soc_card*
  store %struct.snd_soc_card* %25, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %29, align 8
  %30 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %31 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %32 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %30, %struct.kbl_rt5663_private* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %35, align 8
  store %struct.snd_soc_acpi_mach* %36, %struct.snd_soc_acpi_mach** %5, align 8
  %37 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %38 = icmp ne %struct.snd_soc_acpi_mach* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %16
  %40 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32* @constraints_dmic_2ch, i32* @constraints_dmic_channels
  store i32* %46, i32** @dmic_constraints, align 8
  br label %47

47:                                               ; preds = %39, %16
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i8* @devm_clk_get(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %52 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %54 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %47
  %59 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %60 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_info(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EPROBE_DEFER, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %116

73:                                               ; preds = %58
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %116

79:                                               ; preds = %47
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i8* @devm_clk_get(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %84 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %86 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %79
  %91 = load %struct.kbl_rt5663_private*, %struct.kbl_rt5663_private** %4, align 8
  %92 = getelementptr inbounds %struct.kbl_rt5663_private, %struct.kbl_rt5663_private* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_info(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @EPROBE_DEFER, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %116

105:                                              ; preds = %90
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @dev_err(%struct.TYPE_10__* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %116

111:                                              ; preds = %79
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.snd_soc_card*, %struct.snd_soc_card** @kabylake_audio_card, align 8
  %115 = call i32 @devm_snd_soc_register_card(%struct.TYPE_10__* %113, %struct.snd_soc_card* %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %111, %105, %99, %73, %67, %13
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.kbl_rt5663_private* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.kbl_rt5663_private*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_10__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
