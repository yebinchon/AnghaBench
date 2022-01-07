; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm5110_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.arizona* }
%struct.arizona = type { i32 }

@WM5110_NUM_ADSP = common dso_local global i32 0, align 4
@ARIZONA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm5110_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wm5110_priv*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.wm5110_priv* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.wm5110_priv* %7, %struct.wm5110_priv** %3, align 8
  %8 = load %struct.wm5110_priv*, %struct.wm5110_priv** %3, align 8
  %9 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.arizona*, %struct.arizona** %10, align 8
  store %struct.arizona* %11, %struct.arizona** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_disable(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WM5110_NUM_ADSP, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.wm5110_priv*, %struct.wm5110_priv** %3, align 8
  %21 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @wm_adsp2_remove(i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load %struct.arizona*, %struct.arizona** %4, align 8
  %33 = call i32 @arizona_free_spk_irqs(%struct.arizona* %32)
  %34 = load %struct.arizona*, %struct.arizona** %4, align 8
  %35 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %36 = call i32 @arizona_set_irq_wake(%struct.arizona* %34, i32 %35, i32 0)
  %37 = load %struct.arizona*, %struct.arizona** %4, align 8
  %38 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %39 = load %struct.wm5110_priv*, %struct.wm5110_priv** %3, align 8
  %40 = call i32 @arizona_free_irq(%struct.arizona* %37, i32 %38, %struct.wm5110_priv* %39)
  ret i32 0
}

declare dso_local %struct.wm5110_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @wm_adsp2_remove(i32*) #1

declare dso_local i32 @arizona_free_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @arizona_set_irq_wake(%struct.arizona*, i32, i32) #1

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.wm5110_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
