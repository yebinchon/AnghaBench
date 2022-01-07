; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_uniphier_aiodma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_uniphier_aiodma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i64, i64 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @uniphier_aiodma_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aiodma_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.uniphier_aio*, align 8
  %7 = alloca %struct.uniphier_aio_sub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = call %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %14)
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.uniphier_aio* @uniphier_priv(i32 %18)
  store %struct.uniphier_aio* %19, %struct.uniphier_aio** %6, align 8
  %20 = load %struct.uniphier_aio*, %struct.uniphier_aio** %6, align 8
  %21 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %20, i32 0, i32 0
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %21, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i64 %25
  store %struct.uniphier_aio_sub* %26, %struct.uniphier_aio_sub** %7, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %34, i32 1)
  %36 = mul nsw i32 %33, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %38 = call i32 @aiodma_ch_set_param(%struct.uniphier_aio_sub* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %70

43:                                               ; preds = %1
  %44 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %45 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @aiodma_rb_set_buffer(%struct.uniphier_aio_sub* %48, i64 %51, i64 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %62 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %61, i32 0, i32 0
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %43
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67, %41
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @aiodma_ch_set_param(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aiodma_rb_set_buffer(%struct.uniphier_aio_sub*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
