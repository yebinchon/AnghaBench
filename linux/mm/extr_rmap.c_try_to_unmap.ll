; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_try_to_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_try_to_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.rmap_walk_control = type { i8*, i32, i32, i32, i32 }

@page_lock_anon_vma_read = common dso_local global i32 0, align 4
@page_mapcount_is_zero = common dso_local global i32 0, align 4
@try_to_unmap_one = common dso_local global i32 0, align 4
@TTU_MIGRATION = common dso_local global i32 0, align 4
@TTU_SPLIT_FREEZE = common dso_local global i32 0, align 4
@invalid_migration_vma = common dso_local global i32 0, align 4
@TTU_RMAP_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_unmap(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmap_walk_control, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %5, i32 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %5, i32 0, i32 2
  %12 = load i32, i32* @page_lock_anon_vma_read, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %5, i32 0, i32 3
  %14 = load i32, i32* @page_mapcount_is_zero, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %5, i32 0, i32 4
  %16 = load i32, i32* @try_to_unmap_one, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TTU_MIGRATION, align 4
  %19 = load i32, i32* @TTU_SPLIT_FREEZE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @PageKsm(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i64 @PageAnon(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @invalid_migration_vma, align 4
  %33 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %27, %23, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @TTU_RMAP_LOCKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = call i32 @rmap_walk_locked(%struct.page* %40, %struct.rmap_walk_control* %5)
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i32 @rmap_walk(%struct.page* %43, %struct.rmap_walk_control* %5)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = call i32 @page_mapcount(%struct.page* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  ret i32 %51
}

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @rmap_walk_locked(%struct.page*, %struct.rmap_walk_control*) #1

declare dso_local i32 @rmap_walk(%struct.page*, %struct.rmap_walk_control*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
