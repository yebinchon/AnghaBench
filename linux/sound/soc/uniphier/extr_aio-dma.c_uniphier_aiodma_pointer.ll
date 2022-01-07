; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_uniphier_aiodma_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_uniphier_aiodma_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @uniphier_aiodma_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aiodma_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.uniphier_aio*, align 8
  %6 = alloca %struct.uniphier_aio_sub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %4, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.uniphier_aio* @uniphier_priv(i32 %17)
  store %struct.uniphier_aio* %18, %struct.uniphier_aio** %5, align 8
  %19 = load %struct.uniphier_aio*, %struct.uniphier_aio** %5, align 8
  %20 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %19, i32 0, i32 0
  %21 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %20, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %21, i64 %24
  store %struct.uniphier_aio_sub* %25, %struct.uniphier_aio_sub** %6, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %34 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %33, i32 1)
  %35 = mul nsw i32 %32, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %37 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @aiodma_rb_sync(%struct.uniphier_aio_sub* %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %50 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %58 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %59 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %57, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %68

62:                                               ; preds = %1
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %65 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %63, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %70 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %69, i32 0, i32 0
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aiodma_rb_sync(%struct.uniphier_aio_sub*, i32, i32, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
