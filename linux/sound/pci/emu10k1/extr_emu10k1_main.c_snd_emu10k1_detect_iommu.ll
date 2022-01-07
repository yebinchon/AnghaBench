; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_detect_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_detect_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iommu_domain = type { i64 }

@IOMMU_DOMAIN_IDENTITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"non-passthrough IOMMU detected, widening DMA allocations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*)* @snd_emu10k1_detect_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_detect_iommu(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  %3 = alloca %struct.iommu_domain*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %4 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %5 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %7 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iommu_present(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.TYPE_5__* %21)
  store %struct.iommu_domain* %22, %struct.iommu_domain** %3, align 8
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %24 = icmp ne %struct.iommu_domain* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %27 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IOMMU_DOMAIN_IDENTITY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %41

32:                                               ; preds = %25, %16
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @dev_notice(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %32, %31, %15
  ret void
}

declare dso_local i32 @iommu_present(i32) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
