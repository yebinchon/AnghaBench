; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32, i32, i64, i32, i64, i8*, i64, i8*, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.fsi_master = type { i32 }

@init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, %struct.fsi_stream*, %struct.snd_pcm_substream*)* @fsi_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_stream_init(%struct.fsi_priv* %0, %struct.fsi_stream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.fsi_priv*, align 8
  %5 = alloca %struct.fsi_stream*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.fsi_master*, align 8
  %9 = alloca i64, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %4, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %14 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %13)
  store %struct.fsi_master* %14, %struct.fsi_master** %8, align 8
  %15 = load %struct.fsi_master*, %struct.fsi_master** %8, align 8
  %16 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %20 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %21 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %20, i32 0, i32 8
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %21, align 8
  %22 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @fsi_frame2sample(%struct.fsi_priv* %22, i32 %25)
  %27 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %28 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %30 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @fsi_frame2sample(%struct.fsi_priv* %31, i32 %34)
  %36 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %37 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %39 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %41 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %40, i32 1)
  %42 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %43 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %45 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %47 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %49 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  %50 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %51 = load i32, i32* @init, align 4
  %52 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %53 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %54 = call i32 @fsi_stream_handler_call(%struct.fsi_stream* %50, i32 %51, %struct.fsi_priv* %52, %struct.fsi_stream* %53)
  %55 = load %struct.fsi_master*, %struct.fsi_master** %8, align 8
  %56 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @fsi_frame2sample(%struct.fsi_priv*, i32) #1

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fsi_stream_handler_call(%struct.fsi_stream*, i32, %struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
