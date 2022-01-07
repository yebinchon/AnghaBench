; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_ac3_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_ac3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, %struct.TYPE_3__***, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YDSXGR_MAPOFEFFECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*)* @snd_ymfpci_ac3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_ac3_init(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ymfpci*, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %3, align 8
  %4 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %5 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %6 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @snd_dma_pci_data(i32 %7)
  %9 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %9, i32 0, i32 2
  %11 = call i64 @snd_dma_alloc_pages(i32 %4, i32 %8, i32 4096, %struct.TYPE_4__* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %24, i64 3
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %21, i8** %29, align 8
  %30 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %32, i64 3
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %21, i8** %37, align 8
  %38 = call i8* @cpu_to_le32(i32 1024)
  %39 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %41, i64 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %38, i8** %46, align 8
  %47 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %48 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %49, i64 3
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %38, i8** %54, align 8
  %55 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %56 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 2048
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %62 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %63, i64 4
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i8* %60, i8** %68, align 8
  %69 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %70 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %71, i64 4
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i8* %60, i8** %76, align 8
  %77 = call i8* @cpu_to_le32(i32 1024)
  %78 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %79 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %80, i64 4
  %82 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %82, i64 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i8* %77, i8** %85, align 8
  %86 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %87 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %88, i64 4
  %90 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %90, i64 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i8* %77, i8** %93, align 8
  %94 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %95 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_irq(i32* %95)
  %97 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %98 = load i32, i32* @YDSXGR_MAPOFEFFECT, align 4
  %99 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %100 = load i32, i32* @YDSXGR_MAPOFEFFECT, align 4
  %101 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %99, i32 %100)
  %102 = or i32 %101, 24
  %103 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %97, i32 %98, i32 %102)
  %104 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %105 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_irq(i32* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %16, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
