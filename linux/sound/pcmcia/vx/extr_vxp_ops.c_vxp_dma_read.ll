; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }
%struct.snd_vxpocket = type { i32 }

@VX_DMA = common dso_local global i32 0, align 4
@VXP_DLG_DMAREAD_SEL_MASK = common dso_local global i32 0, align 4
@DIALOG = common dso_local global i32 0, align 4
@VXP_DLG_DMA16_SEL_MASK = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vxp_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_dma_read(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_vxpocket*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %15 = call %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core* %14)
  store %struct.snd_vxpocket* %15, %struct.snd_vxpocket** %9, align 8
  %16 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %17 = load i32, i32* @VX_DMA, align 4
  %18 = call i64 @vxp_reg_addr(%struct.vx_core* %16, i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %20 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to i16*
  store i16* %28, i16** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 2
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %126

34:                                               ; preds = %4
  %35 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %36 = call i32 @vx_setup_pseudo_dma(%struct.vx_core* %35, i32 0)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %41 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %34
  %45 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %46 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %64, %44
  %56 = load i32, i32* %13, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i64, i64* %10, align 8
  %60 = call i8* @inw(i64 %59)
  %61 = ptrtoint i8* %60 to i16
  %62 = load i16*, i16** %12, align 8
  %63 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %63, i16** %12, align 8
  store i16 %61, i16* %62, align 2
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %13, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i16*
  store i16* %71, i16** %12, align 8
  %72 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %73 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %34
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %77 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %91, %74
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = call i8* @inw(i64 %86)
  %88 = ptrtoint i8* %87 to i16
  %89 = load i16*, i16** %12, align 8
  %90 = getelementptr inbounds i16, i16* %89, i32 1
  store i16* %90, i16** %12, align 8
  store i16 %88, i16* %89, align 2
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %8, align 4
  br label %82

94:                                               ; preds = %82
  %95 = load i32, i32* @VXP_DLG_DMAREAD_SEL_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %98 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %102 = load i32, i32* @DIALOG, align 4
  %103 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %104 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vx_outb(%struct.vx_core* %101, i32 %102, i32 %105)
  %107 = load i64, i64* %10, align 8
  %108 = call i8* @inw(i64 %107)
  %109 = ptrtoint i8* %108 to i16
  %110 = load i16*, i16** %12, align 8
  store i16 %109, i16* %110, align 2
  %111 = load i32, i32* @VXP_DLG_DMA16_SEL_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %114 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %118 = load i32, i32* @DIALOG, align 4
  %119 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %120 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @vx_outb(%struct.vx_core* %117, i32 %118, i32 %121)
  %123 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %124 = load i32, i32* @ICR, align 4
  %125 = call i32 @vx_outb(%struct.vx_core* %123, i32 %124, i32 0)
  br label %126

126:                                              ; preds = %94, %33
  ret void
}

declare dso_local %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core*) #1

declare dso_local i64 @vxp_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i8* @inw(i64) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
