; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cs47l92 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@MADERA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l92_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l92_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cs47l92*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.cs47l92* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.cs47l92* %5, %struct.cs47l92** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_disable(i32* %7)
  %9 = load %struct.cs47l92*, %struct.cs47l92** %3, align 8
  %10 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %9, i32 0, i32 0
  %11 = call i32 @madera_free_bus_error_irq(%struct.TYPE_3__* %10, i32 0)
  %12 = load %struct.cs47l92*, %struct.cs47l92** %3, align 8
  %13 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @wm_adsp2_remove(i32* %16)
  %18 = load %struct.cs47l92*, %struct.cs47l92** %3, align 8
  %19 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %23 = call i32 @madera_set_irq_wake(i32 %21, i32 %22, i32 0)
  %24 = load %struct.cs47l92*, %struct.cs47l92** %3, align 8
  %25 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %29 = load %struct.cs47l92*, %struct.cs47l92** %3, align 8
  %30 = call i32 @madera_free_irq(i32 %27, i32 %28, %struct.cs47l92* %29)
  %31 = load %struct.cs47l92*, %struct.cs47l92** %3, align 8
  %32 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %31, i32 0, i32 0
  %33 = call i32 @madera_core_free(%struct.TYPE_3__* %32)
  ret i32 0
}

declare dso_local %struct.cs47l92* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @madera_free_bus_error_irq(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @wm_adsp2_remove(i32*) #1

declare dso_local i32 @madera_set_irq_wake(i32, i32, i32) #1

declare dso_local i32 @madera_free_irq(i32, i32, %struct.cs47l92*) #1

declare dso_local i32 @madera_core_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
