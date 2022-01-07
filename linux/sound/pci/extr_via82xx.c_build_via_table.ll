; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_build_via_table.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_build_via_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viadev = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pcm_substream = type { i32 }
%struct.pci_dev = type { i32 }
%struct.via82xx = type { i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@VIA_TABLE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"too much table size!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIA_TBL_BIT_EOL = common dso_local global i32 0, align 4
@VIA_TBL_BIT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viadev*, %struct.snd_pcm_substream*, %struct.pci_dev*, i32, i32)* @build_via_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_via_table(%struct.viadev* %0, %struct.snd_pcm_substream* %1, %struct.pci_dev* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.viadev*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.via82xx*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.viadev* %0, %struct.viadev** %7, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %8, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %21 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %20)
  store %struct.via82xx* %21, %struct.via82xx** %16, align 8
  %22 = load %struct.viadev*, %struct.viadev** %7, align 8
  %23 = getelementptr inbounds %struct.viadev, %struct.viadev* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %5
  %28 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %29 = load %struct.via82xx*, %struct.via82xx** %16, align 8
  %30 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_dma_pci_data(i32 %31)
  %33 = load i32, i32* @VIA_TABLE_SIZE, align 4
  %34 = mul nsw i32 %33, 2
  %35 = mul nsw i32 %34, 8
  %36 = call i32 @PAGE_ALIGN(i32 %35)
  %37 = load %struct.viadev*, %struct.viadev** %7, align 8
  %38 = getelementptr inbounds %struct.viadev, %struct.viadev* %37, i32 0, i32 5
  %39 = call i64 @snd_dma_alloc_pages(i32 %28, i32 %32, i32 %36, %struct.TYPE_3__* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %175

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %5
  %46 = load %struct.viadev*, %struct.viadev** %7, align 8
  %47 = getelementptr inbounds %struct.viadev, %struct.viadev* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @VIA_TABLE_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_4__* @kmalloc_array(i32 %51, i32 8, i32 %52)
  %54 = load %struct.viadev*, %struct.viadev** %7, align 8
  %55 = getelementptr inbounds %struct.viadev, %struct.viadev* %54, i32 0, i32 4
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.viadev*, %struct.viadev** %7, align 8
  %57 = getelementptr inbounds %struct.viadev, %struct.viadev* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %175

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %45
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %154, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %157

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %150, %69
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @VIA_TABLE_SIZE, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %175

81:                                               ; preds = %71
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %82, i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load %struct.viadev*, %struct.viadev** %7, align 8
  %88 = getelementptr inbounds %struct.viadev, %struct.viadev* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = shl i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %86, i32* %94, align 4
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @snd_pcm_sgbuf_get_chunk_size(%struct.snd_pcm_substream* %95, i32 %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %81
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub i32 %106, 1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @VIA_TBL_BIT_EOL, align 4
  store i32 %110, i32* %18, align 4
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @VIA_TBL_BIT_FLAG, align 4
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %111, %109
  br label %115

114:                                              ; preds = %81
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %114, %113
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @cpu_to_le32(i32 %118)
  %120 = load %struct.viadev*, %struct.viadev** %7, align 8
  %121 = getelementptr inbounds %struct.viadev, %struct.viadev* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = shl i32 %124, 1
  %126 = add i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 %119, i32* %128, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.viadev*, %struct.viadev** %7, align 8
  %131 = getelementptr inbounds %struct.viadev, %struct.viadev* %130, i32 0, i32 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.viadev*, %struct.viadev** %7, align 8
  %139 = getelementptr inbounds %struct.viadev, %struct.viadev* %138, i32 0, i32 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 %137, i32* %144, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %115
  %151 = load i32, i32* %15, align 4
  %152 = icmp ugt i32 %151, 0
  br i1 %152, label %71, label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %12, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %65

157:                                              ; preds = %65
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.viadev*, %struct.viadev** %7, align 8
  %160 = getelementptr inbounds %struct.viadev, %struct.viadev* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = mul i32 %161, %162
  %164 = load %struct.viadev*, %struct.viadev** %7, align 8
  %165 = getelementptr inbounds %struct.viadev, %struct.viadev* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.viadev*, %struct.viadev** %7, align 8
  %167 = getelementptr inbounds %struct.viadev, %struct.viadev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = udiv i32 %168, 2
  %170 = load %struct.viadev*, %struct.viadev** %7, align 8
  %171 = getelementptr inbounds %struct.viadev, %struct.viadev* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.viadev*, %struct.viadev** %7, align 8
  %174 = getelementptr inbounds %struct.viadev, %struct.viadev* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %157, %75, %60, %41
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local %struct.TYPE_4__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_chunk_size(%struct.snd_pcm_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
