; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_rt298.c_broxton_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_rt298.c_broxton_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_8__ = type { i64 }
%struct.bxt_rt286_private = type { i32 }
%struct.snd_soc_card = type { %struct.TYPE_13__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@broxton_rt298_dais = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"i2c-INT343A:00\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"broxton-rt298\00", align 1
@PLATFORM_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SSP5-Codec\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SSP5 Pin\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"geminilake-rt298\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SSP2-Codec\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SSP2 Pin\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @broxton_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broxton_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bxt_rt286_private*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_acpi_mach*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.snd_soc_card*
  store %struct.snd_soc_card* %15, %struct.snd_soc_card** %5, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %86, %1
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @broxton_rt298_dais, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %16
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2C_NAME_SIZE, align 4
  %33 = call i32 @strncmp(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %85, label %35

35:                                               ; preds = %21
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PLATFORM_NAME_SIZE, align 4
  %40 = call i32 @strncmp(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %35
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  br label %84

59:                                               ; preds = %35
  %60 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %61 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PLATFORM_NAME_SIZE, align 4
  %64 = call i32 @strncmp(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %59
  %67 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %68 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %73, align 8
  %74 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %75 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %82, align 8
  br label %83

83:                                               ; preds = %66, %59
  br label %84

84:                                               ; preds = %83, %42
  br label %85

85:                                               ; preds = %84, %21
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %16

89:                                               ; preds = %16
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.bxt_rt286_private* @devm_kzalloc(%struct.TYPE_13__* %91, i32 4, i32 %92)
  store %struct.bxt_rt286_private* %93, %struct.bxt_rt286_private** %4, align 8
  %94 = load %struct.bxt_rt286_private*, %struct.bxt_rt286_private** %4, align 8
  %95 = icmp ne %struct.bxt_rt286_private* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %130

99:                                               ; preds = %89
  %100 = load %struct.bxt_rt286_private*, %struct.bxt_rt286_private** %4, align 8
  %101 = getelementptr inbounds %struct.bxt_rt286_private, %struct.bxt_rt286_private* %100, i32 0, i32 0
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %106 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %105, i32 0, i32 0
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %106, align 8
  %107 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %108 = load %struct.bxt_rt286_private*, %struct.bxt_rt286_private** %4, align 8
  %109 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %107, %struct.bxt_rt286_private* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %112, align 8
  store %struct.snd_soc_acpi_mach* %113, %struct.snd_soc_acpi_mach** %6, align 8
  %114 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %6, align 8
  %115 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %7, align 8
  %118 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @snd_soc_fixup_dai_links_platform_name(%struct.snd_soc_card* %118, i8* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %130

125:                                              ; preds = %99
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %129 = call i32 @devm_snd_soc_register_card(%struct.TYPE_13__* %127, %struct.snd_soc_card* %128)
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %123, %96
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.bxt_rt286_private* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.bxt_rt286_private*) #1

declare dso_local i32 @snd_soc_fixup_dai_links_platform_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_13__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
