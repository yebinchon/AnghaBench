; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_set_jack_detection.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_set_jack_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.psc724_spec* }
%struct.psc724_spec = type { i32, i32 }

@GPIO_HP_JACK = common dso_local global i32 0, align 4
@JACK_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @psc724_set_jack_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc724_set_jack_detection(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psc724_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 0
  %9 = load %struct.psc724_spec*, %struct.psc724_spec** %8, align 8
  store %struct.psc724_spec* %9, %struct.psc724_spec** %5, align 8
  %10 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %11 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %19 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %23)
  %25 = load i32, i32* @GPIO_HP_JACK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @psc724_set_jack_state(%struct.snd_ice1712* %27, i32 %28)
  %30 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %31 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %30, i32 0, i32 1
  %32 = load i32, i32* @JACK_INTERVAL, align 4
  %33 = call i32 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @schedule_delayed_work(i32* %31, i32 %33)
  br label %39

35:                                               ; preds = %16
  %36 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %37 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %36, i32 0, i32 1
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  br label %39

39:                                               ; preds = %15, %35, %22
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @psc724_set_jack_state(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
