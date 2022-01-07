; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_snd_ice1712_stdsp24_box_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_snd_ice1712_stdsp24_box_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.hoontech_spec* }
%struct.hoontech_spec = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32)* @snd_ice1712_stdsp24_box_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_stdsp24_box_midi(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hoontech_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 1
  %10 = load %struct.hoontech_spec*, %struct.hoontech_spec** %9, align 8
  store %struct.hoontech_spec* %10, %struct.hoontech_spec** %7, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %15 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ICE1712_STDSP24_0_BOX(i32* %16, i32 %17)
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %20 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %21 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %19, i32 %24)
  %26 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %27 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ICE1712_STDSP24_2_MIDIIN(i32* %28, i32 1)
  %30 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %31 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ICE1712_STDSP24_2_MIDI1(i32* %32, i32 %33)
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %36 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %37 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %35, i32 %40)
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %43 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %44 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %42, i32 %47)
  %49 = call i32 @udelay(i32 100)
  %50 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %51 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ICE1712_STDSP24_2_MIDIIN(i32* %52, i32 0)
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %55 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %56 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %54, i32 %59)
  %61 = call i32 @mdelay(i32 10)
  %62 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %63 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ICE1712_STDSP24_2_MIDIIN(i32* %64, i32 1)
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %67 = load %struct.hoontech_spec*, %struct.hoontech_spec** %7, align 8
  %68 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %66, i32 %71)
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %74 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ICE1712_STDSP24_0_BOX(i32*, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_MIDIIN(i32*, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_MIDI1(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
