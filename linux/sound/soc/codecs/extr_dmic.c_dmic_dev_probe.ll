; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_dmic.c_dmic_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_dmic.c_dmic_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_driver = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@dmic_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"num-channels\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_dmic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dmic_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmic_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_dai_driver* @dmic_dai, %struct.snd_soc_dai_driver** %6, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @of_property_read_u32(i64 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %20, %12
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %62

39:                                               ; preds = %33
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.snd_soc_dai_driver* @devm_kzalloc(%struct.TYPE_5__* %41, i32 4, i32 %42)
  store %struct.snd_soc_dai_driver* %43, %struct.snd_soc_dai_driver** %6, align 8
  %44 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %45 = icmp ne %struct.snd_soc_dai_driver* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %39
  %50 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %51 = call i32 @memcpy(%struct.snd_soc_dai_driver* %50, %struct.snd_soc_dai_driver* @dmic_dai, i32 4)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %27
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %61 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %59, i32* @soc_dmic, %struct.snd_soc_dai_driver* %60, i32 1)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %46, %36, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local %struct.snd_soc_dai_driver* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, %struct.snd_soc_dai_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
