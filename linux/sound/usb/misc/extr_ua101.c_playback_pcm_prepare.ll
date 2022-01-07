; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_playback_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_playback_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__*, %struct.ua101* }
%struct.TYPE_3__ = type { i64 }
%struct.ua101 = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@PLAYBACK_URB_COMPLETED = common dso_local global i32 0, align 4
@USB_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @playback_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.ua101*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.ua101*, %struct.ua101** %7, align 8
  store %struct.ua101* %8, %struct.ua101** %4, align 8
  %9 = load %struct.ua101*, %struct.ua101** %4, align 8
  %10 = getelementptr inbounds %struct.ua101, %struct.ua101* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ua101*, %struct.ua101** %4, align 8
  %13 = call i32 @start_usb_capture(%struct.ua101* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ua101*, %struct.ua101** %4, align 8
  %18 = call i32 @start_usb_playback(%struct.ua101* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.ua101*, %struct.ua101** %4, align 8
  %21 = getelementptr inbounds %struct.ua101, %struct.ua101* %20, i32 0, i32 3
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %19
  %28 = load %struct.ua101*, %struct.ua101** %4, align 8
  %29 = getelementptr inbounds %struct.ua101, %struct.ua101* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PLAYBACK_URB_COMPLETED, align 4
  %32 = load %struct.ua101*, %struct.ua101** %4, align 8
  %33 = getelementptr inbounds %struct.ua101, %struct.ua101* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %38 = load %struct.ua101*, %struct.ua101** %4, align 8
  %39 = getelementptr inbounds %struct.ua101, %struct.ua101* %38, i32 0, i32 1
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %36, %27
  %44 = phi i1 [ true, %27 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @wait_event(i32 %30, i32 %45)
  %47 = load i32, i32* @DISCONNECTED, align 4
  %48 = load %struct.ua101*, %struct.ua101** %4, align 8
  %49 = getelementptr inbounds %struct.ua101, %struct.ua101* %48, i32 0, i32 1
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %43
  %56 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %57 = load %struct.ua101*, %struct.ua101** %4, align 8
  %58 = getelementptr inbounds %struct.ua101, %struct.ua101* %57, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %75

64:                                               ; preds = %55
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.ua101*, %struct.ua101** %4, align 8
  %70 = getelementptr inbounds %struct.ua101, %struct.ua101* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.ua101*, %struct.ua101** %4, align 8
  %73 = getelementptr inbounds %struct.ua101, %struct.ua101* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %64, %61, %52, %25
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @start_usb_capture(%struct.ua101*) #1

declare dso_local i32 @start_usb_playback(%struct.ua101*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
