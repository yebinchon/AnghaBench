; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_init_z3fold_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_init_z3fold_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i32, i32, i32, %struct.z3fold_pool*, %struct.z3fold_buddy_slots*, i64, i64, i64, i64, i64, i32, i32 }
%struct.z3fold_buddy_slots = type { i32 }
%struct.page = type { i32, i32 }
%struct.z3fold_pool = type { i32 }

@PAGE_HEADLESS = common dso_local global i32 0, align 4
@MIDDLE_CHUNK_MAPPED = common dso_local global i32 0, align 4
@NEEDS_COMPACTING = common dso_local global i32 0, align 4
@PAGE_STALE = common dso_local global i32 0, align 4
@PAGE_CLAIMED = common dso_local global i32 0, align 4
@compact_page_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z3fold_header* (%struct.page*, i32, %struct.z3fold_pool*, i32)* @init_z3fold_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z3fold_header* @init_z3fold_page(%struct.page* %0, i32 %1, %struct.z3fold_pool* %2, i32 %3) #0 {
  %5 = alloca %struct.z3fold_header*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.z3fold_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.z3fold_header*, align 8
  %11 = alloca %struct.z3fold_buddy_slots*, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.z3fold_pool* %2, %struct.z3fold_pool** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = call %struct.z3fold_header* @page_address(%struct.page* %12)
  store %struct.z3fold_header* %13, %struct.z3fold_header** %10, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load i32, i32* @PAGE_HEADLESS, align 4
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @MIDDLE_CHUNK_MAPPED, align 4
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @NEEDS_COMPACTING, align 4
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @PAGE_STALE, align 4
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load i32, i32* @PAGE_CLAIMED, align 4
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  store %struct.z3fold_header* %40, %struct.z3fold_header** %5, align 8
  br label %81

41:                                               ; preds = %4
  %42 = load %struct.z3fold_pool*, %struct.z3fold_pool** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.z3fold_buddy_slots* @alloc_slots(%struct.z3fold_pool* %42, i32 %43)
  store %struct.z3fold_buddy_slots* %44, %struct.z3fold_buddy_slots** %11, align 8
  %45 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %11, align 8
  %46 = icmp ne %struct.z3fold_buddy_slots* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store %struct.z3fold_header* null, %struct.z3fold_header** %5, align 8
  br label %81

48:                                               ; preds = %41
  %49 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %50 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %49, i32 0, i32 11
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %53 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %52, i32 0, i32 10
  %54 = call i32 @kref_init(i32* %53)
  %55 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %56 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %58 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %60 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %62 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %64 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %66 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load %struct.z3fold_buddy_slots*, %struct.z3fold_buddy_slots** %11, align 8
  %68 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %69 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %68, i32 0, i32 4
  store %struct.z3fold_buddy_slots* %67, %struct.z3fold_buddy_slots** %69, align 8
  %70 = load %struct.z3fold_pool*, %struct.z3fold_pool** %8, align 8
  %71 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %72 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %71, i32 0, i32 3
  store %struct.z3fold_pool* %70, %struct.z3fold_pool** %72, align 8
  %73 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %74 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %73, i32 0, i32 2
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  %77 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %76, i32 0, i32 1
  %78 = load i32, i32* @compact_page_work, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.z3fold_header*, %struct.z3fold_header** %10, align 8
  store %struct.z3fold_header* %80, %struct.z3fold_header** %5, align 8
  br label %81

81:                                               ; preds = %48, %47, %39
  %82 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  ret %struct.z3fold_header* %82
}

declare dso_local %struct.z3fold_header* @page_address(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.z3fold_buddy_slots* @alloc_slots(%struct.z3fold_pool*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
