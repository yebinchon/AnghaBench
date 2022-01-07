; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_xonar_d1_mixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_xonar_d1_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@front_panel_switch = common dso_local global i32 0, align 4
@rolloff_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @xonar_d1_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xonar_d1_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %6 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = call i32 @snd_ctl_new1(i32* @front_panel_switch, %struct.oxygen* %8)
  %10 = call i32 @snd_ctl_add(i32 %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %20 = call i32 @snd_ctl_new1(i32* @rolloff_control, %struct.oxygen* %19)
  %21 = call i32 @snd_ctl_add(i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
