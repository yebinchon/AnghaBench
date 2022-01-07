; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_first_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_first_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32, i32, i32, i32*, i32 }
%struct.skl_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Skylake HD audio\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ioremap error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"bus ppcap not set, HDaudio or DSP not present?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GCAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"chipset global capabilities = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"no streams found in GCAP definitions?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_bus*)* @skl_first_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_first_init(%struct.hdac_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %3, align 8
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %12 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %11)
  store %struct.skl_dev* %12, %struct.skl_dev** %4, align 8
  %13 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %14 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call i32 @pci_request_regions(%struct.pci_dev* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %153

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i32 @pci_resource_start(%struct.pci_dev* %23, i32 0)
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %26 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32* @pci_ioremap_bar(%struct.pci_dev* %27, i32 0)
  %29 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %30 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %32 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %37 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %153

42:                                               ; preds = %22
  %43 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %44 = call i32 @snd_hdac_bus_reset_link(%struct.hdac_bus* %43, i32 1)
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %46 = call i32 @snd_hdac_bus_parse_capabilities(%struct.hdac_bus* %45)
  %47 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %48 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %53 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %153

58:                                               ; preds = %42
  %59 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %60 = call i64 @skl_acquire_irq(%struct.hdac_bus* %59, i32 0)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %153

65:                                               ; preds = %58
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = call i32 @pci_set_master(%struct.pci_dev* %66)
  %68 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %69 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @synchronize_irq(i32 %70)
  %72 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %73 = load i32, i32* @GCAP, align 4
  %74 = call zeroext i16 @snd_hdac_chip_readw(%struct.hdac_bus* %72, i32 %73)
  store i16 %74, i16* %7, align 2
  %75 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %76 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i16, i16* %7, align 2
  %79 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %78)
  %80 = load i16, i16* %7, align 2
  %81 = zext i16 %80 to i32
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 15
  store i32 %83, i32* %8, align 4
  %84 = load i16, i16* %7, align 2
  %85 = zext i16 %84 to i32
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 15
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %65
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %95 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %153

100:                                              ; preds = %90, %65
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %105 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %107 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DMA_BIT_MASK(i32 64)
  %110 = call i32 @dma_set_mask(i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %100
  %113 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %114 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DMA_BIT_MASK(i32 64)
  %117 = call i32 @dma_set_coherent_mask(i32 %115, i32 %116)
  br label %129

118:                                              ; preds = %100
  %119 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %120 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @DMA_BIT_MASK(i32 32)
  %123 = call i32 @dma_set_mask(i32 %121, i32 %122)
  %124 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %125 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @DMA_BIT_MASK(i32 32)
  %128 = call i32 @dma_set_coherent_mask(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %112
  %130 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %133 = call i32 @snd_hdac_ext_stream_init_all(%struct.hdac_bus* %130, i32 0, i32 %131, i32 %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %10, align 4
  %135 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %139 = call i32 @snd_hdac_ext_stream_init_all(%struct.hdac_bus* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %141 = call i32 @snd_hdac_bus_alloc_stream_pages(%struct.hdac_bus* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %129
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %153

146:                                              ; preds = %129
  %147 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %148 = call i32 @skl_init_pci(%struct.skl_dev* %147)
  %149 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %150 = call i32 @skl_dum_set(%struct.hdac_bus* %149)
  %151 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %152 = call i32 @skl_init_chip(%struct.hdac_bus* %151, i32 1)
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %146, %144, %93, %62, %51, %35, %20
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdac_bus_reset_link(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_bus_parse_capabilities(%struct.hdac_bus*) #1

declare dso_local i64 @skl_acquire_irq(%struct.hdac_bus*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local zeroext i16 @snd_hdac_chip_readw(%struct.hdac_bus*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 zeroext) #1

declare dso_local i32 @dma_set_mask(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32, i32) #1

declare dso_local i32 @snd_hdac_ext_stream_init_all(%struct.hdac_bus*, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_bus_alloc_stream_pages(%struct.hdac_bus*) #1

declare dso_local i32 @skl_init_pci(%struct.skl_dev*) #1

declare dso_local i32 @skl_dum_set(%struct.hdac_bus*) #1

declare dso_local i32 @skl_init_chip(%struct.hdac_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
