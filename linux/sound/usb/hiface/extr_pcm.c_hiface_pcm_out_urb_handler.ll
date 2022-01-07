; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_out_urb_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_out_urb_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.pcm_urb* }
%struct.pcm_urb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pcm_runtime* }
%struct.pcm_runtime = type { i32, i64, i32, %struct.pcm_substream, i32 }
%struct.pcm_substream = type { i32, i32, i64 }

@STREAM_STOPPING = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@STREAM_STARTING = common dso_local global i64 0, align 8
@PCM_PACKET_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @hiface_pcm_out_urb_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hiface_pcm_out_urb_handler(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.pcm_urb*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  %5 = alloca %struct.pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load %struct.pcm_urb*, %struct.pcm_urb** %10, align 8
  store %struct.pcm_urb* %11, %struct.pcm_urb** %3, align 8
  %12 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %13 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pcm_runtime*, %struct.pcm_runtime** %15, align 8
  store %struct.pcm_runtime* %16, %struct.pcm_runtime** %4, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STREAM_STOPPING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %1
  br label %119

28:                                               ; preds = %21
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %56, label %35

35:                                               ; preds = %28
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %35
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ECONNRESET, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.urb*, %struct.urb** %2, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ESHUTDOWN, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br label %56

56:                                               ; preds = %49, %42, %35, %28
  %57 = phi i1 [ true, %42 ], [ true, %35 ], [ true, %28 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %116

62:                                               ; preds = %56
  %63 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STREAM_STARTING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %70 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %72 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %71, i32 0, i32 4
  %73 = call i32 @wake_up(i32* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %75, i32 0, i32 3
  store %struct.pcm_substream* %76, %struct.pcm_substream** %5, align 8
  %77 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %78 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %82 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %87 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %88 = call i32 @hiface_pcm_playback(%struct.pcm_substream* %86, %struct.pcm_urb* %87)
  store i32 %88, i32* %6, align 4
  br label %95

89:                                               ; preds = %74
  %90 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %91 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PCM_PACKET_SIZE, align 4
  %94 = call i32 @memset(i32 %92, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %89, %85
  %96 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %97 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %96, i32 0, i32 1
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %104 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @snd_pcm_period_elapsed(i32 %105)
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.pcm_urb*, %struct.pcm_urb** %3, align 8
  %109 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %108, i32 0, i32 0
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call i32 @usb_submit_urb(i32* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %116

115:                                              ; preds = %107
  br label %119

116:                                              ; preds = %114, %61
  %117 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %118 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %115, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hiface_pcm_playback(%struct.pcm_substream*, %struct.pcm_urb*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
