; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_cs5535audio_build_dma_packets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_cs5535audio_build_dma_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535audio = type { i32, i32 }
%struct.cs5535audio_dma = type { i32, i32, %struct.TYPE_5__*, %struct.snd_pcm_substream*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.cs5535audio*, i64)*, i32 (%struct.cs5535audio*)* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.cs5535audio_dma_desc = type { i8*, i8*, i8* }

@CS5535AUDIO_MAX_DESCRIPTORS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@CS5535AUDIO_DESC_LIST_SIZE = common dso_local global i64 0, align 8
@PRD_EOP = common dso_local global i32 0, align 4
@PRD_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs5535audio*, %struct.cs5535audio_dma*, %struct.snd_pcm_substream*, i32, i32)* @cs5535audio_build_dma_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5535audio_build_dma_packets(%struct.cs5535audio* %0, %struct.cs5535audio_dma* %1, %struct.snd_pcm_substream* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs5535audio*, align 8
  %8 = alloca %struct.cs5535audio_dma*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cs5535audio_dma_desc*, align 8
  %17 = alloca %struct.cs5535audio_dma_desc*, align 8
  store %struct.cs5535audio* %0, %struct.cs5535audio** %7, align 8
  store %struct.cs5535audio_dma* %1, %struct.cs5535audio_dma** %8, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @CS5535AUDIO_MAX_DESCRIPTORS, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %167

24:                                               ; preds = %5
  %25 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %26 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %32 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %33 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_dma_pci_data(i32 %34)
  %36 = load i64, i64* @CS5535AUDIO_DESC_LIST_SIZE, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %39 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %38, i32 0, i32 4
  %40 = call i64 @snd_dma_alloc_pages(i32 %31, i32 %35, i64 %37, %struct.TYPE_6__* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %167

45:                                               ; preds = %30
  %46 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %47 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %49 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %24
  %51 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %52 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %58 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %167

63:                                               ; preds = %56, %50
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  %69 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %70 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %104, %63
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %79 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to %struct.cs5535audio_dma_desc*
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %82, i64 %84
  store %struct.cs5535audio_dma_desc* %85, %struct.cs5535audio_dma_desc** %17, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i8* @cpu_to_le32(i64 %86)
  %88 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %17, align 8
  %89 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %17, align 8
  %93 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @PRD_EOP, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %17, align 8
  %97 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 24
  store i64 %99, i64* %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %13, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %13, align 8
  br label %104

104:                                              ; preds = %77
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %73

107:                                              ; preds = %73
  %108 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %109 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to %struct.cs5535audio_dma_desc*
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %112, i64 %114
  store %struct.cs5535audio_dma_desc* %115, %struct.cs5535audio_dma_desc** %16, align 8
  %116 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %117 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @cpu_to_le32(i64 %119)
  %121 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %122 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %124 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %123, i32 0, i32 1
  store i8* null, i8** %124, align 8
  %125 = load i32, i32* @PRD_JMP, align 4
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %128 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %130 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = mul i64 24, %134
  %136 = add i64 %132, %135
  store i64 %136, i64* %15, align 8
  %137 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %138 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %139 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %138, i32 0, i32 3
  store %struct.snd_pcm_substream* %137, %struct.snd_pcm_substream** %139, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %142 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %145 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %147 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %146, i32 0, i32 0
  %148 = call i32 @spin_lock_irq(i32* %147)
  %149 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %150 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32 (%struct.cs5535audio*)*, i32 (%struct.cs5535audio*)** %152, align 8
  %154 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %155 = call i32 %153(%struct.cs5535audio* %154)
  %156 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %157 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32 (%struct.cs5535audio*, i64)*, i32 (%struct.cs5535audio*, i64)** %159, align 8
  %161 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %162 = load i64, i64* %15, align 8
  %163 = call i32 %160(%struct.cs5535audio* %161, i64 %162)
  %164 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %165 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock_irq(i32* %165)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %107, %62, %42, %21
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
