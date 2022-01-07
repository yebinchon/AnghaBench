; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_aiodma_pcm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_aiodma_pcm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_aio_sub*)* @aiodma_pcm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aiodma_pcm_irq(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca %struct.uniphier_aio_sub*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %2, align 8
  %6 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %7 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %3, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %19 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %18, i32 1)
  %20 = mul nsw i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %22 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub* %24, i32 %27, i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %41 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @aiodma_rb_sync(%struct.uniphier_aio_sub* %45, i32 %48, i32 %51, i32 %52)
  %54 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %55 = call i32 @aiodma_rb_clear_irq(%struct.uniphier_aio_sub* %54)
  %56 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %57 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %60 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_2__* %61)
  ret void
}

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub*, i32, i64) #1

declare dso_local i32 @aiodma_rb_sync(%struct.uniphier_aio_sub*, i32, i32, i32) #1

declare dso_local i32 @aiodma_rb_clear_irq(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
