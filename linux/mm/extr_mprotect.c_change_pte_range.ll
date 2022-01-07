; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_SOFTDIRTY = common dso_local global i32 0, align 4
@CONFIG_MIGRATION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i32)* @change_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_pte_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.page*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %19, align 8
  %27 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @pmd_trans_unstable(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i64 0, i64* %8, align 8
  br label %234

32:                                               ; preds = %7
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32* @pte_offset_map_lock(%struct.TYPE_4__* %35, i32* %36, i64 %37, i32** %18)
  store i32* %38, i32** %16, align 8
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VM_SHARED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @atomic_read(i32* %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @numa_node_id()
  store i32 %56, i32* %20, align 4
  br label %57

57:                                               ; preds = %55, %48, %41, %32
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @flush_tlb_batched_pending(%struct.TYPE_4__* %60)
  %62 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %63

63:                                               ; preds = %218, %57
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i64 @pte_present(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %168

69:                                               ; preds = %63
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = call i64 @pte_write(i32 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %76
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %82, i64 %83, i32 %84)
  store %struct.page* %85, %struct.page** %23, align 8
  %86 = load %struct.page*, %struct.page** %23, align 8
  %87 = icmp ne %struct.page* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.page*, %struct.page** %23, align 8
  %90 = call i64 @PageKsm(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %81
  br label %218

93:                                               ; preds = %88
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @is_cow_mapping(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.page*, %struct.page** %23, align 8
  %101 = call i32 @page_mapcount(%struct.page* %100)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %218

104:                                              ; preds = %99, %93
  %105 = load %struct.page*, %struct.page** %23, align 8
  %106 = call i64 @page_is_file_cache(%struct.page* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.page*, %struct.page** %23, align 8
  %110 = call i64 @PageDirty(%struct.page* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %218

113:                                              ; preds = %108, %104
  %114 = load i32, i32* %17, align 4
  %115 = call i64 @pte_protnone(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %218

118:                                              ; preds = %113
  %119 = load i32, i32* %20, align 4
  %120 = load %struct.page*, %struct.page** %23, align 8
  %121 = call i32 @page_to_nid(%struct.page* %120)
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %218

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %76
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = call i32 @ptep_modify_prot_start(%struct.vm_area_struct* %126, i64 %127, i32* %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @pte_modify(i32 %130, i32 %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @pte_mk_savedwrite(i32 %136)
  store i32 %137, i32* %21, align 4
  br label %138

138:                                              ; preds = %135, %125
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load i32, i32* %21, align 4
  %143 = call i64 @pte_dirty(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load i32, i32* %21, align 4
  %147 = call i64 @pte_soft_dirty(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %151 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VM_SOFTDIRTY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149, %145
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @pte_mkwrite(i32 %157)
  store i32 %158, i32* %21, align 4
  br label %159

159:                                              ; preds = %156, %149, %141, %138
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i32*, i32** %16, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %21, align 4
  %165 = call i32 @ptep_modify_prot_commit(%struct.vm_area_struct* %160, i64 %161, i32* %162, i32 %163, i32 %164)
  %166 = load i64, i64* %19, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %19, align 8
  br label %217

168:                                              ; preds = %63
  %169 = load i32, i32* @CONFIG_MIGRATION, align 4
  %170 = call i64 @IS_ENABLED(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %216

172:                                              ; preds = %168
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @pte_to_swp_entry(i32 %173)
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %24, align 4
  %176 = call i64 @is_write_migration_entry(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %172
  %179 = call i32 @make_migration_entry_read(i32* %24)
  %180 = load i32, i32* %24, align 4
  %181 = call i32 @swp_entry_to_pte(i32 %180)
  store i32 %181, i32* %25, align 4
  %182 = load i32, i32* %17, align 4
  %183 = call i64 @pte_swp_soft_dirty(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load i32, i32* %25, align 4
  %187 = call i32 @pte_swp_mksoft_dirty(i32 %186)
  store i32 %187, i32* %25, align 4
  br label %188

188:                                              ; preds = %185, %178
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %190 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %189, i32 0, i32 1
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = load i32, i32* %25, align 4
  %195 = call i32 @set_pte_at(%struct.TYPE_4__* %191, i64 %192, i32* %193, i32 %194)
  %196 = load i64, i64* %19, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %19, align 8
  br label %198

198:                                              ; preds = %188, %172
  %199 = load i32, i32* %24, align 4
  %200 = call i64 @is_write_device_private_entry(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = call i32 @make_device_private_entry_read(i32* %24)
  %204 = load i32, i32* %24, align 4
  %205 = call i32 @swp_entry_to_pte(i32 %204)
  store i32 %205, i32* %26, align 4
  %206 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %207 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %206, i32 0, i32 1
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i64, i64* %11, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = load i32, i32* %26, align 4
  %212 = call i32 @set_pte_at(%struct.TYPE_4__* %208, i64 %209, i32* %210, i32 %211)
  %213 = load i64, i64* %19, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %19, align 8
  br label %215

215:                                              ; preds = %202, %198
  br label %216

216:                                              ; preds = %215, %168
  br label %217

217:                                              ; preds = %216, %159
  br label %218

218:                                              ; preds = %217, %123, %117, %112, %103, %92
  %219 = load i32*, i32** %16, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %16, align 8
  %221 = load i64, i64* @PAGE_SIZE, align 8
  %222 = load i64, i64* %11, align 8
  %223 = add i64 %222, %221
  store i64 %223, i64* %11, align 8
  %224 = load i64, i64* %11, align 8
  %225 = load i64, i64* %12, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %63, label %227

227:                                              ; preds = %218
  %228 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %229 = load i32*, i32** %16, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 -1
  %231 = load i32*, i32** %18, align 8
  %232 = call i32 @pte_unmap_unlock(i32* %230, i32* %231)
  %233 = load i64, i64* %19, align 8
  store i64 %233, i64* %8, align 8
  br label %234

234:                                              ; preds = %227, %31
  %235 = load i64, i64* %8, align 8
  ret i64 %235
}

declare dso_local i64 @pmd_trans_unstable(i32*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.TYPE_4__*, i32*, i64, i32**) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @flush_tlb_batched_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_write(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @PageKsm(%struct.page*) #1

declare dso_local i64 @is_cow_mapping(i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @pte_protnone(i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @ptep_modify_prot_start(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @pte_modify(i32, i32) #1

declare dso_local i32 @pte_mk_savedwrite(i32) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i64 @pte_soft_dirty(i32) #1

declare dso_local i32 @pte_mkwrite(i32) #1

declare dso_local i32 @ptep_modify_prot_commit(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @is_write_migration_entry(i32) #1

declare dso_local i32 @make_migration_entry_read(i32*) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i64 @pte_swp_soft_dirty(i32) #1

declare dso_local i32 @pte_swp_mksoft_dirty(i32) #1

declare dso_local i32 @set_pte_at(%struct.TYPE_4__*, i64, i32*, i32) #1

declare dso_local i64 @is_write_device_private_entry(i32) #1

declare dso_local i32 @make_device_private_entry_read(i32*) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
