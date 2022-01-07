; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { %struct.atmel_pcm_dma_params**, %struct.TYPE_3__* }
%struct.atmel_pcm_dma_params = type { i32, i32 (i32, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_ssc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_ssc_info*, align 8
  %6 = alloca %struct.atmel_pcm_dma_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.atmel_ssc_info*
  store %struct.atmel_ssc_info* %11, %struct.atmel_ssc_info** %5, align 8
  %12 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SR, align 4
  %18 = call i64 @ssc_readl(i32 %16, i32 %17)
  %19 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %5, align 8
  %20 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IMR, align 4
  %25 = call i64 @ssc_readl(i32 %23, i32 %24)
  %26 = and i64 %18, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %77, %2
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %30, i32 0, i32 0
  %32 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.atmel_pcm_dma_params** %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %28
  %36 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %5, align 8
  %37 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %36, i32 0, i32 0
  %38 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %38, i64 %40
  %42 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %41, align 8
  store %struct.atmel_pcm_dma_params* %42, %struct.atmel_pcm_dma_params** %6, align 8
  %43 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %44 = icmp ne %struct.atmel_pcm_dma_params* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %35
  %46 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %47 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %46, i32 0, i32 1
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = icmp ne i32 (i32, i32)* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %52 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %50
  %67 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %67, i32 0, i32 1
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %50
  br label %76

76:                                               ; preds = %75, %45, %35
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %28

80:                                               ; preds = %28
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i64 @ssc_readl(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.atmel_pcm_dma_params**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
