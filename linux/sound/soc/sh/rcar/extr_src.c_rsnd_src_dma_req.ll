; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_dma_req.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_dma_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_src_dma_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @rsnd_src_dma_req(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %7 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %8 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %7)
  store %struct.rsnd_priv* %8, %struct.rsnd_priv** %5, align 8
  %9 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %10 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %12 = call i32 @rsnd_src_of_node(%struct.rsnd_priv* %11)
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %18 = call %struct.dma_chan* @rsnd_dma_request_channel(i32 %12, %struct.rsnd_mod* %13, i8* %17)
  ret %struct.dma_chan* %18
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.dma_chan* @rsnd_dma_request_channel(i32, %struct.rsnd_mod*, i8*) #1

declare dso_local i32 @rsnd_src_of_node(%struct.rsnd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
