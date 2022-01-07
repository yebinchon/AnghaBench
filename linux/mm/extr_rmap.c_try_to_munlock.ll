; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_try_to_munlock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_try_to_munlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.rmap_walk_control = type { i8*, i32, i32, i32 }

@TTU_MUNLOCK = common dso_local global i64 0, align 8
@page_lock_anon_vma_read = common dso_local global i32 0, align 4
@page_not_mapped = common dso_local global i32 0, align 4
@try_to_unmap_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_to_munlock(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.rmap_walk_control, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %3, i32 0, i32 0
  %5 = load i64, i64* @TTU_MUNLOCK, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %4, align 8
  %7 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %3, i32 0, i32 1
  %8 = load i32, i32* @page_lock_anon_vma_read, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %3, i32 0, i32 2
  %10 = load i32, i32* @page_not_mapped, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %3, i32 0, i32 3
  %12 = load i32, i32* @try_to_unmap_one, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @PageLocked(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i64 @PageLRU(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ true, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @VM_BUG_ON_PAGE(i32 %22, %struct.page* %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i64 @PageCompound(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.page*, %struct.page** %2, align 8
  %30 = call i64 @PageDoubleMap(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %20
  %33 = phi i1 [ false, %20 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.page*, %struct.page** %2, align 8
  %36 = call i32 @VM_BUG_ON_PAGE(i32 %34, %struct.page* %35)
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i32 @rmap_walk(%struct.page* %37, %struct.rmap_walk_control* %3)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

declare dso_local i32 @rmap_walk(%struct.page*, %struct.rmap_walk_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
