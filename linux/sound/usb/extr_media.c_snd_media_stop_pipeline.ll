; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_media.c_snd_media_stop_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_media.c_snd_media_stop_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { %struct.media_ctl* }
%struct.media_ctl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_media_stop_pipeline(%struct.snd_usb_substream* %0) #0 {
  %2 = alloca %struct.snd_usb_substream*, align 8
  %3 = alloca %struct.media_ctl*, align 8
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %2, align 8
  %4 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %4, i32 0, i32 0
  %6 = load %struct.media_ctl*, %struct.media_ctl** %5, align 8
  store %struct.media_ctl* %6, %struct.media_ctl** %3, align 8
  %7 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %8 = icmp ne %struct.media_ctl* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %12 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %17 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = icmp ne i32 (i32*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %24 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (i32*)*, i32 (i32*)** %26, align 8
  %28 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %29 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %28, i32 0, i32 1
  %30 = call i32 %27(i32* %29)
  br label %31

31:                                               ; preds = %22, %10
  %32 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %33 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
