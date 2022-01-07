; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_enqueue_next_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_bcom_enqueue_next_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psc_dma_stream = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bcom_bd = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psc_dma_stream*)* @psc_dma_bcom_enqueue_next_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc_dma_bcom_enqueue_next_buffer(%struct.psc_dma_stream* %0) #0 {
  %2 = alloca %struct.psc_dma_stream*, align 8
  %3 = alloca %struct.bcom_bd*, align 8
  store %struct.psc_dma_stream* %0, %struct.psc_dma_stream** %2, align 8
  %4 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %5 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.bcom_bd* @bcom_prepare_next_buffer(i32 %6)
  store %struct.bcom_bd* %7, %struct.bcom_bd** %3, align 8
  %8 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %9 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.bcom_bd*, %struct.bcom_bd** %3, align 8
  %12 = getelementptr inbounds %struct.bcom_bd, %struct.bcom_bd* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %14 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %19 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %22 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %17, %25
  %27 = load %struct.bcom_bd*, %struct.bcom_bd** %3, align 8
  %28 = getelementptr inbounds %struct.bcom_bd, %struct.bcom_bd* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %26, i64* %30, align 8
  %31 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %32 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bcom_submit_next_buffer(i32 %33, i32* null)
  %35 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %36 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %40 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %38, %43
  %45 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %2, align 8
  %46 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local %struct.bcom_bd* @bcom_prepare_next_buffer(i32) #1

declare dso_local i32 @bcom_submit_next_buffer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
