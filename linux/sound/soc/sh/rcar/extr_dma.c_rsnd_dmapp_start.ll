; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma = type { i32, i32 }
%struct.rsnd_dmapp = type { i32 }

@PDMASAR = common dso_local global i32 0, align 4
@PDMADAR = common dso_local global i32 0, align 4
@PDMACHCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_dmapp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmapp_start(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.rsnd_dma*, align 8
  %8 = alloca %struct.rsnd_dmapp*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %6, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %10 = call %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod* %9)
  store %struct.rsnd_dma* %10, %struct.rsnd_dma** %7, align 8
  %11 = load %struct.rsnd_dma*, %struct.rsnd_dma** %7, align 8
  %12 = call %struct.rsnd_dmapp* @rsnd_dma_to_dmapp(%struct.rsnd_dma* %11)
  store %struct.rsnd_dmapp* %12, %struct.rsnd_dmapp** %8, align 8
  %13 = load %struct.rsnd_dma*, %struct.rsnd_dma** %7, align 8
  %14 = load %struct.rsnd_dma*, %struct.rsnd_dma** %7, align 8
  %15 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PDMASAR, align 4
  %18 = call i32 @rsnd_dmapp_write(%struct.rsnd_dma* %13, i32 %16, i32 %17)
  %19 = load %struct.rsnd_dma*, %struct.rsnd_dma** %7, align 8
  %20 = load %struct.rsnd_dma*, %struct.rsnd_dma** %7, align 8
  %21 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PDMADAR, align 4
  %24 = call i32 @rsnd_dmapp_write(%struct.rsnd_dma* %19, i32 %22, i32 %23)
  %25 = load %struct.rsnd_dma*, %struct.rsnd_dma** %7, align 8
  %26 = load %struct.rsnd_dmapp*, %struct.rsnd_dmapp** %8, align 8
  %27 = getelementptr inbounds %struct.rsnd_dmapp, %struct.rsnd_dmapp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PDMACHCR, align 4
  %30 = call i32 @rsnd_dmapp_write(%struct.rsnd_dma* %25, i32 %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_dmapp* @rsnd_dma_to_dmapp(%struct.rsnd_dma*) #1

declare dso_local i32 @rsnd_dmapp_write(%struct.rsnd_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
