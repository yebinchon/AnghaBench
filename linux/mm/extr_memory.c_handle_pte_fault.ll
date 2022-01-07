; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_handle_pte_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_handle_pte_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, i32*, i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @handle_pte_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_pte_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %5 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %6 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pmd_none(i32 %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @pmd_devmap_trans_unstable(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %197

22:                                               ; preds = %15
  %23 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %24 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @pte_offset_map(i32* %25, i32 %28)
  %30 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %33 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %37 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = call i32 (...) @barrier()
  %39 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @pte_none(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %22
  %45 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %46 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @pte_unmap(i32* %47)
  %49 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %22
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %59 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i64 @vma_is_anonymous(%struct.TYPE_6__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %65 = call i32 @do_anonymous_page(%struct.vm_fault* %64)
  store i32 %65, i32* %2, align 4
  br label %197

66:                                               ; preds = %57
  %67 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %68 = call i32 @do_fault(%struct.vm_fault* %67)
  store i32 %68, i32* %2, align 4
  br label %197

69:                                               ; preds = %52
  %70 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %71 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pte_present(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %77 = call i32 @do_swap_page(%struct.vm_fault* %76)
  store i32 %77, i32* %2, align 4
  br label %197

78:                                               ; preds = %69
  %79 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %80 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @pte_protnone(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %86 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i64 @vma_is_accessible(%struct.TYPE_6__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %92 = call i32 @do_numa_page(%struct.vm_fault* %91)
  store i32 %92, i32* %2, align 4
  br label %197

93:                                               ; preds = %84, %78
  %94 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %95 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %100 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @pte_lockptr(i32 %98, i32* %101)
  %103 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %104 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %106 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @spin_lock(i32 %107)
  %109 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %110 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %4, align 4
  %112 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %113 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @pte_same(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %93
  br label %189

124:                                              ; preds = %93
  %125 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %126 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @pte_write(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %137 = call i32 @do_wp_page(%struct.vm_fault* %136)
  store i32 %137, i32* %2, align 4
  br label %197

138:                                              ; preds = %131
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @pte_mkdirty(i32 %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %124
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @pte_mkyoung(i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %145 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %148 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %151 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %155 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %158 = and i32 %156, %157
  %159 = call i64 @ptep_set_access_flags(%struct.TYPE_6__* %146, i32 %149, i32* %152, i32 %153, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %141
  %162 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %163 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %162, i32 0, i32 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %166 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %169 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @update_mmu_cache(%struct.TYPE_6__* %164, i32 %167, i32* %170)
  br label %188

172:                                              ; preds = %141
  %173 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %174 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %181 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %180, i32 0, i32 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %184 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @flush_tlb_fix_spurious_fault(%struct.TYPE_6__* %182, i32 %185)
  br label %187

187:                                              ; preds = %179, %172
  br label %188

188:                                              ; preds = %187, %161
  br label %189

189:                                              ; preds = %188, %123
  %190 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %191 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %194 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pte_unmap_unlock(i32* %192, i32 %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %189, %135, %90, %75, %66, %63, %21
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @pmd_devmap_trans_unstable(i32*) #1

declare dso_local i32* @pte_offset_map(i32*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i64 @vma_is_anonymous(%struct.TYPE_6__*) #1

declare dso_local i32 @do_anonymous_page(%struct.vm_fault*) #1

declare dso_local i32 @do_fault(%struct.vm_fault*) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @do_swap_page(%struct.vm_fault*) #1

declare dso_local i64 @pte_protnone(i32) #1

declare dso_local i64 @vma_is_accessible(%struct.TYPE_6__*) #1

declare dso_local i32 @do_numa_page(%struct.vm_fault*) #1

declare dso_local i32 @pte_lockptr(i32, i32*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @do_wp_page(%struct.vm_fault*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i64 @ptep_set_access_flags(%struct.TYPE_6__*, i32, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @flush_tlb_fix_spurious_fault(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
