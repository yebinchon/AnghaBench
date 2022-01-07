; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme32 = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RME32_BUFFER_SIZE = common dso_local global i32 0, align 4
@RME32_IO_RESET_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.rme32* %5, %struct.rme32** %3, align 8
  %6 = load %struct.rme32*, %struct.rme32** %3, align 8
  %7 = getelementptr inbounds %struct.rme32, %struct.rme32* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.rme32*, %struct.rme32** %3, align 8
  %10 = getelementptr inbounds %struct.rme32, %struct.rme32* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.rme32*, %struct.rme32** %3, align 8
  %15 = getelementptr inbounds %struct.rme32, %struct.rme32* %14, i32 0, i32 2
  %16 = call i32 @memset(%struct.TYPE_2__* %15, i32 0, i32 12)
  %17 = load i32, i32* @RME32_BUFFER_SIZE, align 4
  %18 = load %struct.rme32*, %struct.rme32** %3, align 8
  %19 = getelementptr inbounds %struct.rme32, %struct.rme32* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @RME32_BUFFER_SIZE, align 4
  %22 = sdiv i32 %21, 2
  %23 = load %struct.rme32*, %struct.rme32** %3, align 8
  %24 = getelementptr inbounds %struct.rme32, %struct.rme32* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %27 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %26)
  %28 = load %struct.rme32*, %struct.rme32** %3, align 8
  %29 = getelementptr inbounds %struct.rme32, %struct.rme32* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.rme32*, %struct.rme32** %3, align 8
  %33 = getelementptr inbounds %struct.rme32, %struct.rme32* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RME32_IO_RESET_POS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  br label %38

38:                                               ; preds = %31, %13
  %39 = load %struct.rme32*, %struct.rme32** %3, align 8
  %40 = getelementptr inbounds %struct.rme32, %struct.rme32* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
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
