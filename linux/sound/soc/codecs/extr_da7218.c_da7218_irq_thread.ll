; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA7218_EVENT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DA7218_LVL_DET_EVENT_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_EVENT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da7218_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_soc_component*
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %6, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %11 = load i32, i32* @DA7218_EVENT, align 4
  %12 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DA7218_LVL_DET_EVENT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = call i32 @da7218_micldet_irq(%struct.snd_soc_component* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DA7218_HPLDET_JACK_EVENT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %32 = call i32 @da7218_hpldet_irq(%struct.snd_soc_component* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = load i32, i32* @DA7218_EVENT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @da7218_micldet_irq(%struct.snd_soc_component*) #1

declare dso_local i32 @da7218_hpldet_irq(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
