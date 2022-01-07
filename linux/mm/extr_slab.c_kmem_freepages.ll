; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_freepages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_freepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kmem_cache = type { i32 }
%struct.page = type { i32* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.page*)* @kmem_freepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmem_freepages(%struct.kmem_cache* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %7 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @PageSlab(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @__ClearPageSlabPfmemalloc(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @__ClearPageSlab(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @page_mapcount_reset(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %29
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %2
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %40 = call i32 @uncharge_slab_page(%struct.page* %37, i32 %38, %struct.kmem_cache* %39)
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @__free_pages(%struct.page* %41, i32 %42)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @__ClearPageSlabPfmemalloc(%struct.page*) #1

declare dso_local i32 @__ClearPageSlab(%struct.page*) #1

declare dso_local i32 @page_mapcount_reset(%struct.page*) #1

declare dso_local i32 @uncharge_slab_page(%struct.page*, i32, %struct.kmem_cache*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
