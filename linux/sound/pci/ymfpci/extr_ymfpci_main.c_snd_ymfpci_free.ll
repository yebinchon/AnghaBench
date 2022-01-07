; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i64, i64, %struct.snd_ymfpci* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@YDSXGR_NATIVEDACOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_BUF441OUTVOL = common dso_local global i32 0, align 4
@YDSXGR_LEGACYOUTVOL = common dso_local global i32 0, align 4
@YDSXGR_STATUS = common dso_local global i32 0, align 4
@YDSXGR_PLAYCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_RECCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_EFFCTRLBASE = common dso_local global i32 0, align 4
@YDSXGR_WORKBASE = common dso_local global i32 0, align 4
@YDSXGR_WORKSIZE = common dso_local global i32 0, align 4
@YDSXGR_GLOBALCTRL = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*)* @snd_ymfpci_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_free(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %3, align 8
  %5 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %6 = icmp ne %struct.snd_ymfpci* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %120

14:                                               ; preds = %1
  %15 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %21 = load i32, i32* @YDSXGR_NATIVEDACOUTVOL, align 4
  %22 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %20, i32 %21, i32 0)
  %23 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %24 = load i32, i32* @YDSXGR_BUF441OUTVOL, align 4
  %25 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %23, i32 %24, i32 0)
  %26 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %27 = load i32, i32* @YDSXGR_LEGACYOUTVOL, align 4
  %28 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %26, i32 %27, i32 0)
  %29 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %30 = load i32, i32* @YDSXGR_STATUS, align 4
  %31 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %29, i32 %30, i32 -1)
  %32 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %33 = call i32 @snd_ymfpci_disable_dsp(%struct.snd_ymfpci* %32)
  %34 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %35 = load i32, i32* @YDSXGR_PLAYCTRLBASE, align 4
  %36 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %34, i32 %35, i32 0)
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %38 = load i32, i32* @YDSXGR_RECCTRLBASE, align 4
  %39 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %37, i32 %38, i32 0)
  %40 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %41 = load i32, i32* @YDSXGR_EFFCTRLBASE, align 4
  %42 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %40, i32 %41, i32 0)
  %43 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %44 = load i32, i32* @YDSXGR_WORKBASE, align 4
  %45 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %43, i32 %44, i32 0)
  %46 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %47 = load i32, i32* @YDSXGR_WORKSIZE, align 4
  %48 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %46, i32 %47, i32 0)
  %49 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %50 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %51 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %53 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, -8
  %56 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %19, %14
  %58 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %59 = call i32 @snd_ymfpci_ac3_done(%struct.snd_ymfpci* %58)
  %60 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %61 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %69 = call i32 @free_irq(i64 %67, %struct.snd_ymfpci* %68)
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %72 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @release_and_free_resource(i64 %73)
  %75 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %76 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @release_and_free_resource(i64 %77)
  %79 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %80 = call i32 @snd_ymfpci_free_gameport(%struct.snd_ymfpci* %79)
  %81 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %82 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @iounmap(i32 %83)
  %85 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %86 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %70
  %91 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %92 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %91, i32 0, i32 6
  %93 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %92)
  br label %94

94:                                               ; preds = %90, %70
  %95 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %96 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @release_and_free_resource(i64 %97)
  %99 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %100 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %103 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pci_write_config_word(i32 %101, i32 64, i32 %104)
  %106 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %107 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pci_disable_device(i32 %108)
  %110 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %111 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @release_firmware(i32 %112)
  %114 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %115 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @release_firmware(i32 %116)
  %118 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %119 = call i32 @kfree(%struct.snd_ymfpci* %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %94, %11
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_disable_dsp(%struct.snd_ymfpci*) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_ac3_done(%struct.snd_ymfpci*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_ymfpci*) #1

declare dso_local i32 @release_and_free_resource(i64) #1

declare dso_local i32 @snd_ymfpci_free_gameport(%struct.snd_ymfpci*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @kfree(%struct.snd_ymfpci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
