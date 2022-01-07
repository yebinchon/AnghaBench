; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_compr_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_runtime = type { %struct.sprd_compr_stream* }
%struct.sprd_compr_stream = type { i32, %struct.TYPE_2__*, i32, i32, %struct.sprd_compr_dma* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.sprd_compr_dma = type { i32* }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @sprd_platform_compr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_platform_compr_free(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca %struct.snd_compr_stream*, align 8
  %3 = alloca %struct.snd_compr_runtime*, align 8
  %4 = alloca %struct.sprd_compr_stream*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sprd_compr_dma*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %2, align 8
  %11 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %11, i32 0, i32 2
  %13 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %12, align 8
  store %struct.snd_compr_runtime* %13, %struct.snd_compr_runtime** %3, align 8
  %14 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %14, i32 0, i32 0
  %16 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %15, align 8
  store %struct.sprd_compr_stream* %16, %struct.sprd_compr_stream** %4, align 8
  %17 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %18, align 8
  store %struct.snd_soc_pcm_runtime* %19, %struct.snd_soc_pcm_runtime** %5, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %21 = load i32, i32* @DRV_NAME, align 4
  %22 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %20, i32 %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %6, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %7, align 8
  %26 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %27 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %54, %1
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %4, align 8
  %32 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %4, align 8
  %37 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %36, i32 0, i32 4
  %38 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %38, i64 %40
  store %struct.sprd_compr_dma* %41, %struct.sprd_compr_dma** %10, align 8
  %42 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %10, align 8
  %43 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %10, align 8
  %48 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dma_release_channel(i32* %49)
  %51 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %10, align 8
  %52 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %4, align 8
  %59 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %58, i32 0, i32 3
  %60 = call i32 @snd_dma_free_pages(i32* %59)
  %61 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %4, align 8
  %62 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %61, i32 0, i32 2
  %63 = call i32 @snd_dma_free_pages(i32* %62)
  %64 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %4, align 8
  %65 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 %68(i32 %69)
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %4, align 8
  %73 = call i32 @devm_kfree(%struct.device* %71, %struct.sprd_compr_stream* %72)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.sprd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
