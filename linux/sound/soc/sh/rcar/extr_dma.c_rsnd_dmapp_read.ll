; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dma = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dma*, i32)* @rsnd_dmapp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmapp_read(%struct.rsnd_dma* %0, i32 %1) #0 {
  %3 = alloca %struct.rsnd_dma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.rsnd_dma_ctrl*, align 8
  store %struct.rsnd_dma* %0, %struct.rsnd_dma** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rsnd_dma*, %struct.rsnd_dma** %3, align 8
  %9 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_dma* %8)
  store %struct.rsnd_mod* %9, %struct.rsnd_mod** %5, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %10)
  store %struct.rsnd_priv* %11, %struct.rsnd_priv** %6, align 8
  %12 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %13 = call %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv* %12)
  store %struct.rsnd_dma_ctrl* %13, %struct.rsnd_dma_ctrl** %7, align 8
  %14 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %7, align 8
  %15 = load %struct.rsnd_dma*, %struct.rsnd_dma** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rsnd_dmapp_addr(%struct.rsnd_dma_ctrl* %14, %struct.rsnd_dma* %15, i32 %16)
  %18 = call i32 @ioread32(i32 %17)
  ret i32 %18
}

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_dma*) #1

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv*) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @rsnd_dmapp_addr(%struct.rsnd_dma_ctrl*, %struct.rsnd_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
