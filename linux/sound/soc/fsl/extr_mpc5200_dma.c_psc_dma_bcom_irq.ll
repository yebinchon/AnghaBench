; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psc_dma_stream = type { i32, i32, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @psc_dma_bcom_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_bcom_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.psc_dma_stream*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.psc_dma_stream*
  store %struct.psc_dma_stream* %7, %struct.psc_dma_stream** %5, align 8
  %8 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %9 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %19, %2
  %14 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %15 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @bcom_buffer_done(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %21 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bcom_retrieve_buffer(i32 %22, i32* null, i32* null)
  %24 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %25 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %29 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %27, %32
  %34 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %35 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %37 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %41 = call i32 @psc_dma_bcom_enqueue_next_buffer(%struct.psc_dma_stream* %40)
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %44 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %49 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %54 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_pcm_period_elapsed(i32 %55)
  br label %57

57:                                               ; preds = %52, %42
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bcom_buffer_done(i32) #1

declare dso_local i32 @bcom_retrieve_buffer(i32, i32*, i32*) #1

declare dso_local i32 @psc_dma_bcom_enqueue_next_buffer(%struct.psc_dma_stream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
