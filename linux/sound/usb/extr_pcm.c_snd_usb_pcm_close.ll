; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_usb_stream = type { %struct.TYPE_3__*, %struct.snd_usb_substream* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_usb_substream = type { i32, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@UAC3_PD_STATE_D1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usb_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_stream*, align 8
  %6 = alloca %struct.snd_usb_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_usb_stream* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_usb_stream* %12, %struct.snd_usb_stream** %5, align 8
  %13 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %13, i32 0, i32 1
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i64 %17
  store %struct.snd_usb_substream* %18, %struct.snd_usb_substream** %6, align 8
  %19 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %20 = call i32 @stop_endpoints(%struct.snd_usb_substream* %19, i32 1)
  %21 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %22 = call i32 @snd_media_stop_pipeline(%struct.snd_usb_substream* %21)
  %23 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %24 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %1
  %30 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %31 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %36 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_usb_lock_shutdown(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %34
  %43 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %44 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %47 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_set_interface(i32 %45, i32 %48, i32 0)
  %50 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %51 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %53 = load i32, i32* @UAC3_PD_STATE_D1, align 4
  %54 = call i32 @snd_usb_pcm_change_state(%struct.snd_usb_substream* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %56 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_usb_unlock_shutdown(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %42
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %34, %29, %1
  %67 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %68 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %70 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @snd_usb_autosuspend(i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %66, %63
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.snd_usb_stream* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @snd_media_stop_pipeline(%struct.snd_usb_substream*) #1

declare dso_local i32 @snd_usb_lock_shutdown(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @snd_usb_pcm_change_state(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(i32) #1

declare dso_local i32 @snd_usb_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
