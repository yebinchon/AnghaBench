; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_usb_substream*, i32 }
%struct.snd_usb_substream = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.snd_pcm_substream*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.snd_usb_stream = type { i32, %struct.snd_usb_substream* }

@snd_usb_hardware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usb_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_stream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_usb_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call %struct.snd_usb_stream* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_usb_stream* %12, %struct.snd_usb_stream** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %5, align 8
  %16 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %16, i32 0, i32 1
  %18 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %18, i64 %20
  store %struct.snd_usb_substream* %21, %struct.snd_usb_substream** %6, align 8
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %23 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @snd_usb_hardware, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  store %struct.snd_usb_substream* %29, %struct.snd_usb_substream** %31, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %34 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %33, i32 0, i32 3
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %34, align 8
  %35 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %36 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %39 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %42 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %46 = call i32 @setup_hw_info(%struct.snd_pcm_runtime* %44, %struct.snd_usb_substream* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %1
  %50 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %51 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @snd_media_stream_init(%struct.snd_usb_substream* %50, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %60 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snd_usb_autosuspend(i32 %63)
  br label %65

65:                                               ; preds = %58, %49
  br label %66

66:                                               ; preds = %65, %1
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.snd_usb_stream* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @setup_hw_info(%struct.snd_pcm_runtime*, %struct.snd_usb_substream*) #1

declare dso_local i32 @snd_media_stream_init(%struct.snd_usb_substream*, i32, i32) #1

declare dso_local i32 @snd_usb_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
