; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_update_agc_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_update_agc_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wm8776 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@WM8776_FLAG_LIM = common dso_local global i32 0, align 4
@WM8776_FLAG_ALC = common dso_local global i32 0, align 4
@WM8776_CTL_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wm8776*)* @snd_wm8776_update_agc_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wm8776_update_agc_ctl(%struct.snd_wm8776* %0) #0 {
  %2 = alloca %struct.snd_wm8776*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_wm8776* %0, %struct.snd_wm8776** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %7 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %19 [
    i32 128, label %9
    i32 129, label %13
    i32 131, label %16
    i32 132, label %16
    i32 130, label %16
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @WM8776_FLAG_LIM, align 4
  %11 = load i32, i32* @WM8776_FLAG_ALC, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @WM8776_FLAG_ALC, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @WM8776_FLAG_LIM, align 4
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %1, %1, %1
  %17 = load i32, i32* @WM8776_FLAG_LIM, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @WM8776_FLAG_ALC, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %1, %16, %13, %9
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %72, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @WM8776_CTL_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %26 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %38 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %39 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_wm8776_activate_ctl(%struct.snd_wm8776* %37, i32 %45, i32 0)
  br label %71

47:                                               ; preds = %24
  %48 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %49 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %61 = load %struct.snd_wm8776*, %struct.snd_wm8776** %2, align 8
  %62 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snd_wm8776_activate_ctl(%struct.snd_wm8776* %60, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %59, %47
  br label %71

71:                                               ; preds = %70, %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %20

75:                                               ; preds = %20
  ret void
}

declare dso_local i32 @snd_wm8776_activate_ctl(%struct.snd_wm8776*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
