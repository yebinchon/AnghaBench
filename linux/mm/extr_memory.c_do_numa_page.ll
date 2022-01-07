; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_numa_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_numa_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32*, i32, i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32 }
%struct.page = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@TNF_NO_GROUP = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@TNF_SHARED = common dso_local global i32 0, align 4
@TNF_MIGRATED = common dso_local global i32 0, align 4
@TNF_MIGRATE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_numa_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_numa_page(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %14 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 5
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  %17 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pte_savedwrite(i32 %20)
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pte_lockptr(i32 %24, i32 %27)
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @spin_lock(i32 %33)
  %35 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %36 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pte_same(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %1
  %49 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %53 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pte_unmap_unlock(i32* %51, i32 %54)
  br label %189

56:                                               ; preds = %1
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %59 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %62 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ptep_modify_prot_start(%struct.vm_area_struct* %57, i32 %60, i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pte_modify(i32 %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @pte_mkyoung(i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %56
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @pte_mkwrite(i32 %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %56
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %79 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %80 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %83 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @ptep_modify_prot_commit(%struct.vm_area_struct* %78, i32 %81, i32* %84, i32 %85, i32 %86)
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %89 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %90 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %93 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @update_mmu_cache(%struct.vm_area_struct* %88, i32 %91, i32* %94)
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %97 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %96, i32 %99, i32 %100)
  store %struct.page* %101, %struct.page** %5, align 8
  %102 = load %struct.page*, %struct.page** %5, align 8
  %103 = icmp ne %struct.page* %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %77
  %105 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %106 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %109 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @pte_unmap_unlock(i32* %107, i32 %110)
  store i32 0, i32* %2, align 4
  br label %199

112:                                              ; preds = %77
  %113 = load %struct.page*, %struct.page** %5, align 8
  %114 = call i64 @PageCompound(%struct.page* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %118 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %121 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pte_unmap_unlock(i32* %119, i32 %122)
  store i32 0, i32* %2, align 4
  br label %199

124:                                              ; preds = %112
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @pte_write(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @TNF_NO_GROUP, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.page*, %struct.page** %5, align 8
  %134 = call i32 @page_mapcount(%struct.page* %133)
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @VM_SHARED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* @TNF_SHARED, align 4
  %145 = load i32, i32* %13, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %143, %136, %132
  %148 = load %struct.page*, %struct.page** %5, align 8
  %149 = call i32 @page_cpupid_last(%struct.page* %148)
  store i32 %149, i32* %7, align 4
  %150 = load %struct.page*, %struct.page** %5, align 8
  %151 = call i32 @page_to_nid(%struct.page* %150)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.page*, %struct.page** %5, align 8
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %154 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %155 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @numa_migrate_prep(%struct.page* %152, %struct.vm_area_struct* %153, i32 %156, i32 %157, i32* %13)
  store i32 %158, i32* %8, align 4
  %159 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %160 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %163 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @pte_unmap_unlock(i32* %161, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @NUMA_NO_NODE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %147
  %170 = load %struct.page*, %struct.page** %5, align 8
  %171 = call i32 @put_page(%struct.page* %170)
  br label %189

172:                                              ; preds = %147
  %173 = load %struct.page*, %struct.page** %5, align 8
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @migrate_misplaced_page(%struct.page* %173, %struct.vm_area_struct* %174, i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* @TNF_MIGRATED, align 4
  %182 = load i32, i32* %13, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %13, align 4
  br label %188

184:                                              ; preds = %172
  %185 = load i32, i32* @TNF_MIGRATE_FAIL, align 4
  %186 = load i32, i32* %13, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %184, %179
  br label %189

189:                                              ; preds = %188, %169, %48
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @NUMA_NO_NODE, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @task_numa_fault(i32 %194, i32 %195, i32 1, i32 %196)
  br label %198

198:                                              ; preds = %193, %189
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %198, %116, %104
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @pte_savedwrite(i32) #1

declare dso_local i32 @pte_lockptr(i32, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32) #1

declare dso_local i32 @ptep_modify_prot_start(%struct.vm_area_struct*, i32, i32*) #1

declare dso_local i32 @pte_modify(i32, i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i32 @pte_mkwrite(i32) #1

declare dso_local i32 @ptep_modify_prot_commit(%struct.vm_area_struct*, i32, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i32, i32*) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @page_cpupid_last(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @numa_migrate_prep(%struct.page*, %struct.vm_area_struct*, i32, i32, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @migrate_misplaced_page(%struct.page*, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @task_numa_fault(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
