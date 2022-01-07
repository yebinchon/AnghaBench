; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl6040_data = type { i64, i32, %struct.TYPE_2__, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl6040_accessory_work = common dso_local global i32 0, align 4
@twl6040_audio_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"twl6040_irq_plug\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"PLUG IRQ request failed: %d\0A\00", align 1
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @twl6040_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.twl6040_data*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.platform_device* @to_platform_device(i32 %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.twl6040_data* @devm_kzalloc(i32 %13, i32 24, i32 %14)
  store %struct.twl6040_data* %15, %struct.twl6040_data** %4, align 8
  %16 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %17 = icmp eq %struct.twl6040_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %24 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %22, %struct.twl6040_data* %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %27 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %26, i32 0, i32 3
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = call i64 @platform_get_irq(%struct.platform_device* %28, i32 0)
  %30 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %31 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %33 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %38 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %75

41:                                               ; preds = %21
  %42 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %43 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* @twl6040_accessory_work, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %48 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.twl6040_data*, %struct.twl6040_data** %4, align 8
  %51 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @twl6040_audio_handler, align 4
  %55 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %56 = load i32, i32* @IRQF_ONESHOT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = call i32 @request_threaded_irq(i32 %53, i32* null, i32 %54, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.snd_soc_component* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %41
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %75

69:                                               ; preds = %41
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %72 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %74 = call i32 @twl6040_init_chip(%struct.snd_soc_component* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %62, %36, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.twl6040_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.twl6040_data*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl6040_init_chip(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
