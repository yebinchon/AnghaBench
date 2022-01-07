; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urbs_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_urbs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { i32*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { %struct.snd_usX2Y_substream** }

@.str = private unnamed_addr constant [25 x i8] c"usX2Y_urbs_release() %i\0A\00", align 1
@NRURBS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usX2Y_substream*)* @usX2Y_urbs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_urbs_release(%struct.snd_usX2Y_substream* %0) #0 {
  %2 = alloca %struct.snd_usX2Y_substream*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream** %2, align 8
  %4 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NRURBS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %2, align 8
  %20 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %2, align 8
  %21 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %24, i64 %25
  %27 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %26, align 8
  %28 = icmp ne %struct.snd_usX2Y_substream* %19, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @usX2Y_urb_release(i64 %18, i32 %29)
  br label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %2, align 8
  %36 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %2, align 8
  %40 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i32) #1

declare dso_local i32 @usX2Y_urb_release(i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
