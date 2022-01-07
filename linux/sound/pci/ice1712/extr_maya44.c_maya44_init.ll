; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_maya44_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_maya44_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, i32, %struct.TYPE_2__, i32*, i64, %struct.snd_maya44* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_maya44 = type { i32*, %struct.snd_ice1712*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8776_addr = common dso_local global i32* null, align 8
@MAYA_LINE_IN = common dso_local global i32 0, align 4
@dac_rates = common dso_local global i32 0, align 4
@set_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @maya44_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maya44_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_maya44*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.snd_maya44* @kzalloc(i32 24, i32 %6)
  store %struct.snd_maya44* %7, %struct.snd_maya44** %5, align 8
  %8 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %9 = icmp ne %struct.snd_maya44* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %15 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %18 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %19 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %18, i32 0, i32 1
  store %struct.snd_ice1712* %17, %struct.snd_ice1712** %19, align 8
  %20 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 7
  store %struct.snd_maya44* %20, %struct.snd_maya44** %22, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %50, %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %34 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %35 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32*, i32** @wm8776_addr, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wm8776_init(%struct.snd_ice1712* %33, i32* %39, i32 %44)
  %46 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MAYA_LINE_IN, align 4
  %49 = call i32 @wm8776_select_input(%struct.snd_maya44* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %55 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %54, i32 0, i32 5
  store i32* @dac_rates, i32** %55, align 8
  %56 = load i32, i32* @set_rate, align 4
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %61 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %63 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %53, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.snd_maya44* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @wm8776_init(%struct.snd_ice1712*, i32*, i32) #1

declare dso_local i32 @wm8776_select_input(%struct.snd_maya44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
