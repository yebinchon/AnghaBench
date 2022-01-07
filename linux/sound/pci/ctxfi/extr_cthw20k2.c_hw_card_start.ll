; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64, i32, %struct.TYPE_2__*, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"XFi\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GLOBAL_CNTL_GCTL = common dso_local global i32 0, align 4
@GCTL_UAA = common dso_local global i32 0, align 4
@ct_20k2_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"XFi: Cannot get irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw_card_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_card_start(%struct.hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.hw*, %struct.hw** %3, align 8
  %9 = getelementptr inbounds %struct.hw, %struct.hw* %8, i32 0, i32 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @BITS_PER_LONG, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = call i32 @pci_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %129

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DMA_BIT_MASK(i32 %21)
  %23 = call i32 @dma_set_mask(i32* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DMA_BIT_MASK(i32 %28)
  %30 = call i32 @dma_set_coherent_mask(i32* %27, i32 %29)
  br label %40

31:                                               ; preds = %18
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = call i32 @DMA_BIT_MASK(i32 32)
  %35 = call i32 @dma_set_mask(i32* %33, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = call i32 @DMA_BIT_MASK(i32 32)
  %39 = call i32 @dma_set_coherent_mask(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %25
  %41 = load %struct.hw*, %struct.hw** %3, align 8
  %42 = getelementptr inbounds %struct.hw, %struct.hw* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %40
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = call i32 @pci_request_regions(%struct.pci_dev* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %125

51:                                               ; preds = %45
  %52 = load %struct.hw*, %struct.hw** %3, align 8
  %53 = getelementptr inbounds %struct.hw, %struct.hw* %52, i32 0, i32 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %53, align 8
  %55 = call i64 @pci_resource_start(%struct.pci_dev* %54, i32 2)
  %56 = load %struct.hw*, %struct.hw** %3, align 8
  %57 = getelementptr inbounds %struct.hw, %struct.hw* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.hw*, %struct.hw** %3, align 8
  %59 = getelementptr inbounds %struct.hw, %struct.hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hw*, %struct.hw** %3, align 8
  %62 = getelementptr inbounds %struct.hw, %struct.hw* %61, i32 0, i32 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %62, align 8
  %64 = call i32 @pci_resource_len(%struct.pci_dev* %63, i32 2)
  %65 = call i32 @ioremap(i64 %60, i32 %64)
  %66 = load %struct.hw*, %struct.hw** %3, align 8
  %67 = getelementptr inbounds %struct.hw, %struct.hw* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.hw*, %struct.hw** %3, align 8
  %69 = getelementptr inbounds %struct.hw, %struct.hw* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %51
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %120

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.hw*, %struct.hw** %3, align 8
  %78 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %79 = call i32 @hw_read_20kx(%struct.hw* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @GCTL_UAA, align 4
  %81 = call i32 @set_field(i32* %6, i32 %80, i32 0)
  %82 = load %struct.hw*, %struct.hw** %3, align 8
  %83 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @hw_write_20kx(%struct.hw* %82, i32 %83, i32 %84)
  %86 = load %struct.hw*, %struct.hw** %3, align 8
  %87 = getelementptr inbounds %struct.hw, %struct.hw* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %76
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ct_20k2_interrupt, align 4
  %95 = load i32, i32* @IRQF_SHARED, align 4
  %96 = load i32, i32* @KBUILD_MODNAME, align 4
  %97 = load %struct.hw*, %struct.hw** %3, align 8
  %98 = call i32 @request_irq(i32 %93, i32 %94, i32 %95, i32 %96, %struct.hw* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load %struct.hw*, %struct.hw** %3, align 8
  %103 = getelementptr inbounds %struct.hw, %struct.hw* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %120

111:                                              ; preds = %90
  %112 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.hw*, %struct.hw** %3, align 8
  %116 = getelementptr inbounds %struct.hw, %struct.hw* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %111, %76
  %118 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %119 = call i32 @pci_set_master(%struct.pci_dev* %118)
  store i32 0, i32* %2, align 4
  br label %129

120:                                              ; preds = %101, %72
  %121 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %122 = call i32 @pci_release_regions(%struct.pci_dev* %121)
  %123 = load %struct.hw*, %struct.hw** %3, align 8
  %124 = getelementptr inbounds %struct.hw, %struct.hw* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %50
  %126 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %127 = call i32 @pci_disable_device(%struct.pci_dev* %126)
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %117, %16
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.hw*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
