; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_i_usX2Y_usbpcm_subs_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_i_usX2Y_usbpcm_subs_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { i32, %struct.TYPE_2__**, %struct.usX2Ydev* }
%struct.TYPE_2__ = type { i64 }
%struct.usX2Ydev = type { i32, %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @i_usX2Y_usbpcm_subs_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i_usX2Y_usbpcm_subs_startup(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  store %struct.snd_usX2Y_substream* %9, %struct.snd_usX2Y_substream** %3, align 8
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %10, i32 0, i32 2
  %12 = load %struct.usX2Ydev*, %struct.usX2Ydev** %11, align 8
  store %struct.usX2Ydev* %12, %struct.usX2Ydev** %4, align 8
  %13 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %14 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %13, i32 0, i32 2
  %15 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %14, align 8
  store %struct.snd_usX2Y_substream* %15, %struct.snd_usX2Y_substream** %5, align 8
  %16 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %17 = icmp ne %struct.snd_usX2Y_substream* null, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %1
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %23 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %21, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %18
  %31 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %32 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %31, i32 0, i32 0
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %35 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %36 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %35, i32 0, i32 1
  %37 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %36, align 8
  %38 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %39 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %37, i64 %38
  %40 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %39, align 8
  %41 = icmp eq %struct.snd_usX2Y_substream* %34, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %44 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %43, i32 0, i32 1
  %45 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %44, align 8
  %46 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %47 = add i64 %46, 2
  %48 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %45, i64 %47
  %49 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %48, align 8
  store %struct.snd_usX2Y_substream* %49, %struct.snd_usX2Y_substream** %6, align 8
  %50 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %51 = icmp ne %struct.snd_usX2Y_substream* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %54 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %53, i32 0, i32 0
  %55 = call i32 @atomic_inc(i32* %54)
  br label %56

56:                                               ; preds = %52, %42
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %59 = call i32 @usX2Y_usbpcm_subs_startup_finish(%struct.usX2Ydev* %58)
  %60 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %61 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %60, i32 0, i32 0
  %62 = call i32 @wake_up(i32* %61)
  br label %63

63:                                               ; preds = %57, %18, %1
  %64 = load %struct.urb*, %struct.urb** %2, align 8
  %65 = call i32 @i_usX2Y_usbpcm_urb_complete(%struct.urb* %64)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usX2Y_usbpcm_subs_startup_finish(%struct.usX2Ydev*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @i_usX2Y_usbpcm_urb_complete(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
