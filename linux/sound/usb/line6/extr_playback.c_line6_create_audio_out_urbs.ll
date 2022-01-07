; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_line6_create_audio_out_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_line6_create_audio_out_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { %struct.TYPE_3__, %struct.usb_line6* }
%struct.TYPE_3__ = type { %struct.urb** }
%struct.urb = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.usb_line6 = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@LINE6_ISO_INTERVAL = common dso_local global i32 0, align 4
@audio_out_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_create_audio_out_urbs(%struct.snd_line6_pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %3, align 8
  %7 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %8 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %7, i32 0, i32 1
  %9 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  store %struct.usb_line6* %9, %struct.usb_line6** %4, align 8
  %10 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %11 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.urb** @kcalloc(i32 %12, i32 8, i32 %13)
  %15 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %16 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.urb** %14, %struct.urb*** %17, align 8
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %19 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.urb**, %struct.urb*** %20, align 8
  %22 = icmp eq %struct.urb** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %88

26:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %84, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %30 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.urb* @usb_alloc_urb(i32 %34, i32 %35)
  %37 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %38 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.urb**, %struct.urb*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.urb*, %struct.urb** %40, i64 %42
  store %struct.urb* %36, %struct.urb** %43, align 8
  store %struct.urb* %36, %struct.urb** %6, align 8
  %44 = load %struct.urb*, %struct.urb** %6, align 8
  %45 = icmp eq %struct.urb* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %88

49:                                               ; preds = %33
  %50 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %51 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %56 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %59 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @usb_sndisocpipe(i32 %57, i32 %64)
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @URB_ISO_ASAP, align 4
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.urb*, %struct.urb** %6, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @LINE6_ISO_INTERVAL, align 4
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.urb*, %struct.urb** %6, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @audio_out_callback, align 4
  %82 = load %struct.urb*, %struct.urb** %6, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %49
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %27

87:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %46, %23
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.urb** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
