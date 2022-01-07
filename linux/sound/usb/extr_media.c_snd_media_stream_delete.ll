; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_media.c_snd_media_stream_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_media.c_snd_media_stream_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { %struct.media_ctl* }
%struct.media_ctl = type { i32, i32, %struct.media_device* }
%struct.media_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_media_stream_delete(%struct.snd_usb_substream* %0) #0 {
  %2 = alloca %struct.snd_usb_substream*, align 8
  %3 = alloca %struct.media_ctl*, align 8
  %4 = alloca %struct.media_device*, align 8
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %2, align 8
  %5 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %5, i32 0, i32 0
  %7 = load %struct.media_ctl*, %struct.media_ctl** %6, align 8
  store %struct.media_ctl* %7, %struct.media_ctl** %3, align 8
  %8 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %9 = icmp ne %struct.media_ctl* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %12 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %11, i32 0, i32 2
  %13 = load %struct.media_device*, %struct.media_device** %12, align 8
  store %struct.media_device* %13, %struct.media_device** %4, align 8
  %14 = load %struct.media_device*, %struct.media_device** %4, align 8
  %15 = icmp ne %struct.media_device* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.media_device*, %struct.media_device** %4, align 8
  %18 = getelementptr inbounds %struct.media_device, %struct.media_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @media_devnode_is_registered(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %24 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @media_devnode_remove(i32 %25)
  %27 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %28 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %27, i32 0, i32 0
  %29 = call i32 @media_device_unregister_entity(i32* %28)
  %30 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %31 = getelementptr inbounds %struct.media_ctl, %struct.media_ctl* %30, i32 0, i32 0
  %32 = call i32 @media_entity_cleanup(i32* %31)
  br label %33

33:                                               ; preds = %22, %16, %10
  %34 = load %struct.media_ctl*, %struct.media_ctl** %3, align 8
  %35 = call i32 @kfree(%struct.media_ctl* %34)
  %36 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %37 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %36, i32 0, i32 0
  store %struct.media_ctl* null, %struct.media_ctl** %37, align 8
  br label %38

38:                                               ; preds = %33, %1
  ret void
}

declare dso_local i64 @media_devnode_is_registered(i32) #1

declare dso_local i32 @media_devnode_remove(i32) #1

declare dso_local i32 @media_device_unregister_entity(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.media_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
