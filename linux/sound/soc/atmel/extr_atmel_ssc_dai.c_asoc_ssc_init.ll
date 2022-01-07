; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_asoc_ssc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_asoc_ssc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ssc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@atmel_ssc_component = common dso_local global i32 0, align 4
@atmel_ssc_dai = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not register DAI: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not register PCM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @asoc_ssc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_ssc_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ssc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ssc_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.ssc_device* %7, %struct.ssc_device** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @devm_snd_soc_register_component(%struct.device* %8, i32* @atmel_ssc_component, i32* @atmel_ssc_dai, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.ssc_device*, %struct.ssc_device** %4, align 8
  %19 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @atmel_pcm_dma_platform_register(%struct.device* %25)
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @atmel_pcm_pdc_platform_register(%struct.device* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ssc_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @atmel_pcm_dma_platform_register(%struct.device*) #1

declare dso_local i32 @atmel_pcm_pdc_platform_register(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
