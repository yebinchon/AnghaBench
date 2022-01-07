; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm9712.c_tegra_wm9712_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm9712.c_tegra_wm9712_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.tegra_wm9712 = type { i32, i32 }

@snd_soc_tegra_wm9712 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wm9712-codec\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate wm9712 platform device\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"nvidia,ac97-controller\00", align 1
@tegra_wm9712_dai = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [54 x i8] c"Property 'nvidia,ac97-controller' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_wm9712_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wm9712_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_wm9712*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_wm9712, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_wm9712* @devm_kzalloc(%struct.TYPE_10__* %13, i32 8, i32 %14)
  store %struct.tegra_wm9712* %15, %struct.tegra_wm9712** %6, align 8
  %16 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %17 = icmp ne %struct.tegra_wm9712* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %124

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_wm9712* %27)
  %29 = call i32 @platform_device_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1)
  %30 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %21
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %124

42:                                               ; preds = %21
  %43 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @platform_device_add(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %118

50:                                               ; preds = %42
  %51 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %52 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %113

56:                                               ; preds = %50
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %58 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %113

62:                                               ; preds = %56
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = call i64 @of_parse_phandle(%struct.device_node* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tegra_wm9712_dai, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tegra_wm9712_dai, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %62
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %113

77:                                               ; preds = %62
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tegra_wm9712_dai, i32 0, i32 0), align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tegra_wm9712_dai, i32 0, i32 1), align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %84 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %83, i32 0, i32 1
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @tegra_asoc_utils_init(i32* %84, %struct.TYPE_10__* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %113

91:                                               ; preds = %77
  %92 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %93 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %92, i32 0, i32 1
  %94 = call i32 @tegra_asoc_utils_set_ac97_rate(i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %109

98:                                               ; preds = %91
  %99 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %100 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  br label %109

108:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %124

109:                                              ; preds = %103, %97
  %110 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %111 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %110, i32 0, i32 1
  %112 = call i32 @tegra_asoc_utils_fini(i32* %111)
  br label %113

113:                                              ; preds = %109, %90, %71, %61, %55
  %114 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %115 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @platform_device_del(i32 %116)
  br label %118

118:                                              ; preds = %113, %49
  %119 = load %struct.tegra_wm9712*, %struct.tegra_wm9712** %6, align 8
  %120 = getelementptr inbounds %struct.tegra_wm9712, %struct.tegra_wm9712* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @platform_device_put(i32 %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %118, %108, %36, %18
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.tegra_wm9712* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_wm9712*) #1

declare dso_local i32 @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @platform_device_add(i32) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @tegra_asoc_utils_init(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @tegra_asoc_utils_set_ac97_rate(i32*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

declare dso_local i32 @platform_device_del(i32) #1

declare dso_local i32 @platform_device_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
