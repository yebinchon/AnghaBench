; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5640.c_tegra_rt5640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5640.c_tegra_rt5640_probe.c"
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
%struct.tegra_rt5640 = type { i32, i32, i32 }

@snd_soc_tegra_rt5640 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nvidia,hp-det-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@tegra_rt5640_dai = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Property 'nvidia,i2s-controller' missing or invalid\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_rt5640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rt5640_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_rt5640*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_rt5640, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_rt5640* @devm_kzalloc(%struct.TYPE_12__* %13, i32 12, i32 %14)
  store %struct.tegra_rt5640* %15, %struct.tegra_rt5640** %6, align 8
  %16 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %17 = icmp ne %struct.tegra_rt5640* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %117

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_rt5640* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %30, i32 0, i32 2
  %32 = call i32 @of_get_named_gpio_flags(%struct.device_node* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0, i32* %31)
  %33 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load i32, i32* @EPROBE_DEFER, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %117

44:                                               ; preds = %21
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %46 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %115

50:                                               ; preds = %44
  %51 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %52 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %115

56:                                               ; preds = %50
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call i8* @of_parse_phandle(%struct.device_node* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_rt5640_dai, i32 0, i32 2), align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_rt5640_dai, i32 0, i32 2), align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %115

71:                                               ; preds = %56
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = call i8* @of_parse_phandle(%struct.device_node* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_rt5640_dai, i32 0, i32 0), align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_rt5640_dai, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %115

86:                                               ; preds = %71
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_rt5640_dai, i32 0, i32 0), align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_rt5640_dai, i32 0, i32 1), align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %93 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %92, i32 0, i32 1
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @tegra_asoc_utils_init(i32* %93, %struct.TYPE_12__* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %115

100:                                              ; preds = %86
  %101 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %102 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  br label %111

110:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %105
  %112 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %6, align 8
  %113 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %112, i32 0, i32 1
  %114 = call i32 @tegra_asoc_utils_fini(i32* %113)
  br label %115

115:                                              ; preds = %111, %99, %80, %65, %55, %49
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %110, %41, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.tegra_rt5640* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_rt5640*) #1

declare dso_local i32 @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

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
