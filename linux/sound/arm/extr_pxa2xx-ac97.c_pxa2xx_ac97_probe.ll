; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i64* }
%struct.snd_card = type { i8*, i32, i32, i32 }
%struct.snd_ac97_bus = type { i32* }
%struct.snd_ac97_template = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"PXA2xx has only one AC97 port.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pxa2xx_ac97_ops = common dso_local global i32 0, align 4
@pxa2xx_ac97_ac97 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa2xx_ac97_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ac97_bus*, align 8
  %6 = alloca %struct.snd_ac97_template, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = call i32 @dev_err(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %129

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %27 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %28 = load i32, i32* @THIS_MODULE, align 4
  %29 = call i32 @snd_card_new(%struct.TYPE_7__* %25, i32 %26, i32 %27, i32 %28, i32 0, %struct.snd_card** %4)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %122

33:                                               ; preds = %23
  %34 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %35 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlcpy(i32 %36, i8* %42, i32 4)
  %44 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %45 = call i32 @pxa2xx_ac97_pcm_new(%struct.snd_card* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %122

49:                                               ; preds = %33
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @pxa2xx_ac97_hw_probe(%struct.platform_device* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %122

55:                                               ; preds = %49
  %56 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %57 = call i32 @snd_ac97_bus(%struct.snd_card* %56, i32 0, i32* @pxa2xx_ac97_ops, i32* null, %struct.snd_ac97_bus** %5)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %119

61:                                               ; preds = %55
  %62 = call i32 @memset(%struct.snd_ac97_template* %6, i32 0, i32 4)
  %63 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %5, align 8
  %64 = call i32 @snd_ac97_mixer(%struct.snd_ac97_bus* %63, %struct.snd_ac97_template* %6, i32* @pxa2xx_ac97_ac97)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %119

68:                                               ; preds = %61
  %69 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %70 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @pxa2xx_ac97_ac97, align 4
  %73 = call i8* @snd_ac97_get_short_name(i32 %72)
  %74 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %71, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %76 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %85 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %77, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = icmp ne %struct.TYPE_6__* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %68
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %5, align 8
  %99 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @snd_ac97_dev_add_pdata(i32 %102, i64 %107)
  br label %109

109:                                              ; preds = %97, %90, %68
  %110 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %111 = call i32 @snd_card_register(%struct.snd_card* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.snd_card* %116)
  store i32 0, i32* %2, align 4
  br label %131

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %67, %60
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @pxa2xx_ac97_hw_remove(%struct.platform_device* %120)
  br label %122

122:                                              ; preds = %119, %54, %48, %32
  %123 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %124 = icmp ne %struct.snd_card* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %127 = call i32 @snd_card_free(%struct.snd_card* %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %17
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %114
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @snd_card_new(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @pxa2xx_ac97_pcm_new(%struct.snd_card*) #1

declare dso_local i32 @pxa2xx_ac97_hw_probe(%struct.platform_device*) #1

declare dso_local i32 @snd_ac97_bus(%struct.snd_card*, i32, i32*, i32*, %struct.snd_ac97_bus**) #1

declare dso_local i32 @memset(%struct.snd_ac97_template*, i32, i32) #1

declare dso_local i32 @snd_ac97_mixer(%struct.snd_ac97_bus*, %struct.snd_ac97_template*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i8* @snd_ac97_get_short_name(i32) #1

declare dso_local i32 @snd_ac97_dev_add_pdata(i32, i64) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.snd_card*) #1

declare dso_local i32 @pxa2xx_ac97_hw_remove(%struct.platform_device*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
