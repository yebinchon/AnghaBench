; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma = type { i32 }

@PDMACHCR_DE = common dso_local global i32 0, align 4
@PDMACHCR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_dmapp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmapp_stop(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_dma*, align 8
  %9 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod* %10)
  store %struct.rsnd_dma* %11, %struct.rsnd_dma** %8, align 8
  %12 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %13 = load i32, i32* @PDMACHCR_DE, align 4
  %14 = load i32, i32* @PDMACHCR, align 4
  %15 = call i32 @rsnd_dmapp_bset(%struct.rsnd_dma* %12, i32 0, i32 %13, i32 %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %29, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %21 = load i32, i32* @PDMACHCR, align 4
  %22 = call i32 @rsnd_dmapp_read(%struct.rsnd_dma* %20, i32 %21)
  %23 = load i32, i32* @PDMACHCR_DE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %35

27:                                               ; preds = %19
  %28 = call i32 @udelay(i32 1)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_dmapp_bset(%struct.rsnd_dma*, i32, i32, i32) #1

declare dso_local i32 @rsnd_dmapp_read(%struct.rsnd_dma*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
