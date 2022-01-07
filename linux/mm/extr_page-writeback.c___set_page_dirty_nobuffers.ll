; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___set_page_dirty_nobuffers.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___set_page_dirty_nobuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i64, i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@I_DIRTY_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__set_page_dirty_nobuffers(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @lock_page_memcg(%struct.page* %6)
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @TestSetPageDirty(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call %struct.address_space* @page_mapping(%struct.page* %12)
  store %struct.address_space* %13, %struct.address_space** %4, align 8
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = icmp ne %struct.address_space* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @unlock_page_memcg(%struct.page* %17)
  store i32 1, i32* %2, align 4
  br label %71

19:                                               ; preds = %11
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @xa_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call %struct.address_space* @page_mapping(%struct.page* %24)
  %26 = load %struct.address_space*, %struct.address_space** %4, align 8
  %27 = icmp ne %struct.address_space* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @PagePrivate(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %19
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @PageUptodate(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %33, %19
  %39 = phi i1 [ false, %19 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = load %struct.address_space*, %struct.address_space** %4, align 8
  %44 = call i32 @account_page_dirtied(%struct.page* %42, %struct.address_space* %43)
  %45 = load %struct.address_space*, %struct.address_space** %4, align 8
  %46 = getelementptr inbounds %struct.address_space, %struct.address_space* %45, i32 0, i32 1
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @page_index(%struct.page* %47)
  %49 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %50 = call i32 @__xa_set_mark(i32* %46, i32 %48, i32 %49)
  %51 = load %struct.address_space*, %struct.address_space** %4, align 8
  %52 = getelementptr inbounds %struct.address_space, %struct.address_space* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @xa_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.page*, %struct.page** %3, align 8
  %56 = call i32 @unlock_page_memcg(%struct.page* %55)
  %57 = load %struct.address_space*, %struct.address_space** %4, align 8
  %58 = getelementptr inbounds %struct.address_space, %struct.address_space* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load %struct.address_space*, %struct.address_space** %4, align 8
  %63 = getelementptr inbounds %struct.address_space, %struct.address_space* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @I_DIRTY_PAGES, align 4
  %66 = call i32 @__mark_inode_dirty(i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %38
  store i32 1, i32* %2, align 4
  br label %71

68:                                               ; preds = %1
  %69 = load %struct.page*, %struct.page** %3, align 8
  %70 = call i32 @unlock_page_memcg(%struct.page* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %67, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @account_page_dirtied(%struct.page*, %struct.address_space*) #1

declare dso_local i32 @__xa_set_mark(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__mark_inode_dirty(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
