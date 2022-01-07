; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_copy_one_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_copy_one_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.page = type { i32 }
%struct.TYPE_14__ = type { i64 }

@mmlist_lock = common dso_local global i32 0, align 4
@MM_SWAPENTS = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, %struct.vm_area_struct*, i64, i32*)* @copy_one_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_one_pte(%struct.mm_struct* %0, %struct.mm_struct* %1, i32* %2, i32* %3, %struct.vm_area_struct* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @pte_present(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %161

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4
  %34 = call i64 @pte_to_swp_entry(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @non_swap_entry(i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @swap_duplicate(i64 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  br label %219

52:                                               ; preds = %44
  %53 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 0
  %55 = call i32 @list_empty(i32* %54)
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = call i32 @spin_lock(i32* @mmlist_lock)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 0
  %62 = call i32 @list_empty(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %68 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %67, i32 0, i32 0
  %69 = call i32 @list_add(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = call i32 @spin_unlock(i32* @mmlist_lock)
  br label %72

72:                                               ; preds = %70, %52
  %73 = load i32*, i32** %15, align 8
  %74 = load i64, i64* @MM_SWAPENTS, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %160

78:                                               ; preds = %32
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @is_migration_entry(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call %struct.page* @migration_entry_to_page(i64 %85)
  store %struct.page* %86, %struct.page** %18, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load %struct.page*, %struct.page** %18, align 8
  %89 = call i64 @mm_counter(%struct.page* %88)
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @is_write_migration_entry(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %83
  %98 = load i64, i64* %16, align 8
  %99 = call i64 @is_cow_mapping(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = call i32 @make_migration_entry_read(%struct.TYPE_14__* %19)
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @swp_entry_to_pte(i64 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @pte_swp_soft_dirty(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @pte_swp_mksoft_dirty(i32 %111)
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %110, %101
  %114 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @set_pte_at(%struct.mm_struct* %114, i64 %115, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %97, %83
  br label %159

120:                                              ; preds = %78
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @is_device_private_entry(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call %struct.page* @device_private_entry_to_page(i64 %127)
  store %struct.page* %128, %struct.page** %18, align 8
  %129 = load %struct.page*, %struct.page** %18, align 8
  %130 = call i32 @get_page(%struct.page* %129)
  %131 = load i32*, i32** %15, align 8
  %132 = load %struct.page*, %struct.page** %18, align 8
  %133 = call i64 @mm_counter(%struct.page* %132)
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.page*, %struct.page** %18, align 8
  %138 = call i32 @page_dup_rmap(%struct.page* %137, i32 0)
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @is_write_device_private_entry(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %125
  %144 = load i64, i64* %16, align 8
  %145 = call i64 @is_cow_mapping(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = call i32 @make_device_private_entry_read(%struct.TYPE_14__* %19)
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @swp_entry_to_pte(i64 %150)
  store i32 %151, i32* %17, align 4
  %152 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @set_pte_at(%struct.mm_struct* %152, i64 %153, i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %147, %143, %125
  br label %158

158:                                              ; preds = %157, %120
  br label %159

159:                                              ; preds = %158, %119
  br label %160

160:                                              ; preds = %159, %72
  br label %213

161:                                              ; preds = %7
  %162 = load i64, i64* %16, align 8
  %163 = call i64 @is_cow_mapping(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %161
  %166 = load i32, i32* %17, align 4
  %167 = call i64 @pte_write(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @ptep_set_wrprotect(%struct.mm_struct* %170, i64 %171, i32* %172)
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @pte_wrprotect(i32 %174)
  store i32 %175, i32* %17, align 4
  br label %176

176:                                              ; preds = %169, %165, %161
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* @VM_SHARED, align 8
  %179 = and i64 %177, %178
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* %17, align 4
  %183 = call i32 @pte_mkclean(i32 %182)
  store i32 %183, i32* %17, align 4
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @pte_mkold(i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i32, i32* %17, align 4
  %190 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %187, i64 %188, i32 %189)
  store %struct.page* %190, %struct.page** %18, align 8
  %191 = load %struct.page*, %struct.page** %18, align 8
  %192 = icmp ne %struct.page* %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %184
  %194 = load %struct.page*, %struct.page** %18, align 8
  %195 = call i32 @get_page(%struct.page* %194)
  %196 = load %struct.page*, %struct.page** %18, align 8
  %197 = call i32 @page_dup_rmap(%struct.page* %196, i32 0)
  %198 = load i32*, i32** %15, align 8
  %199 = load %struct.page*, %struct.page** %18, align 8
  %200 = call i64 @mm_counter(%struct.page* %199)
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %212

204:                                              ; preds = %184
  %205 = load i32, i32* %17, align 4
  %206 = call i64 @pte_devmap(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* %17, align 4
  %210 = call %struct.page* @pte_page(i32 %209)
  store %struct.page* %210, %struct.page** %18, align 8
  br label %211

211:                                              ; preds = %208, %204
  br label %212

212:                                              ; preds = %211, %193
  br label %213

213:                                              ; preds = %212, %160
  %214 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %215 = load i64, i64* %14, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = load i32, i32* %17, align 4
  %218 = call i32 @set_pte_at(%struct.mm_struct* %214, i64 %215, i32* %216, i32 %217)
  store i64 0, i64* %8, align 8
  br label %219

219:                                              ; preds = %213, %49
  %220 = load i64, i64* %8, align 8
  ret i64 %220
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_to_swp_entry(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @non_swap_entry(i64) #1

declare dso_local i64 @swap_duplicate(i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @is_migration_entry(i64) #1

declare dso_local %struct.page* @migration_entry_to_page(i64) #1

declare dso_local i64 @mm_counter(%struct.page*) #1

declare dso_local i64 @is_write_migration_entry(i64) #1

declare dso_local i64 @is_cow_mapping(i64) #1

declare dso_local i32 @make_migration_entry_read(%struct.TYPE_14__*) #1

declare dso_local i32 @swp_entry_to_pte(i64) #1

declare dso_local i64 @pte_swp_soft_dirty(i32) #1

declare dso_local i32 @pte_swp_mksoft_dirty(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i64 @is_device_private_entry(i64) #1

declare dso_local %struct.page* @device_private_entry_to_page(i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_dup_rmap(%struct.page*, i32) #1

declare dso_local i64 @is_write_device_private_entry(i64) #1

declare dso_local i32 @make_device_private_entry_read(%struct.TYPE_14__*) #1

declare dso_local i64 @pte_write(i32) #1

declare dso_local i32 @ptep_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_mkclean(i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @pte_devmap(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
