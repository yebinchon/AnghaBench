; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_uniphier_aiodma_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_uniphier_aiodma_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.uniphier_aio = type { %struct.TYPE_4__*, %struct.uniphier_aio_sub* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_aio_sub = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unknown trigger(%d) ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @uniphier_aiodma_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aiodma_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.uniphier_aio*, align 8
  %8 = alloca %struct.uniphier_aio_sub*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.uniphier_aio* @uniphier_priv(i32 %19)
  store %struct.uniphier_aio* %20, %struct.uniphier_aio** %7, align 8
  %21 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %22 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %21, i32 0, i32 1
  %23 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %22, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %23, i64 %26
  store %struct.uniphier_aio_sub* %27, %struct.uniphier_aio_sub** %8, align 8
  %28 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.device* %33, %struct.device** %9, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %42 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %41, i32 1)
  %43 = mul nsw i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %45 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %44, i32 0, i32 1
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %68 [
    i32 129, label %49
    i32 128, label %63
  ]

49:                                               ; preds = %2
  %50 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @aiodma_rb_sync(%struct.uniphier_aio_sub* %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %60 = call i32 @aiodma_ch_set_enable(%struct.uniphier_aio_sub* %59, i32 1)
  %61 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %62 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %72

63:                                               ; preds = %2
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %65 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %67 = call i32 @aiodma_ch_set_enable(%struct.uniphier_aio_sub* %66, i32 0)
  br label %72

68:                                               ; preds = %2
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_warn(%struct.device* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %63, %49
  %73 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %74 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %73, i32 0, i32 1
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  ret i32 0
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aiodma_rb_sync(%struct.uniphier_aio_sub*, i32, i32, i32) #1

declare dso_local i32 @aiodma_ch_set_enable(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
