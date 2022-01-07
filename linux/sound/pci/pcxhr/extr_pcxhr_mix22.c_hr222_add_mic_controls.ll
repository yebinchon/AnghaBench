; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_add_mic_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_add_mic_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@hr222_control_mic_level = common dso_local global i32 0, align 4
@hr222_control_mic_boost = common dso_local global i32 0, align 4
@hr222_phantom_power_switch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_add_mic_controls(%struct.snd_pcxhr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcxhr*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %3, align 8
  %5 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %17 = call i32 @snd_ctl_new1(i32* @hr222_control_mic_level, %struct.snd_pcxhr* %16)
  %18 = call i32 @snd_ctl_add(i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %12
  %24 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %28 = call i32 @snd_ctl_new1(i32* @hr222_control_mic_boost, %struct.snd_pcxhr* %27)
  %29 = call i32 @snd_ctl_add(i32 %26, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %3, align 8
  %39 = call i32 @snd_ctl_new1(i32* @hr222_phantom_power_switch, %struct.snd_pcxhr* %38)
  %40 = call i32 @snd_ctl_add(i32 %37, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %32, %21, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_pcxhr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
