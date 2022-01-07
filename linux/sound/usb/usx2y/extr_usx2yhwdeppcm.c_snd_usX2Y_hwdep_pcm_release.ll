; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@USX2Y_STAT_CHIP_MMAP_PCM_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*)* @snd_usX2Y_hwdep_pcm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_hwdep_pcm_release(%struct.snd_hwdep* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.snd_hwdep*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %8 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %7, i32 0, i32 0
  %9 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  store %struct.snd_card* %9, %struct.snd_card** %5, align 8
  %10 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %11 = call %struct.TYPE_2__* @usX2Y(%struct.snd_card* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %15 = call i32 @usX2Y_pcms_busy_check(%struct.snd_card* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @USX2Y_STAT_CHIP_MMAP_PCM_URBS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %22 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %21, i32 0, i32 0
  %23 = load %struct.snd_card*, %struct.snd_card** %22, align 8
  %24 = call %struct.TYPE_2__* @usX2Y(%struct.snd_card* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %20
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %18, %2
  %29 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %30 = call %struct.TYPE_2__* @usX2Y(%struct.snd_card* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @usX2Y(%struct.snd_card*) #1

declare dso_local i32 @usX2Y_pcms_busy_check(%struct.snd_card*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
