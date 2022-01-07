; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_sgtl5000.c_tegra_sgtl5000_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_sgtl5000.c_tegra_sgtl5000_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.tegra_sgtl5000 = type { i32 }

@snd_soc_tegra_sgtl5000 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@tegra_sgtl5000_dai = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,i2s-controller' missing/invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_sgtl5000_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sgtl5000_driver_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_sgtl5000*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_sgtl5000, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_sgtl5000* @devm_kzalloc(%struct.TYPE_12__* %13, i32 4, i32 %14)
  store %struct.tegra_sgtl5000* %15, %struct.tegra_sgtl5000** %6, align 8
  %16 = load %struct.tegra_sgtl5000*, %struct.tegra_sgtl5000** %6, align 8
  %17 = icmp ne %struct.tegra_sgtl5000* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %119

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_sgtl5000*, %struct.tegra_sgtl5000** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_sgtl5000* %27)
  %29 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %30 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %117

34:                                               ; preds = %21
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %36 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %117

40:                                               ; preds = %34
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i8* @of_parse_phandle(%struct.device_node* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %117

56:                                               ; preds = %40
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call i8* @of_parse_phandle(%struct.device_node* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %56
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %110

72:                                               ; preds = %56
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 1), align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = load %struct.tegra_sgtl5000*, %struct.tegra_sgtl5000** %6, align 8
  %79 = getelementptr inbounds %struct.tegra_sgtl5000, %struct.tegra_sgtl5000* %78, i32 0, i32 0
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @tegra_asoc_utils_init(i32* %79, %struct.TYPE_12__* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %101

86:                                               ; preds = %72
  %87 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %88 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %97

96:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %119

97:                                               ; preds = %91
  %98 = load %struct.tegra_sgtl5000*, %struct.tegra_sgtl5000** %6, align 8
  %99 = getelementptr inbounds %struct.tegra_sgtl5000, %struct.tegra_sgtl5000* %98, i32 0, i32 0
  %100 = call i32 @tegra_asoc_utils_fini(i32* %99)
  br label %101

101:                                              ; preds = %97, %85
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @of_node_put(i32* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 1), align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %66
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @of_node_put(i32* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_sgtl5000_dai, i32 0, i32 0), align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %110, %50, %39, %33
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %96, %18
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.tegra_sgtl5000* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_sgtl5000*) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @tegra_asoc_utils_init(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

declare dso_local i32 @of_node_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
