; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt298_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT298_IRQ_CTRL = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt298_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt298_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt298_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rt298_priv*
  store %struct.rt298_priv* %11, %struct.rt298_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %13 = call i32 @rt298_jack_detect(%struct.rt298_priv* %12, i32* %6, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RT298_IRQ_CTRL, align 4
  %18 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 1, i32 1)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %37 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %41 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_jack_report(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %45 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @pm_wakeup_event(i32* %47, i32 300)
  br label %49

49:                                               ; preds = %35, %2
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @rt298_jack_detect(%struct.rt298_priv*, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
