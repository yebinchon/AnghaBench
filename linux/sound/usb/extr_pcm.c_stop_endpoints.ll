; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_stop_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_stop_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, i32, i32 }

@SUBSTREAM_FLAG_SYNC_EP_STARTED = common dso_local global i32 0, align 4
@SUBSTREAM_FLAG_DATA_EP_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, i32)* @stop_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_endpoints(%struct.snd_usb_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SUBSTREAM_FLAG_SYNC_EP_STARTED, align 4
  %6 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %6, i32 0, i32 2
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_usb_endpoint_stop(i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @SUBSTREAM_FLAG_DATA_EP_STARTED, align 4
  %17 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %17, i32 0, i32 2
  %19 = call i64 @test_and_clear_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_usb_endpoint_stop(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_usb_endpoint_sync_pending_stop(i32 %32)
  %34 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_usb_endpoint_sync_pending_stop(i32 %36)
  br label %38

38:                                               ; preds = %29, %26
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @snd_usb_endpoint_stop(i32) #1

declare dso_local i32 @snd_usb_endpoint_sync_pending_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
