; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-ac97.c_ep93xx_ac97_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_ac97_info = type { i32*, i32, i32, i32 }
%struct.platform_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ep93xx_ac97_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@ep93xx_ac97_info = common dso_local global %struct.ep93xx_ac97_info* null, align 8
@ep93xx_ac97_ops = common dso_local global i32 0, align 4
@ep93xx_ac97_component = common dso_local global i32 0, align 4
@ep93xx_ac97_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_ac97_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_ac97_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xx_ac97_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ep93xx_ac97_info* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.ep93xx_ac97_info* %10, %struct.ep93xx_ac97_info** %4, align 8
  %11 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %12 = icmp ne %struct.ep93xx_ac97_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %20 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %22 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %28 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %105

31:                                               ; preds = %16
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @platform_get_irq(%struct.platform_device* %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  store i32 %45, i32* %2, align 4
  br label %105

46:                                               ; preds = %31
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ep93xx_ac97_interrupt, align 4
  %51 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %56 = call i32 @devm_request_irq(i32* %48, i32 %49, i32 %50, i32 %51, i32 %54, %struct.ep93xx_ac97_info* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %102

60:                                               ; preds = %46
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %64 = call i32 @dev_set_drvdata(i32* %62, %struct.ep93xx_ac97_info* %63)
  %65 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %66 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %65, i32 0, i32 2
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %69 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %68, i32 0, i32 1
  %70 = call i32 @init_completion(i32* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %74 = getelementptr inbounds %struct.ep93xx_ac97_info, %struct.ep93xx_ac97_info* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  store %struct.ep93xx_ac97_info* %75, %struct.ep93xx_ac97_info** @ep93xx_ac97_info, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load %struct.ep93xx_ac97_info*, %struct.ep93xx_ac97_info** %4, align 8
  %78 = call i32 @platform_set_drvdata(%struct.platform_device* %76, %struct.ep93xx_ac97_info* %77)
  %79 = call i32 @snd_soc_set_ac97_ops(i32* @ep93xx_ac97_ops)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %60
  br label %102

83:                                               ; preds = %60
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @snd_soc_register_component(i32* %85, i32* @ep93xx_ac97_component, i32* @ep93xx_ac97_dai, i32 1)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %102

90:                                               ; preds = %83
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @devm_ep93xx_pcm_platform_register(i32* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %105

98:                                               ; preds = %96
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @snd_soc_unregister_component(i32* %100)
  br label %102

102:                                              ; preds = %98, %89, %82, %59
  store %struct.ep93xx_ac97_info* null, %struct.ep93xx_ac97_info** @ep93xx_ac97_info, align 8
  %103 = call i32 @snd_soc_set_ac97_ops(i32* null)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %97, %44, %26, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ep93xx_ac97_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.ep93xx_ac97_info*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.ep93xx_ac97_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ep93xx_ac97_info*) #1

declare dso_local i32 @snd_soc_set_ac97_ops(i32*) #1

declare dso_local i32 @snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @devm_ep93xx_pcm_platform_register(i32*) #1

declare dso_local i32 @snd_soc_unregister_component(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
