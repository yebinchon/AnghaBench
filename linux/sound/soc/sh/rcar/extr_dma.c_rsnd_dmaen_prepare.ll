; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma = type { i32, i32 }
%struct.rsnd_dmaen = type { i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"can't get dma channel\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_dmaen_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmaen_prepare(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_dma*, align 8
  %9 = alloca %struct.rsnd_dmaen*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %12 = call %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod* %11)
  store %struct.rsnd_dma* %12, %struct.rsnd_dma** %8, align 8
  %13 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %14 = call %struct.rsnd_dmaen* @rsnd_dma_to_dmaen(%struct.rsnd_dma* %13)
  store %struct.rsnd_dmaen* %14, %struct.rsnd_dmaen** %9, align 8
  %15 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %16 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %15)
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %18 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %24 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %25 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %28 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @rsnd_dmaen_request_channel(%struct.rsnd_dai_stream* %23, i32 %26, i32 %29)
  %31 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %32 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %34 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR_OR_NULL(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %40 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.device*, %struct.device** %10, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %38, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_dmaen* @rsnd_dma_to_dmaen(%struct.rsnd_dma*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32* @rsnd_dmaen_request_channel(%struct.rsnd_dai_stream*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
