; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cs47l90 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@CS47L90_NUM_ADSP = common dso_local global i32 0, align 4
@MADERA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l90_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l90_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cs47l90*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.cs47l90* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.cs47l90* %6, %struct.cs47l90** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @pm_runtime_disable(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CS47L90_NUM_ADSP, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %16 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @madera_free_bus_error_irq(%struct.TYPE_3__* %16, i32 %17)
  %19 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %20 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @wm_adsp2_remove(i32* %25)
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %32 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %36 = call i32 @madera_set_irq_wake(i32 %34, i32 %35, i32 0)
  %37 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %38 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %42 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %43 = call i32 @madera_free_irq(i32 %40, i32 %41, %struct.cs47l90* %42)
  %44 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %45 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %44, i32 0, i32 0
  %46 = call i32 @madera_core_free(%struct.TYPE_3__* %45)
  ret i32 0
}

declare dso_local %struct.cs47l90* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @madera_free_bus_error_irq(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @wm_adsp2_remove(i32*) #1

declare dso_local i32 @madera_set_irq_wake(i32, i32, i32) #1

declare dso_local i32 @madera_free_irq(i32, i32, %struct.cs47l90*) #1

declare dso_local i32 @madera_core_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
