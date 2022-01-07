; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_max98090.c_tegra_max98090_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_max98090.c_tegra_max98090_probe.c"
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
%struct.tegra_max98090 = type { i32, i32, i32 }

@snd_soc_tegra_max98090 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nvidia,hp-det-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"nvidia,mic-det-gpios\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@tegra_max98090_dai = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"Property 'nvidia,audio-codec' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Property 'nvidia,i2s-controller' missing or invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_max98090_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_max98090_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_max98090*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_card* @snd_soc_tegra_max98090, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_max98090* @devm_kzalloc(%struct.TYPE_12__* %13, i32 12, i32 %14)
  store %struct.tegra_max98090* %15, %struct.tegra_max98090** %6, align 8
  %16 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %17 = icmp ne %struct.tegra_max98090* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %131

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %27 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.tegra_max98090* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i8* @of_get_named_gpio(%struct.device_node* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %131

43:                                               ; preds = %21
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i8* @of_get_named_gpio(%struct.device_node* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %50 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EPROBE_DEFER, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %131

58:                                               ; preds = %43
  %59 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %60 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %129

64:                                               ; preds = %58
  %65 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %66 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %129

70:                                               ; preds = %64
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = call i8* @of_parse_phandle(%struct.device_node* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_max98090_dai, i32 0, i32 2), align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_max98090_dai, i32 0, i32 2), align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %129

85:                                               ; preds = %70
  %86 = load %struct.device_node*, %struct.device_node** %4, align 8
  %87 = call i8* @of_parse_phandle(%struct.device_node* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_max98090_dai, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_max98090_dai, i32 0, i32 0), align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %129

100:                                              ; preds = %85
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_max98090_dai, i32 0, i32 0), align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tegra_max98090_dai, i32 0, i32 1), align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %107 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %106, i32 0, i32 2
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @tegra_asoc_utils_init(i32* %107, %struct.TYPE_12__* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %129

114:                                              ; preds = %100
  %115 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %116 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  br label %125

124:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %131

125:                                              ; preds = %119
  %126 = load %struct.tegra_max98090*, %struct.tegra_max98090** %6, align 8
  %127 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %126, i32 0, i32 2
  %128 = call i32 @tegra_asoc_utils_fini(i32* %127)
  br label %129

129:                                              ; preds = %125, %113, %94, %79, %69, %63
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %124, %55, %40, %18
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.tegra_max98090* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.tegra_max98090*) #1

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

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
