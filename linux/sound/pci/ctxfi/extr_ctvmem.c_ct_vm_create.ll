; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctvmem.c_ct_vm_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctvmem.c_ct_vm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_vm = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.pci_dev = type { i32 }
%struct.ct_vm_block = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CT_PTP_NUM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CT_ADDRS_PER_PAGE = common dso_local global i32 0, align 4
@ct_vm_map = common dso_local global i32 0, align 4
@ct_vm_unmap = common dso_local global i32 0, align 4
@ct_get_ptp_phys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_vm_create(%struct.ct_vm** %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_vm**, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ct_vm*, align 8
  %7 = alloca %struct.ct_vm_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ct_vm** %0, %struct.ct_vm*** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ct_vm**, %struct.ct_vm*** %4, align 8
  store %struct.ct_vm* null, %struct.ct_vm** %10, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 40, i32 %11)
  %13 = bitcast i8* %12 to %struct.ct_vm*
  store %struct.ct_vm* %13, %struct.ct_vm** %6, align 8
  %14 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %15 = icmp ne %struct.ct_vm* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %96

19:                                               ; preds = %2
  %20 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %21 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %20, i32 0, i32 7
  %22 = call i32 @mutex_init(i32* %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %43, %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @CT_PTP_NUM, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = call i32 @snd_dma_pci_data(%struct.pci_dev* %29)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %33 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @snd_dma_alloc_pages(i32 %28, i32 %30, i32 %31, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %23

46:                                               ; preds = %41, %23
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %51 = call i32 @ct_vm_destroy(%struct.ct_vm* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %96

54:                                               ; preds = %46
  %55 = load i32, i32* @CT_ADDRS_PER_PAGE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %59 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ct_vm_map, align 4
  %61 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %62 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ct_vm_unmap, align 4
  %64 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %65 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ct_get_ptp_phys, align 4
  %67 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %68 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %70 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %69, i32 0, i32 1
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %73 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %72, i32 0, i32 2
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kzalloc(i32 16, i32 %75)
  %77 = bitcast i8* %76 to %struct.ct_vm_block*
  store %struct.ct_vm_block* %77, %struct.ct_vm_block** %7, align 8
  %78 = load %struct.ct_vm_block*, %struct.ct_vm_block** %7, align 8
  %79 = icmp ne %struct.ct_vm_block* null, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %54
  %81 = load %struct.ct_vm_block*, %struct.ct_vm_block** %7, align 8
  %82 = getelementptr inbounds %struct.ct_vm_block, %struct.ct_vm_block* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %84 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ct_vm_block*, %struct.ct_vm_block** %7, align 8
  %87 = getelementptr inbounds %struct.ct_vm_block, %struct.ct_vm_block* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ct_vm_block*, %struct.ct_vm_block** %7, align 8
  %89 = getelementptr inbounds %struct.ct_vm_block, %struct.ct_vm_block* %88, i32 0, i32 1
  %90 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %91 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %90, i32 0, i32 1
  %92 = call i32 @list_add(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %80, %54
  %94 = load %struct.ct_vm*, %struct.ct_vm** %6, align 8
  %95 = load %struct.ct_vm**, %struct.ct_vm*** %4, align 8
  store %struct.ct_vm* %94, %struct.ct_vm** %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %49, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_pci_data(%struct.pci_dev*) #1

declare dso_local i32 @ct_vm_destroy(%struct.ct_vm*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
