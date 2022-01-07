; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { %struct.TYPE_3__*, i32, i32, i64, i64, i32* }
%struct.TYPE_3__ = type { i32 }

@snd_usb_use_vmalloc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usb_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %8, align 8
  store %struct.snd_usb_substream* %9, %struct.snd_usb_substream** %4, align 8
  %10 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %11 = call i32 @snd_media_stop_pipeline(%struct.snd_usb_substream* %10)
  %12 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_usb_lock_shutdown(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %1
  %26 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %27 = call i32 @stop_endpoints(%struct.snd_usb_substream* %26, i32 1)
  %28 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_usb_endpoint_deactivate(i32 %30)
  %32 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_usb_endpoint_deactivate(i32 %34)
  %36 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %37 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_usb_unlock_shutdown(i32 %40)
  br label %42

42:                                               ; preds = %25, %1
  %43 = load i64, i64* @snd_usb_use_vmalloc, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = call i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream* %46)
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %50 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @snd_media_stop_pipeline(%struct.snd_usb_substream*) #1

declare dso_local i32 @snd_usb_lock_shutdown(i32) #1

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @snd_usb_endpoint_deactivate(i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(i32) #1

declare dso_local i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
