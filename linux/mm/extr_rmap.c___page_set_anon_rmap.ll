; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c___page_set_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c___page_set_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.vm_area_struct = type { %struct.anon_vma* }
%struct.anon_vma = type { %struct.anon_vma* }

@PAGE_MAPPING_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.vm_area_struct*, i64, i32)* @__page_set_anon_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__page_set_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon_vma*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  store %struct.anon_vma* %12, %struct.anon_vma** %9, align 8
  %13 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %14 = icmp ne %struct.anon_vma* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i64 @PageAnon(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %45

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %27 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %26, i32 0, i32 0
  %28 = load %struct.anon_vma*, %struct.anon_vma** %27, align 8
  store %struct.anon_vma* %28, %struct.anon_vma** %9, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %31 = bitcast %struct.anon_vma* %30 to i8*
  %32 = load i32, i32* @PAGE_MAPPING_ANON, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to %struct.anon_vma*
  store %struct.anon_vma* %35, %struct.anon_vma** %9, align 8
  %36 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %37 = bitcast %struct.anon_vma* %36 to %struct.address_space*
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 1
  store %struct.address_space* %37, %struct.address_space** %39, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @linear_page_index(%struct.vm_area_struct* %40, i64 %41)
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @linear_page_index(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
