; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt274_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT274_EAPD_GPIO_IRQ_CTRL = common dso_local global i32 0, align 4
@RT274_IRQ_CLR = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt274_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt274_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt274_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rt274_priv*
  store %struct.rt274_priv* %11, %struct.rt274_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.rt274_priv*, %struct.rt274_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RT274_EAPD_GPIO_IRQ_CTRL, align 4
  %16 = load i32, i32* @RT274_IRQ_CLR, align 4
  %17 = load i32, i32* @RT274_IRQ_CLR, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.rt274_priv*, %struct.rt274_priv** %5, align 8
  %20 = call i32 @rt274_jack_detect(%struct.rt274_priv* %19, i32* %6, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.rt274_priv*, %struct.rt274_priv** %5, align 8
  %39 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %43 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @snd_soc_jack_report(i32 %40, i32 %41, i32 %44)
  %46 = load %struct.rt274_priv*, %struct.rt274_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @pm_wakeup_event(i32* %49, i32 300)
  br label %51

51:                                               ; preds = %37, %2
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rt274_jack_detect(%struct.rt274_priv*, i32*, i32*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
