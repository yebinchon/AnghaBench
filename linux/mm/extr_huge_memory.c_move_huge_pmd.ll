; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_move_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_move_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_huge_pmd(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mm_struct*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %17, align 8
  store i32 0, i32* %18, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28, %6
  store i32 0, i32* %7, align 4
  br label %130

41:                                               ; preds = %34
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pmd_none(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pmd_trans_huge(i32 %52)
  %54 = call i32 @VM_BUG_ON(i32 %53)
  store i32 0, i32* %7, align 4
  br label %130

55:                                               ; preds = %41
  %56 = load i32*, i32** %12, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %58 = call i32* @__pmd_trans_huge_lock(i32* %56, %struct.vm_area_struct* %57)
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %129

61:                                               ; preds = %55
  %62 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32* @pmd_lockptr(%struct.mm_struct* %62, i32* %63)
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = icmp ne i32* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %71 = call i32 @spin_lock_nested(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @pmdp_huge_get_and_clear(%struct.mm_struct* %73, i64 %74, i32* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i64 @pmd_present(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %18, align 4
  br label %81

81:                                               ; preds = %80, %72
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pmd_none(i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @VM_BUG_ON(i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %92 = call i64 @pmd_move_must_withdraw(i32* %89, i32* %90, %struct.vm_area_struct* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %81
  %95 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @pgtable_trans_huge_withdraw(%struct.mm_struct* %95, i32* %96)
  store i32 %97, i32* %19, align 4
  %98 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @pgtable_trans_huge_deposit(%struct.mm_struct* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %94, %81
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @move_soft_dirty_pmd(i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @set_pmd_at(%struct.mm_struct* %105, i64 %106, i32* %107, i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* @PMD_SIZE, align 8
  %117 = add i64 %115, %116
  %118 = call i32 @flush_tlb_range(%struct.vm_area_struct* %113, i64 %114, i64 %117)
  br label %119

119:                                              ; preds = %112, %102
  %120 = load i32*, i32** %15, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = icmp ne i32* %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @spin_unlock(i32* %124)
  br label %126

126:                                              ; preds = %123, %119
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @spin_unlock(i32* %127)
  store i32 1, i32* %7, align 4
  br label %130

129:                                              ; preds = %55
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %126, %50, %40
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32* @__pmd_trans_huge_lock(i32*, %struct.vm_area_struct*) #1

declare dso_local i32* @pmd_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @pmdp_huge_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i64 @pmd_move_must_withdraw(i32*, i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @pgtable_trans_huge_withdraw(%struct.mm_struct*, i32*) #1

declare dso_local i32 @pgtable_trans_huge_deposit(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @move_soft_dirty_pmd(i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
