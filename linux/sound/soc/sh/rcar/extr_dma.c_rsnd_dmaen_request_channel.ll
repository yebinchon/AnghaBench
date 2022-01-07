; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_request_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_request_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*, %struct.rsnd_mod*)* @rsnd_dmaen_request_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @rsnd_dmaen_request_channel(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1, %struct.rsnd_mod* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %6, align 8
  store %struct.rsnd_mod* %2, %struct.rsnd_mod** %7, align 8
  %8 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %9 = icmp ne %struct.rsnd_mod* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %12 = icmp ne %struct.rsnd_mod* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10, %3
  %14 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %15 = icmp ne %struct.rsnd_mod* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %18 = icmp ne %struct.rsnd_mod* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %10
  store %struct.dma_chan* null, %struct.dma_chan** %4, align 8
  br label %31

20:                                               ; preds = %16, %13
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %22 = icmp ne %struct.rsnd_mod* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %25 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %26 = call %struct.dma_chan* @rsnd_mod_dma_req(%struct.rsnd_dai_stream* %24, %struct.rsnd_mod* %25)
  store %struct.dma_chan* %26, %struct.dma_chan** %4, align 8
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %29 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %30 = call %struct.dma_chan* @rsnd_mod_dma_req(%struct.rsnd_dai_stream* %28, %struct.rsnd_mod* %29)
  store %struct.dma_chan* %30, %struct.dma_chan** %4, align 8
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  ret %struct.dma_chan* %32
}

declare dso_local %struct.dma_chan* @rsnd_mod_dma_req(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
