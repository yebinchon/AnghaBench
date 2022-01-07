; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_trimslice.c_tegra_snd_trimslice_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_trimslice.c_tegra_snd_trimslice_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.tegra_trimslice = type { i32 }

@snd_soc_trimslice = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@trimslice_tlv320aic23_dai = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Property 'nvidia,i2s-controller' missing or invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_snd_trimslice_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_snd_trimslice_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_trimslice*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_trimslice, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_trimslice* @devm_kzalloc(%struct.TYPE_12__* %13, i32 4, i32 %14)
  store %struct.tegra_trimslice* %15, %struct.tegra_trimslice** %6, align 8
  %16 = load %struct.tegra_trimslice*, %struct.tegra_trimslice** %6, align 8
  %17 = icmp ne %struct.tegra_trimslice* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_trimslice*, %struct.tegra_trimslice** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_trimslice* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i8* @of_parse_phandle(%struct.device_node* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @trimslice_tlv320aic23_dai, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @trimslice_tlv320aic23_dai, i32 0, i32 2), align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %21
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %87

43:                                               ; preds = %21
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i8* @of_parse_phandle(%struct.device_node* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @trimslice_tlv320aic23_dai, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @trimslice_tlv320aic23_dai, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %54, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %87

58:                                               ; preds = %43
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @trimslice_tlv320aic23_dai, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @trimslice_tlv320aic23_dai, i32 0, i32 1), align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.tegra_trimslice*, %struct.tegra_trimslice** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_trimslice, %struct.tegra_trimslice* %64, i32 0, i32 0
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @tegra_asoc_utils_init(i32* %65, %struct.TYPE_12__* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %87

72:                                               ; preds = %58
  %73 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %74 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %89

83:                                               ; preds = %77
  %84 = load %struct.tegra_trimslice*, %struct.tegra_trimslice** %6, align 8
  %85 = getelementptr inbounds %struct.tegra_trimslice, %struct.tegra_trimslice* %84, i32 0, i32 0
  %86 = call i32 @tegra_asoc_utils_fini(i32* %85)
  br label %87

87:                                               ; preds = %83, %71, %52, %37
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %82, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.tegra_trimslice* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_trimslice*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @tegra_asoc_utils_init(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
