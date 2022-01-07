; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.idma_ctrl* }
%struct.idma_ctrl = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @idma_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.idma_ctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.idma_ctrl*, %struct.idma_ctrl** %11, align 8
  store %struct.idma_ctrl* %12, %struct.idma_ctrl** %4, align 8
  %13 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %14 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = call i32 @idma_getpos(i64* %5)
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %27, i64 %28)
  ret i32 %29
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idma_getpos(i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
