; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }

@PACKAGE_24BITBUS_BACK = common dso_local global i32 0, align 4
@PACKAGE_16BITBUS_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*)* @fsi_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dma_init(%struct.fsi_priv* %0, %struct.fsi_stream* %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_stream*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %4, align 8
  %5 = load i32, i32* @PACKAGE_24BITBUS_BACK, align 4
  %6 = call i32 @BUSOP_SET(i32 24, i32 %5)
  %7 = load i32, i32* @PACKAGE_16BITBUS_STREAM, align 4
  %8 = call i32 @BUSOP_SET(i32 16, i32 %7)
  %9 = or i32 %6, %8
  %10 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %11 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret i32 0
}

declare dso_local i32 @BUSOP_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
