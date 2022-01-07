; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-audio.c_sirf_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-audio.c_sirf_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.sirf_audio_card = type { i8*, i8* }

@snd_soc_sirf_audio_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sirf,audio-platform\00", align 1
@sirf_audio_dai_link = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"sirf,audio-codec\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"spk-pa-gpios\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hp-pa-gpios\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"SPA_PA_SD\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to request GPIO_%d for reset: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HP_PA_SD\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card() failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirf_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.sirf_audio_card*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @snd_soc_sirf_audio_card, %struct.snd_soc_card** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sirf_audio_card* @devm_kzalloc(%struct.TYPE_13__* %8, i32 16, i32 %9)
  store %struct.sirf_audio_card* %10, %struct.sirf_audio_card** %5, align 8
  %11 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %12 = icmp eq %struct.sirf_audio_card* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %135

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @of_parse_phandle(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sirf_audio_dai_link, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i8* %21, i8** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @of_parse_phandle(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sirf_audio_dai_link, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i8* %31, i8** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @of_parse_phandle(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sirf_audio_dai_link, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i8* %41, i8** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @of_get_named_gpio(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %52 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %53 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @of_get_named_gpio(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %59 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %60 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %62 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @gpio_is_valid(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %16
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %70 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %73 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %68, i8* %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %80 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %135

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %16
  %88 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %89 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @gpio_is_valid(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %97 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %100 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %95, i8* %98, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %93
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %107 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32, i32* %6, align 4
  %111 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %135

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %118 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %117, i32 0, i32 0
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %118, align 8
  %119 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %120 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %5, align 8
  %121 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %119, %struct.sirf_audio_card* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %125 = call i32 @devm_snd_soc_register_card(%struct.TYPE_13__* %123, %struct.snd_soc_card* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_err(%struct.TYPE_13__* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %114
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %103, %76, %13
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.sirf_audio_card* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i8* @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i8*) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_13__*, i8*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.sirf_audio_card*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_13__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
