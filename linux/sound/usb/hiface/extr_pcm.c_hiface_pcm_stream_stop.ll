; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_stream_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_runtime = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@STREAM_DISABLED = common dso_local global i64 0, align 8
@STREAM_STOPPING = common dso_local global i64 0, align 8
@PCM_N_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_runtime*)* @hiface_pcm_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hiface_pcm_stream_stop(%struct.pcm_runtime* %0) #0 {
  %2 = alloca %struct.pcm_runtime*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pcm_runtime* %0, %struct.pcm_runtime** %2, align 8
  %5 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STREAM_DISABLED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = load i64, i64* @STREAM_STOPPING, align 8
  %12 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %13 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %47, %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PCM_N_URBS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %20 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @usb_wait_anchor_empty_timeout(i32* %25, i32 100)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %18
  %30 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %31 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @usb_kill_anchored_urbs(i32* %36)
  br label %38

38:                                               ; preds = %29, %18
  %39 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %40 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @usb_kill_urb(i32* %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load i64, i64* @STREAM_DISABLED, align 8
  %52 = load %struct.pcm_runtime*, %struct.pcm_runtime** %2, align 8
  %53 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @usb_wait_anchor_empty_timeout(i32*, i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
