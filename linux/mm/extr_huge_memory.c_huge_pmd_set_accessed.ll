; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_huge_pmd_set_accessed.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_huge_pmd_set_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i64, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huge_pmd_set_accessed(%struct.vm_fault* %0, i32 %1) #0 {
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @pmd_lock(i32 %17, i32* %20)
  %22 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pmd_same(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %73

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @pmd_mkyoung(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pmd_mkdirty(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %46 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %49 = and i64 %47, %48
  store i64 %49, i64* %6, align 8
  %50 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %51 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %55 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @pmdp_set_access_flags(%struct.TYPE_3__* %52, i64 %53, i32* %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %44
  %62 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %63 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %66 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @update_mmu_cache_pmd(%struct.TYPE_3__* %64, i64 %67, i32* %70)
  br label %72

72:                                               ; preds = %61, %44
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %75 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @spin_unlock(i32 %76)
  ret void
}

declare dso_local i32 @pmd_lock(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_same(i32, i32) #1

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i64 @pmdp_set_access_flags(%struct.TYPE_3__*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache_pmd(%struct.TYPE_3__*, i64, i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
