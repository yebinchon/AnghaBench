; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*, %struct.rsnd_mod*, i32, i32)* @rsnd_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dma_addr(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsnd_priv*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %12 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %11)
  store %struct.rsnd_priv* %12, %struct.rsnd_priv** %10, align 8
  %13 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %14 = call i64 @rsnd_is_gen1(%struct.rsnd_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %19 = icmp ne %struct.rsnd_mod* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %27

21:                                               ; preds = %17
  %22 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %23 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rsnd_gen2_dma_addr(%struct.rsnd_dai_stream* %22, %struct.rsnd_mod* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %20, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_is_gen1(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_gen2_dma_addr(%struct.rsnd_dai_stream*, %struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
