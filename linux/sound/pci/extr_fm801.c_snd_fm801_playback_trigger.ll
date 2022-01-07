; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.fm801 = type { i32, i32 }

@FM801_BUF1_LAST = common dso_local global i32 0, align 4
@FM801_BUF2_LAST = common dso_local global i32 0, align 4
@FM801_PAUSE = common dso_local global i32 0, align 4
@FM801_START = common dso_local global i32 0, align 4
@FM801_IMMED_STOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PLY_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_fm801_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm801*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.fm801* %8, %struct.fm801** %6, align 8
  %9 = load %struct.fm801*, %struct.fm801** %6, align 8
  %10 = getelementptr inbounds %struct.fm801, %struct.fm801* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %53 [
    i32 130, label %13
    i32 129, label %31
    i32 133, label %40
    i32 128, label %40
    i32 132, label %46
    i32 131, label %46
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @FM801_BUF1_LAST, align 4
  %15 = load i32, i32* @FM801_BUF2_LAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FM801_PAUSE, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.fm801*, %struct.fm801** %6, align 8
  %21 = getelementptr inbounds %struct.fm801, %struct.fm801* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @FM801_START, align 4
  %25 = load i32, i32* @FM801_IMMED_STOP, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.fm801*, %struct.fm801** %6, align 8
  %28 = getelementptr inbounds %struct.fm801, %struct.fm801* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %60

31:                                               ; preds = %2
  %32 = load i32, i32* @FM801_START, align 4
  %33 = load i32, i32* @FM801_PAUSE, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.fm801*, %struct.fm801** %6, align 8
  %37 = getelementptr inbounds %struct.fm801, %struct.fm801* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %60

40:                                               ; preds = %2, %2
  %41 = load i32, i32* @FM801_PAUSE, align 4
  %42 = load %struct.fm801*, %struct.fm801** %6, align 8
  %43 = getelementptr inbounds %struct.fm801, %struct.fm801* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %60

46:                                               ; preds = %2, %2
  %47 = load i32, i32* @FM801_PAUSE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.fm801*, %struct.fm801** %6, align 8
  %50 = getelementptr inbounds %struct.fm801, %struct.fm801* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.fm801*, %struct.fm801** %6, align 8
  %55 = getelementptr inbounds %struct.fm801, %struct.fm801* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = call i32 (...) @snd_BUG()
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %46, %40, %31, %13
  %61 = load %struct.fm801*, %struct.fm801** %6, align 8
  %62 = load i32, i32* @PLY_CTRL, align 4
  %63 = load %struct.fm801*, %struct.fm801** %6, align 8
  %64 = getelementptr inbounds %struct.fm801, %struct.fm801* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fm801_writew(%struct.fm801* %61, i32 %62, i32 %65)
  %67 = load %struct.fm801*, %struct.fm801** %6, align 8
  %68 = getelementptr inbounds %struct.fm801, %struct.fm801* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %53
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
