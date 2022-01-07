; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.h_snd_ice1712_restore_gpio_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.h_snd_ice1712_restore_gpio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.1*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.snd_ice1712.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @snd_ice1712_restore_gpio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %3 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %5, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %8 = bitcast %struct.snd_ice1712* %7 to %struct.snd_ice1712.1*
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 %6(%struct.snd_ice1712.1* %8, i32 %14)
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %18, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %21 = bitcast %struct.snd_ice1712* %20 to %struct.snd_ice1712.0*
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %19(%struct.snd_ice1712.0* %21, i32 %27)
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
