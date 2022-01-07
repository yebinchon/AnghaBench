; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_attach.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_dma = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma_ctrl = type { i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)* @rsnd_dmaen_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmaen_attach(%struct.rsnd_dai_stream* %0, %struct.rsnd_dma* %1, %struct.rsnd_mod* %2, %struct.rsnd_mod* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_dma*, align 8
  %8 = alloca %struct.rsnd_mod*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  %10 = alloca %struct.rsnd_priv*, align 8
  %11 = alloca %struct.rsnd_dma_ctrl*, align 8
  %12 = alloca %struct.dma_chan*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_dma* %1, %struct.rsnd_dma** %7, align 8
  store %struct.rsnd_mod* %2, %struct.rsnd_mod** %8, align 8
  store %struct.rsnd_mod* %3, %struct.rsnd_mod** %9, align 8
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %14 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %13)
  store %struct.rsnd_priv* %14, %struct.rsnd_priv** %10, align 8
  %15 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %16 = call %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv* %15)
  store %struct.rsnd_dma_ctrl* %16, %struct.rsnd_dma_ctrl** %11, align 8
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %19 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %20 = call %struct.dma_chan* @rsnd_dmaen_request_channel(%struct.rsnd_dai_stream* %17, %struct.rsnd_mod* %18, %struct.rsnd_mod* %19)
  store %struct.dma_chan* %20, %struct.dma_chan** %12, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %22 = call i64 @IS_ERR_OR_NULL(%struct.dma_chan* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.dma_chan* %25)
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %32 = call i32 @PTR_ERR(%struct.dma_chan* %31)
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %24
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %50

36:                                               ; preds = %4
  %37 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %38 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %43 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %45 = call i32 @dma_release_channel(%struct.dma_chan* %44)
  %46 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %47 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %36, %33, %30
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv*) #1

declare dso_local %struct.dma_chan* @rsnd_dmaen_request_channel(%struct.rsnd_dai_stream*, %struct.rsnd_mod*, %struct.rsnd_mod*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
