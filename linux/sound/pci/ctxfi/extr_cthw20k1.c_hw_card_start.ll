; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_card_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_card_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64, i8*, i32, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"XFi\00", align 1
@CTUAA = common dso_local global i64 0, align 8
@ct_20k1_interrupt = common dso_local global i32 0, align 4
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
  store %struct.hw* %0, %struct.hw** %3, align 8
  %7 = load %struct.hw*, %struct.hw** %3, align 8
  %8 = getelementptr inbounds %struct.hw, %struct.hw* %7, i32 0, i32 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load i32, i32* @BITS_PER_LONG, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DMA_BIT_MASK(i32 %20)
  %22 = call i32 @dma_set_mask(i32* %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DMA_BIT_MASK(i32 %27)
  %29 = call i32 @dma_set_coherent_mask(i32* %26, i32 %28)
  br label %39

30:                                               ; preds = %17
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = call i32 @DMA_BIT_MASK(i32 32)
  %34 = call i32 @dma_set_mask(i32* %32, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = call i32 @DMA_BIT_MASK(i32 32)
  %38 = call i32 @dma_set_coherent_mask(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.hw*, %struct.hw** %3, align 8
  %41 = getelementptr inbounds %struct.hw, %struct.hw* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %67, label %44

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = call i32 @pci_request_regions(%struct.pci_dev* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %120

50:                                               ; preds = %44
  %51 = load %struct.hw*, %struct.hw** %3, align 8
  %52 = getelementptr inbounds %struct.hw, %struct.hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CTUAA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = call i8* @pci_resource_start(%struct.pci_dev* %57, i32 5)
  %59 = load %struct.hw*, %struct.hw** %3, align 8
  %60 = getelementptr inbounds %struct.hw, %struct.hw* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = call i8* @pci_resource_start(%struct.pci_dev* %62, i32 0)
  %64 = load %struct.hw*, %struct.hw** %3, align 8
  %65 = getelementptr inbounds %struct.hw, %struct.hw* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.hw*, %struct.hw** %3, align 8
  %69 = getelementptr inbounds %struct.hw, %struct.hw* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CTUAA, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = call i32 @uaa_to_xfi(%struct.pci_dev* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %115

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %67
  %81 = load %struct.hw*, %struct.hw** %3, align 8
  %82 = getelementptr inbounds %struct.hw, %struct.hw* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %80
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ct_20k1_interrupt, align 4
  %90 = load i32, i32* @IRQF_SHARED, align 4
  %91 = load i32, i32* @KBUILD_MODNAME, align 4
  %92 = load %struct.hw*, %struct.hw** %3, align 8
  %93 = call i32 @request_irq(i32 %88, i32 %89, i32 %90, i32 %91, %struct.hw* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load %struct.hw*, %struct.hw** %3, align 8
  %98 = getelementptr inbounds %struct.hw, %struct.hw* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %115

106:                                              ; preds = %85
  %107 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hw*, %struct.hw** %3, align 8
  %111 = getelementptr inbounds %struct.hw, %struct.hw* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %80
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = call i32 @pci_set_master(%struct.pci_dev* %113)
  store i32 0, i32* %2, align 4
  br label %124

115:                                              ; preds = %96, %78
  %116 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %117 = call i32 @pci_release_regions(%struct.pci_dev* %116)
  %118 = load %struct.hw*, %struct.hw** %3, align 8
  %119 = getelementptr inbounds %struct.hw, %struct.hw* %118, i32 0, i32 1
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %115, %49
  %121 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %122 = call i32 @pci_disable_device(%struct.pci_dev* %121)
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %112, %15
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @uaa_to_xfi(%struct.pci_dev*) #1

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
