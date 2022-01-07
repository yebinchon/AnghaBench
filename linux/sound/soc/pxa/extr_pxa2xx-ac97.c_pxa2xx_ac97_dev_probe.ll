; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-ac97.c_pxa2xx_ac97_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-ac97.c_pxa2xx_ac97_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8** }
%struct.ac97_controller = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"PXA2xx has only one AC97 port.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PXA2xx AC97 hw probe error (%d)\0A\00", align 1
@pxa2xx_ac97_ops = common dso_local global i32 0, align 4
@AC97_SLOTS_AVAILABLE_ALL = common dso_local global i32 0, align 4
@pxa_ac97_component = common dso_local global i32 0, align 4
@pxa_ac97_dai_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa2xx_ac97_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ac97_controller*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @pxa2xx_ac97_hw_probe(%struct.platform_device* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8** [ %39, %36 ], [ null, %40 ]
  store i8** %42, i8*** %7, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 1
  %45 = load i32, i32* @AC97_SLOTS_AVAILABLE_ALL, align 4
  %46 = load i8**, i8*** %7, align 8
  %47 = call %struct.ac97_controller* @snd_ac97_controller_register(i32* @pxa2xx_ac97_ops, %struct.TYPE_6__* %44, i32 %45, i8** %46)
  store %struct.ac97_controller* %47, %struct.ac97_controller** %5, align 8
  %48 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %49 = call i64 @IS_ERR(%struct.ac97_controller* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %53 = call i32 @PTR_ERR(%struct.ac97_controller* %52)
  store i32 %53, i32* %2, align 4
  br label %64

54:                                               ; preds = %41
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.ac97_controller* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = load i32, i32* @pxa_ac97_dai_driver, align 4
  %61 = load i32, i32* @pxa_ac97_dai_driver, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = call i32 @devm_snd_soc_register_component(%struct.TYPE_6__* %59, i32* @pxa_ac97_component, i32 %60, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %54, %51, %27, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @pxa2xx_ac97_hw_probe(%struct.platform_device*) #1

declare dso_local %struct.ac97_controller* @snd_ac97_controller_register(i32*, %struct.TYPE_6__*, i32, i8**) #1

declare dso_local i64 @IS_ERR(%struct.ac97_controller*) #1

declare dso_local i32 @PTR_ERR(%struct.ac97_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ac97_controller*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
