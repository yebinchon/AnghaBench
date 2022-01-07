; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_aiodma_compr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_aiodma_compr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.snd_compr_runtime* }
%struct.snd_compr_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_aio_sub*)* @aiodma_compr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aiodma_compr_irq(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca %struct.uniphier_aio_sub*, align 8
  %3 = alloca %struct.snd_compr_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %2, align 8
  %6 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %7 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %9, align 8
  store %struct.snd_compr_runtime* %10, %struct.snd_compr_runtime** %3, align 8
  %11 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %15 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %18 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %19 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %22 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub* %17, i32 %20, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %34 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %40 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %43 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @aiodma_rb_sync(%struct.uniphier_aio_sub* %38, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %48 = call i32 @aiodma_rb_clear_irq(%struct.uniphier_aio_sub* %47)
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %50 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %2, align 8
  %53 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @snd_compr_fragment_elapsed(%struct.TYPE_2__* %54)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub*, i32, i64) #1

declare dso_local i32 @aiodma_rb_sync(%struct.uniphier_aio_sub*, i32, i32, i32) #1

declare dso_local i32 @aiodma_rb_clear_irq(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_compr_fragment_elapsed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
