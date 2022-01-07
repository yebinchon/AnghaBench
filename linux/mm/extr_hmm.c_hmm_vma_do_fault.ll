; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_do_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_do_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.vm_area_struct*, %struct.hmm_vma_walk* }
%struct.vm_area_struct = type { i32 }
%struct.hmm_vma_walk = type { i32, %struct.hmm_range* }
%struct.hmm_range = type { i32* }

@FAULT_FLAG_REMOTE = common dso_local global i32 0, align 4
@HMM_FAULT_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HMM_PFN_ERROR = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_walk*, i64, i32, i32*)* @hmm_vma_do_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmm_vma_do_fault(%struct.mm_walk* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_walk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hmm_vma_walk*, align 8
  %12 = alloca %struct.hmm_range*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i32, align 4
  store %struct.mm_walk* %0, %struct.mm_walk** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @FAULT_FLAG_REMOTE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.mm_walk*, %struct.mm_walk** %6, align 8
  %17 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %16, i32 0, i32 1
  %18 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %17, align 8
  store %struct.hmm_vma_walk* %18, %struct.hmm_vma_walk** %11, align 8
  %19 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %11, align 8
  %20 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %19, i32 0, i32 1
  %21 = load %struct.hmm_range*, %struct.hmm_range** %20, align 8
  store %struct.hmm_range* %21, %struct.hmm_range** %12, align 8
  %22 = load %struct.mm_walk*, %struct.mm_walk** %6, align 8
  %23 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %22, i32 0, i32 0
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %13, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %26 = icmp ne %struct.vm_area_struct* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %67

28:                                               ; preds = %4
  %29 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %11, align 8
  %30 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HMM_FAULT_ALLOW_RETRY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @handle_mm_fault(%struct.vm_area_struct* %47, i64 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @VM_FAULT_RETRY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %77

58:                                               ; preds = %46
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @VM_FAULT_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %77

67:                                               ; preds = %63, %27
  %68 = load %struct.hmm_range*, %struct.hmm_range** %12, align 8
  %69 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @HMM_PFN_ERROR, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %67, %64, %55
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
