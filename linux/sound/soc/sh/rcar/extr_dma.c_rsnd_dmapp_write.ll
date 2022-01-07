; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dma = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma_ctrl = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"w 0x%px : %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dma*, i32, i32)* @rsnd_dmapp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_dmapp_write(%struct.rsnd_dma* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rsnd_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca %struct.rsnd_priv*, align 8
  %9 = alloca %struct.rsnd_dma_ctrl*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.rsnd_dma* %0, %struct.rsnd_dma** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rsnd_dma*, %struct.rsnd_dma** %4, align 8
  %12 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_dma* %11)
  store %struct.rsnd_mod* %12, %struct.rsnd_mod** %7, align 8
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %14 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %13)
  store %struct.rsnd_priv* %14, %struct.rsnd_priv** %8, align 8
  %15 = load %struct.rsnd_priv*, %struct.rsnd_priv** %8, align 8
  %16 = call %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv* %15)
  store %struct.rsnd_dma_ctrl* %16, %struct.rsnd_dma_ctrl** %9, align 8
  %17 = load %struct.rsnd_priv*, %struct.rsnd_priv** %8, align 8
  %18 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %17)
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.device*, %struct.device** %10, align 8
  %20 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %9, align 8
  %21 = load %struct.rsnd_dma*, %struct.rsnd_dma** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rsnd_dmapp_addr(%struct.rsnd_dma_ctrl* %20, %struct.rsnd_dma* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %9, align 8
  %28 = load %struct.rsnd_dma*, %struct.rsnd_dma** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rsnd_dmapp_addr(%struct.rsnd_dma_ctrl* %27, %struct.rsnd_dma* %28, i32 %29)
  %31 = call i32 @iowrite32(i32 %26, i32 %30)
  ret void
}

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_dma*) #1

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @rsnd_dmapp_addr(%struct.rsnd_dma_ctrl*, %struct.rsnd_dma*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
