; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_build_via_table.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_build_via_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viadev = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pcm_substream = type { i32 }
%struct.pci_dev = type { i32 }
%struct.via82xx_modem = type { i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@VIA_TABLE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"too much table size!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
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
  %16 = alloca %struct.via82xx_modem*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.viadev* %0, %struct.viadev** %7, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %8, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %21 = call %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %20)
  store %struct.via82xx_modem* %21, %struct.via82xx_modem** %16, align 8
  %22 = load %struct.viadev*, %struct.viadev** %7, align 8
  %23 = getelementptr inbounds %struct.viadev, %struct.viadev* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %5
  %28 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %29 = load %struct.via82xx_modem*, %struct.via82xx_modem** %16, align 8
  %30 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_dma_pci_data(i32 %31)
  %33 = load i32, i32* @VIA_TABLE_SIZE, align 4
  %34 = mul nsw i32 %33, 2
  %35 = mul nsw i32 %34, 8
  %36 = call i32 @PAGE_ALIGN(i32 %35)
  %37 = load %struct.viadev*, %struct.viadev** %7, align 8
  %38 = getelementptr inbounds %struct.viadev, %struct.viadev* %37, i32 0, i32 4
  %39 = call i64 @snd_dma_alloc_pages(i32 %28, i32 %32, i32 %36, %struct.TYPE_3__* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %179

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %5
  %46 = load %struct.viadev*, %struct.viadev** %7, align 8
  %47 = getelementptr inbounds %struct.viadev, %struct.viadev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @VIA_TABLE_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_4__* @kmalloc_array(i32 %51, i32 8, i32 %52)
  %54 = load %struct.viadev*, %struct.viadev** %7, align 8
  %55 = getelementptr inbounds %struct.viadev, %struct.viadev* %54, i32 0, i32 3
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.viadev*, %struct.viadev** %7, align 8
  %57 = getelementptr inbounds %struct.viadev, %struct.viadev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %179

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %45
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %161, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %164

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %157, %69
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
  br label %179

81:                                               ; preds = %71
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %82, i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load %struct.viadev*, %struct.viadev** %7, align 8
  %88 = getelementptr inbounds %struct.viadev, %struct.viadev* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = shl i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %86, i32* %94, align 4
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = urem i32 %96, %97
  %99 = sub i32 %95, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %81
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %103, %81
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sub i32 %107, %106
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub i32 %113, 1
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @VIA_TBL_BIT_EOL, align 4
  store i32 %117, i32* %18, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @VIA_TBL_BIT_FLAG, align 4
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %118, %116
  br label %122

121:                                              ; preds = %105
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %121, %120
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @cpu_to_le32(i32 %125)
  %127 = load %struct.viadev*, %struct.viadev** %7, align 8
  %128 = getelementptr inbounds %struct.viadev, %struct.viadev* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = shl i32 %131, 1
  %133 = add i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  store i32 %126, i32* %135, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.viadev*, %struct.viadev** %7, align 8
  %138 = getelementptr inbounds %struct.viadev, %struct.viadev* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.viadev*, %struct.viadev** %7, align 8
  %146 = getelementptr inbounds %struct.viadev, %struct.viadev* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i32 %144, i32* %151, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %14, align 4
  %154 = add i32 %153, %152
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %122
  %158 = load i32, i32* %15, align 4
  %159 = icmp ugt i32 %158, 0
  br i1 %159, label %71, label %160

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %65

164:                                              ; preds = %65
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.viadev*, %struct.viadev** %7, align 8
  %167 = getelementptr inbounds %struct.viadev, %struct.viadev* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = mul i32 %168, %169
  %171 = load %struct.viadev*, %struct.viadev** %7, align 8
  %172 = getelementptr inbounds %struct.viadev, %struct.viadev* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.viadev*, %struct.viadev** %7, align 8
  %174 = getelementptr inbounds %struct.viadev, %struct.viadev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = udiv i32 %175, 2
  %177 = load %struct.viadev*, %struct.viadev** %7, align 8
  %178 = getelementptr inbounds %struct.viadev, %struct.viadev* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %164, %75, %60, %41
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local %struct.TYPE_4__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
