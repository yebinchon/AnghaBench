; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i32, %struct.queue_pages* }
%struct.queue_pages = type { i64, i32 }
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MPOL_MF_MOVE = common dso_local global i64 0, align 8
@MPOL_MF_MOVE_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, %struct.mm_walk*)* @queue_pages_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_pages_pmd(i32* %0, i32* %1, i64 %2, i64 %3, %struct.mm_walk* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mm_walk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.queue_pages*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.mm_walk* %4, %struct.mm_walk** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.mm_walk*, %struct.mm_walk** %10, align 8
  %16 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 1
  %17 = load %struct.queue_pages*, %struct.queue_pages** %16, align 8
  store %struct.queue_pages* %17, %struct.queue_pages** %13, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @is_pmd_migration_entry(i32 %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %78

26:                                               ; preds = %5
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.page* @pmd_page(i32 %28)
  store %struct.page* %29, %struct.page** %12, align 8
  %30 = load %struct.page*, %struct.page** %12, align 8
  %31 = call i64 @is_huge_zero_page(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.mm_walk*, %struct.mm_walk** %10, align 8
  %37 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @__split_huge_pmd(i32 %38, i32* %39, i64 %40, i32 0, i32* null)
  store i32 2, i32* %11, align 4
  br label %81

42:                                               ; preds = %26
  %43 = load %struct.page*, %struct.page** %12, align 8
  %44 = load %struct.queue_pages*, %struct.queue_pages** %13, align 8
  %45 = call i32 @queue_pages_required(%struct.page* %43, %struct.queue_pages* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %78

48:                                               ; preds = %42
  %49 = load %struct.queue_pages*, %struct.queue_pages** %13, align 8
  %50 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @MPOL_MF_MOVE, align 8
  %54 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %55 = or i64 %53, %54
  %56 = and i64 %52, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %48
  %59 = load %struct.mm_walk*, %struct.mm_walk** %10, align 8
  %60 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @vma_migratable(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.page*, %struct.page** %12, align 8
  %66 = load %struct.queue_pages*, %struct.queue_pages** %13, align 8
  %67 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i64 @migrate_page_add(%struct.page* %65, i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %58
  store i32 1, i32* %11, align 4
  br label %78

73:                                               ; preds = %64
  br label %77

74:                                               ; preds = %48
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %72, %47, %23
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @spin_unlock(i32* %79)
  br label %81

81:                                               ; preds = %78, %33
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_pmd_migration_entry(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i64 @is_huge_zero_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__split_huge_pmd(i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @queue_pages_required(%struct.page*, %struct.queue_pages*) #1

declare dso_local i32 @vma_migratable(i32) #1

declare dso_local i64 @migrate_page_add(%struct.page*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
