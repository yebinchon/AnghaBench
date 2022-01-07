; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.snd_maya44* }
%struct.snd_maya44 = type { i32, i32* }

@WM8776_CLOCK_RATIO_128FS = common dso_local global i32 0, align 4
@WM8776_CLOCK_RATIO_256FS = common dso_local global i32 0, align 4
@WM8776_CLOCK_RATIO_384FS = common dso_local global i32 0, align 4
@WM8776_CLOCK_RATIO_512FS = common dso_local global i32 0, align 4
@WM8776_CLOCK_RATIO_768FS = common dso_local global i32 0, align 4
@WM8776_REG_MASTER_MODE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rate(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_maya44*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = load %struct.snd_maya44*, %struct.snd_maya44** %11, align 8
  store %struct.snd_maya44* %12, %struct.snd_maya44** %5, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %29 [
    i32 192000, label %14
    i32 176400, label %16
    i32 96000, label %18
    i32 88200, label %20
    i32 48000, label %22
    i32 44100, label %24
    i32 32000, label %26
    i32 0, label %28
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @WM8776_CLOCK_RATIO_128FS, align 4
  store i32 %15, i32* %6, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @WM8776_CLOCK_RATIO_128FS, align 4
  store i32 %17, i32* %6, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load i32, i32* @WM8776_CLOCK_RATIO_256FS, align 4
  store i32 %19, i32* %6, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @WM8776_CLOCK_RATIO_384FS, align 4
  store i32 %21, i32* %6, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @WM8776_CLOCK_RATIO_512FS, align 4
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @WM8776_CLOCK_RATIO_512FS, align 4
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @WM8776_CLOCK_RATIO_768FS, align 4
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %2
  br label %75

29:                                               ; preds = %2
  %30 = call i32 (...) @snd_BUG()
  br label %75

31:                                               ; preds = %26, %24, %22, %20, %18, %16, %14
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @WM8776_CLOCK_RATIO_256FS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @WM8776_CLOCK_RATIO_256FS, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @WM8776_CLOCK_RATIO_256FS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, 8
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %52 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %68, %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %59 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %60 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @WM8776_REG_MASTER_MODE_CONTROL, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @wm8776_write_bits(%struct.snd_ice1712* %58, i32* %64, i32 %65, i32 384, i32 %66)
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %73 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %29, %28
  ret void
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8776_write_bits(%struct.snd_ice1712*, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
