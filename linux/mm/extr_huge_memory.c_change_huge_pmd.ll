; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_change_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_change_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_huge_pmd(%struct.vm_area_struct* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %12, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = call i32* @__pmd_trans_huge_lock(i32* %20, %struct.vm_area_struct* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %92

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pmd_write(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_huge_zero_pmd(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %88

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pmd_protnone(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %88

54:                                               ; preds = %48, %45
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @pmdp_invalidate(%struct.vm_area_struct* %55, i64 %56, i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @pmd_modify(i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @pmd_mk_savedwrite(i32 %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %64, %54
  %68 = load i32, i32* @HPAGE_PMD_NR, align 4
  store i32 %68, i32* %16, align 4
  %69 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @set_pmd_at(%struct.mm_struct* %69, i64 %70, i32* %71, i32 %72)
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %75 = call i64 @vma_is_anonymous(%struct.vm_area_struct* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @pmd_write(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %77, %67
  %85 = phi i1 [ false, %77 ], [ false, %67 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  br label %88

88:                                               ; preds = %84, %53, %44
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %25
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32* @__pmd_trans_huge_lock(i32*, %struct.vm_area_struct*) #1

declare dso_local i64 @pmd_write(i32) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local i64 @pmd_protnone(i32) #1

declare dso_local i32 @pmdp_invalidate(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pmd_modify(i32, i32) #1

declare dso_local i32 @pmd_mk_savedwrite(i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
