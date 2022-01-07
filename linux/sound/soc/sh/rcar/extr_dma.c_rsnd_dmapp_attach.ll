; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_dma = type { i32, i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_dmapp = type { i32, i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma_ctrl = type { i32 }
%struct.device = type { i32 }

@PDMACHCR_DE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"id/src/dst/chcr = %d/%pad/%pad/%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)* @rsnd_dmapp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmapp_attach(%struct.rsnd_dai_stream* %0, %struct.rsnd_dma* %1, %struct.rsnd_mod* %2, %struct.rsnd_mod* %3) #0 {
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_dma*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca %struct.rsnd_mod*, align 8
  %9 = alloca %struct.rsnd_dmapp*, align 8
  %10 = alloca %struct.rsnd_priv*, align 8
  %11 = alloca %struct.rsnd_dma_ctrl*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_dma* %1, %struct.rsnd_dma** %6, align 8
  store %struct.rsnd_mod* %2, %struct.rsnd_mod** %7, align 8
  store %struct.rsnd_mod* %3, %struct.rsnd_mod** %8, align 8
  %13 = load %struct.rsnd_dma*, %struct.rsnd_dma** %6, align 8
  %14 = call %struct.rsnd_dmapp* @rsnd_dma_to_dmapp(%struct.rsnd_dma* %13)
  store %struct.rsnd_dmapp* %14, %struct.rsnd_dmapp** %9, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %16 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %15)
  store %struct.rsnd_priv* %16, %struct.rsnd_priv** %10, align 8
  %17 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %18 = call %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv* %17)
  store %struct.rsnd_dma_ctrl* %18, %struct.rsnd_dma_ctrl** %11, align 8
  %19 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %20 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %19)
  store %struct.device* %20, %struct.device** %12, align 8
  %21 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %22 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rsnd_dmapp*, %struct.rsnd_dmapp** %9, align 8
  %25 = getelementptr inbounds %struct.rsnd_dmapp, %struct.rsnd_dmapp* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %27 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %28 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %29 = call i32 @rsnd_dmapp_get_chcr(%struct.rsnd_dai_stream* %26, %struct.rsnd_mod* %27, %struct.rsnd_mod* %28)
  %30 = load i32, i32* @PDMACHCR_DE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.rsnd_dmapp*, %struct.rsnd_dmapp** %9, align 8
  %33 = getelementptr inbounds %struct.rsnd_dmapp, %struct.rsnd_dmapp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %35 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.device*, %struct.device** %12, align 8
  %39 = load %struct.rsnd_dmapp*, %struct.rsnd_dmapp** %9, align 8
  %40 = getelementptr inbounds %struct.rsnd_dmapp, %struct.rsnd_dmapp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rsnd_dma*, %struct.rsnd_dma** %6, align 8
  %43 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %42, i32 0, i32 1
  %44 = load %struct.rsnd_dma*, %struct.rsnd_dma** %6, align 8
  %45 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %44, i32 0, i32 0
  %46 = load %struct.rsnd_dmapp*, %struct.rsnd_dmapp** %9, align 8
  %47 = getelementptr inbounds %struct.rsnd_dmapp, %struct.rsnd_dmapp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32* %43, i32* %45, i32 %48)
  ret i32 0
}

declare dso_local %struct.rsnd_dmapp* @rsnd_dma_to_dmapp(%struct.rsnd_dma*) #1

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_dmapp_get_chcr(%struct.rsnd_dai_stream*, %struct.rsnd_mod*, %struct.rsnd_mod*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
