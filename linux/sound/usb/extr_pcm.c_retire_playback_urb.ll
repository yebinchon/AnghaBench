; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_retire_playback_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_retire_playback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.snd_usb_endpoint*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_usb_endpoint = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"delay: estimated %d, actual %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.urb*)* @retire_playback_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retire_playback_urb(%struct.snd_usb_substream* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_usb_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %10 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %10, i32 0, i32 6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i32 0, i32 5
  %17 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %16, align 8
  store %struct.snd_usb_endpoint* %17, %struct.snd_usb_endpoint** %7, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %7, align 8
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %105

28:                                               ; preds = %2
  %29 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %29, i32 0, i32 2
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %100

38:                                               ; preds = %28
  %39 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_usb_pcm_delay(%struct.snd_usb_substream* %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %51 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %58

52:                                               ; preds = %38
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %55 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %49
  %59 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %60 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %66 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = call i32 @abs(i32 %68) #3
  %70 = mul nsw i32 %69, 1000
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 2
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %58
  %77 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %78 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %83 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_dbg_ratelimited(i32* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %76, %58
  %87 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %88 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %93 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @usb_get_current_frame_number(%struct.TYPE_4__* %94)
  %96 = and i32 %95, 255
  %97 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %98 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %86
  br label %100

100:                                              ; preds = %99, %37
  %101 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %102 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %101, i32 0, i32 2
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_usb_pcm_delay(%struct.snd_usb_substream*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @dev_dbg_ratelimited(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_get_current_frame_number(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
