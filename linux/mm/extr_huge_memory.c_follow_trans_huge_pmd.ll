; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_follow_trans_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_follow_trans_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_DUMP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FOLL_NUMA = common dso_local global i32 0, align 4
@FOLL_TOUCH = common dso_local global i32 0, align 4
@FOLL_MLOCK = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@FOLL_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_trans_huge_pmd(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %10, align 8
  store %struct.page* null, %struct.page** %11, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @pmd_lockptr(%struct.mm_struct* %15, i32* %16)
  %18 = call i32 @assert_spin_locked(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @FOLL_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @can_follow_write_pmd(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %165

30:                                               ; preds = %23, %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FOLL_DUMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_huge_zero_pmd(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.page* @ERR_PTR(i32 %42)
  store %struct.page* %43, %struct.page** %5, align 8
  br label %167

44:                                               ; preds = %35, %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @FOLL_NUMA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @pmd_protnone(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %165

55:                                               ; preds = %49, %44
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.page* @pmd_page(i32 %57)
  store %struct.page* %58, %struct.page** %11, align 8
  %59 = load %struct.page*, %struct.page** %11, align 8
  %60 = call i32 @PageHead(%struct.page* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load %struct.page*, %struct.page** %11, align 8
  %64 = call i32 @is_zone_device_page(%struct.page* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %62, %55
  %68 = phi i1 [ false, %55 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = load %struct.page*, %struct.page** %11, align 8
  %71 = call i32 @VM_BUG_ON_PAGE(i32 %69, %struct.page* %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @FOLL_TOUCH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @touch_pmd(%struct.vm_area_struct* %77, i64 %78, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %67
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @FOLL_MLOCK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %134

87:                                               ; preds = %82
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @VM_LOCKED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %87
  %95 = load %struct.page*, %struct.page** %11, align 8
  %96 = call i64 @PageAnon(%struct.page* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.page*, %struct.page** %11, align 8
  %100 = call i32 @compound_mapcount(%struct.page* %99)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %135

103:                                              ; preds = %98, %94
  %104 = load %struct.page*, %struct.page** %11, align 8
  %105 = call i64 @PageDoubleMap(%struct.page* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load %struct.page*, %struct.page** %11, align 8
  %109 = getelementptr inbounds %struct.page, %struct.page* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %103
  br label %135

113:                                              ; preds = %107
  %114 = load %struct.page*, %struct.page** %11, align 8
  %115 = call i32 @trylock_page(%struct.page* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %135

118:                                              ; preds = %113
  %119 = call i32 (...) @lru_add_drain()
  %120 = load %struct.page*, %struct.page** %11, align 8
  %121 = getelementptr inbounds %struct.page, %struct.page* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.page*, %struct.page** %11, align 8
  %126 = call i64 @PageDoubleMap(%struct.page* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load %struct.page*, %struct.page** %11, align 8
  %130 = call i32 @mlock_vma_page(%struct.page* %129)
  br label %131

131:                                              ; preds = %128, %124, %118
  %132 = load %struct.page*, %struct.page** %11, align 8
  %133 = call i32 @unlock_page(%struct.page* %132)
  br label %134

134:                                              ; preds = %131, %87, %82
  br label %135

135:                                              ; preds = %134, %117, %112, %102
  %136 = load i64, i64* %7, align 8
  %137 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %138 = xor i64 %137, -1
  %139 = and i64 %136, %138
  %140 = load i64, i64* @PAGE_SHIFT, align 8
  %141 = lshr i64 %139, %140
  %142 = load %struct.page*, %struct.page** %11, align 8
  %143 = getelementptr inbounds %struct.page, %struct.page* %142, i64 %141
  store %struct.page* %143, %struct.page** %11, align 8
  %144 = load %struct.page*, %struct.page** %11, align 8
  %145 = call i32 @PageCompound(%struct.page* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %135
  %148 = load %struct.page*, %struct.page** %11, align 8
  %149 = call i32 @is_zone_device_page(%struct.page* %148)
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %147, %135
  %153 = phi i1 [ false, %135 ], [ %151, %147 ]
  %154 = zext i1 %153 to i32
  %155 = load %struct.page*, %struct.page** %11, align 8
  %156 = call i32 @VM_BUG_ON_PAGE(i32 %154, %struct.page* %155)
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @FOLL_GET, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load %struct.page*, %struct.page** %11, align 8
  %163 = call i32 @get_page(%struct.page* %162)
  br label %164

164:                                              ; preds = %161, %152
  br label %165

165:                                              ; preds = %164, %54, %29
  %166 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %166, %struct.page** %5, align 8
  br label %167

167:                                              ; preds = %165, %40
  %168 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %168
}

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @pmd_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @can_follow_write_pmd(i32, i32) #1

declare dso_local i64 @is_huge_zero_pmd(i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i64 @pmd_protnone(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @is_zone_device_page(%struct.page*) #1

declare dso_local i32 @touch_pmd(%struct.vm_area_struct*, i64, i32*, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @compound_mapcount(%struct.page*) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @mlock_vma_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
