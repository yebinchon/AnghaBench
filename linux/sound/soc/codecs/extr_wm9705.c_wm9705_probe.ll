; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9705.c_wm9705_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9705.c_wm9705_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm9705_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_component_dev_wm9705 = common dso_local global i32 0, align 4
@wm9705_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm9705_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9705_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm9705_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wm9705_priv* @devm_kzalloc(i32* %6, i32 4, i32 %7)
  store %struct.wm9705_priv* %8, %struct.wm9705_priv** %4, align 8
  %9 = load %struct.wm9705_priv*, %struct.wm9705_priv** %4, align 8
  %10 = icmp eq %struct.wm9705_priv* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_get_platdata(i32* %16)
  %18 = load %struct.wm9705_priv*, %struct.wm9705_priv** %4, align 8
  %19 = getelementptr inbounds %struct.wm9705_priv, %struct.wm9705_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.wm9705_priv*, %struct.wm9705_priv** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.wm9705_priv* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @wm9705_dai, align 4
  %26 = load i32, i32* @wm9705_dai, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @devm_snd_soc_register_component(i32* %24, i32* @soc_component_dev_wm9705, i32 %25, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.wm9705_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm9705_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
