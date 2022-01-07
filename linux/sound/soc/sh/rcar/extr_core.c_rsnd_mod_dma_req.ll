; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_dma_req.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_dma_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_chan* @rsnd_mod_dma_req(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %4, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %5, align 8
  %6 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %7 = icmp ne %struct.rsnd_mod* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %10 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %15 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)**
  %19 = load %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)*, %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)** %18, align 8
  %20 = icmp ne %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13, %8, %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %32

22:                                               ; preds = %13
  %23 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %24 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)**
  %28 = load %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)*, %struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)** %27, align 8
  %29 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %30 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %31 = call %struct.dma_chan* %28(%struct.rsnd_dai_stream* %29, %struct.rsnd_mod* %30)
  store %struct.dma_chan* %31, %struct.dma_chan** %3, align 8
  br label %32

32:                                               ; preds = %22, %21
  %33 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
