; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_move_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_move_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { %struct.anon_vma* }
%struct.anon_vma = type { i32 }
%struct.address_space = type { i32 }

@PAGE_MAPPING_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_move_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.anon_vma*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  store %struct.anon_vma* %8, %struct.anon_vma** %5, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call %struct.page* @compound_head(%struct.page* %9)
  store %struct.page* %10, %struct.page** %3, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @VM_BUG_ON_PAGE(i32 %15, %struct.page* %16)
  %18 = load %struct.anon_vma*, %struct.anon_vma** %5, align 8
  %19 = icmp ne %struct.anon_vma* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = call i32 @VM_BUG_ON_VMA(i32 %21, %struct.vm_area_struct* %22)
  %24 = load %struct.anon_vma*, %struct.anon_vma** %5, align 8
  %25 = bitcast %struct.anon_vma* %24 to i8*
  %26 = load i32, i32* @PAGE_MAPPING_ANON, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = bitcast i8* %28 to %struct.anon_vma*
  store %struct.anon_vma* %29, %struct.anon_vma** %5, align 8
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.anon_vma*, %struct.anon_vma** %5, align 8
  %34 = bitcast %struct.anon_vma* %33 to %struct.address_space*
  %35 = call i32 @WRITE_ONCE(i32 %32, %struct.address_space* %34)
  ret void
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
