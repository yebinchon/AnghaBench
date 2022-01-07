; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_alc5632.c_tegra_alc5632_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_alc5632.c_tegra_alc5632_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.tegra_alc5632 = type { i32, i32 }

@snd_soc_tegra_alc5632 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nvidia,hp-det-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@tegra_alc5632_dai = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Property 'nvidia,i2s-controller' missing or invalid\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_alc5632_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_alc5632_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_alc5632*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_alc5632, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_alc5632* @devm_kzalloc(%struct.TYPE_11__* %13, i32 8, i32 %14)
  store %struct.tegra_alc5632* %15, %struct.tegra_alc5632** %6, align 8
  %16 = load %struct.tegra_alc5632*, %struct.tegra_alc5632** %6, align 8
  %17 = icmp ne %struct.tegra_alc5632* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %136

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_alc5632*, %struct.tegra_alc5632** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_alc5632* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i32 @of_get_named_gpio(%struct.device_node* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = load %struct.tegra_alc5632*, %struct.tegra_alc5632** %6, align 8
  %32 = getelementptr inbounds %struct.tegra_alc5632, %struct.tegra_alc5632* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tegra_alc5632*, %struct.tegra_alc5632** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_alc5632, %struct.tegra_alc5632* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %136

42:                                               ; preds = %21
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %44 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %134

48:                                               ; preds = %42
  %49 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %50 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %134

54:                                               ; preds = %48
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.device_node*, %struct.device_node** %57, align 8
  %59 = call i8* @of_parse_phandle(%struct.device_node* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %134

73:                                               ; preds = %54
  %74 = load %struct.device_node*, %struct.device_node** %4, align 8
  %75 = call i8* @of_parse_phandle(%struct.device_node* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 2), align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 2), align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %73
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %127

89:                                               ; preds = %73
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 2), align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 1), align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load %struct.tegra_alc5632*, %struct.tegra_alc5632** %6, align 8
  %96 = getelementptr inbounds %struct.tegra_alc5632, %struct.tegra_alc5632* %95, i32 0, i32 1
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @tegra_asoc_utils_init(i32* %96, %struct.TYPE_11__* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %118

103:                                              ; preds = %89
  %104 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %105 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  br label %114

113:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %136

114:                                              ; preds = %108
  %115 = load %struct.tegra_alc5632*, %struct.tegra_alc5632** %6, align 8
  %116 = getelementptr inbounds %struct.tegra_alc5632, %struct.tegra_alc5632* %115, i32 0, i32 1
  %117 = call i32 @tegra_asoc_utils_fini(i32* %116)
  br label %118

118:                                              ; preds = %114, %102
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 2), align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @of_node_put(i32* %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 2), align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 1), align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %118, %83
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 0), align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @of_node_put(i32* %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tegra_alc5632_dai, i32 0, i32 0), align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %127, %67, %53, %47
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %113, %39, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.tegra_alc5632* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_alc5632*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @tegra_asoc_utils_init(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

declare dso_local i32 @of_node_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
