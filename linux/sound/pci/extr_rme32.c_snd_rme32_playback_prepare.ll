; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme32 = type { i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RME32_BUFFER_SIZE = common dso_local global i32 0, align 4
@RME32_IO_RESET_POS = common dso_local global i64 0, align 8
@RME32_WCR_SEL = common dso_local global i32 0, align 4
@RME32_WCR_MUTE = common dso_local global i32 0, align 4
@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.rme32* %5, %struct.rme32** %3, align 8
  %6 = load %struct.rme32*, %struct.rme32** %3, align 8
  %7 = getelementptr inbounds %struct.rme32, %struct.rme32* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.rme32*, %struct.rme32** %3, align 8
  %10 = getelementptr inbounds %struct.rme32, %struct.rme32* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.rme32*, %struct.rme32** %3, align 8
  %15 = getelementptr inbounds %struct.rme32, %struct.rme32* %14, i32 0, i32 3
  %16 = call i32 @memset(%struct.TYPE_2__* %15, i32 0, i32 8)
  %17 = load i32, i32* @RME32_BUFFER_SIZE, align 4
  %18 = load %struct.rme32*, %struct.rme32** %3, align 8
  %19 = getelementptr inbounds %struct.rme32, %struct.rme32* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %21)
  %23 = load %struct.rme32*, %struct.rme32** %3, align 8
  %24 = getelementptr inbounds %struct.rme32, %struct.rme32* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.rme32*, %struct.rme32** %3, align 8
  %28 = getelementptr inbounds %struct.rme32, %struct.rme32* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RME32_IO_RESET_POS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  br label %33

33:                                               ; preds = %26, %13
  %34 = load %struct.rme32*, %struct.rme32** %3, align 8
  %35 = getelementptr inbounds %struct.rme32, %struct.rme32* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RME32_WCR_SEL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* @RME32_WCR_MUTE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.rme32*, %struct.rme32** %3, align 8
  %44 = getelementptr inbounds %struct.rme32, %struct.rme32* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.rme32*, %struct.rme32** %3, align 8
  %49 = getelementptr inbounds %struct.rme32, %struct.rme32* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rme32*, %struct.rme32** %3, align 8
  %52 = getelementptr inbounds %struct.rme32, %struct.rme32* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.rme32*, %struct.rme32** %3, align 8
  %58 = getelementptr inbounds %struct.rme32, %struct.rme32* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_irq(i32* %58)
  ret i32 0
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
