; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.fm801 = type { i32, i32, i32, i64, i32 }

@FM801_START = common dso_local global i32 0, align 4
@CAP_COUNT = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@FM801_IRQ_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_fm801_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.fm801*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.fm801* %7, %struct.fm801** %4, align 8
  %8 = load %struct.fm801*, %struct.fm801** %4, align 8
  %9 = getelementptr inbounds %struct.fm801, %struct.fm801* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FM801_START, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.fm801*, %struct.fm801** %4, align 8
  %17 = getelementptr inbounds %struct.fm801, %struct.fm801* %16, i32 0, i32 4
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.fm801*, %struct.fm801** %4, align 8
  %20 = getelementptr inbounds %struct.fm801, %struct.fm801* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fm801*, %struct.fm801** %4, align 8
  %23 = getelementptr inbounds %struct.fm801, %struct.fm801* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = add nsw i32 %21, %25
  %27 = load %struct.fm801*, %struct.fm801** %4, align 8
  %28 = load i32, i32* @CAP_COUNT, align 4
  %29 = call i32 @fm801_readw(%struct.fm801* %27, i32 %28)
  %30 = sub nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  %32 = load %struct.fm801*, %struct.fm801** %4, align 8
  %33 = load i32, i32* @IRQ_STATUS, align 4
  %34 = call i32 @fm801_readw(%struct.fm801* %32, i32 %33)
  %35 = load i32, i32* @FM801_IRQ_CAPTURE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %15
  %39 = load %struct.fm801*, %struct.fm801** %4, align 8
  %40 = getelementptr inbounds %struct.fm801, %struct.fm801* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %5, align 8
  %45 = load %struct.fm801*, %struct.fm801** %4, align 8
  %46 = getelementptr inbounds %struct.fm801, %struct.fm801* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = urem i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %38, %15
  %51 = load %struct.fm801*, %struct.fm801** %4, align 8
  %52 = getelementptr inbounds %struct.fm801, %struct.fm801* %51, i32 0, i32 4
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @bytes_to_frames(i32 %56, i64 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %50, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fm801_readw(%struct.fm801*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
