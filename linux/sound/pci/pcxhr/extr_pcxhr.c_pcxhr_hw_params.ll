; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pcxhr_stream* }
%struct.pcxhr_stream = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcxhr = type { %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @pcxhr_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca %struct.pcxhr_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_pcxhr* %12, %struct.snd_pcxhr** %5, align 8
  %13 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %13, i32 0, i32 0
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %14, align 8
  store %struct.pcxhr_mgr* %15, %struct.pcxhr_mgr** %6, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %19, align 8
  store %struct.pcxhr_stream* %20, %struct.pcxhr_stream** %7, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i32 @params_channels(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %24 = call i32 @params_format(%struct.snd_pcm_hw_params* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %26 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %30 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %33 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %36 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %35)
  %37 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %39 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
