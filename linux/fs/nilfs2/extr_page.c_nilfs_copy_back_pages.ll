; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_copy_back_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_copy_back_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { %struct.address_space*, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_copy_back_pages(%struct.address_space* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.pagevec, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = call i32 @pagevec_init(%struct.pagevec* %5)
  br label %14

14:                                               ; preds = %118, %2
  %15 = load %struct.address_space*, %struct.address_space** %4, align 8
  %16 = call i32 @pagevec_lookup(%struct.pagevec* %5, %struct.address_space* %15, i32* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  ret void

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %115, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pagevec_count(%struct.pagevec* %5)
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %118

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %5, i32 0, i32 0
  %27 = load %struct.page**, %struct.page*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %29
  %31 = load %struct.page*, %struct.page** %30, align 8
  store %struct.page* %31, %struct.page** %9, align 8
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.page*, %struct.page** %9, align 8
  %36 = call i32 @lock_page(%struct.page* %35)
  %37 = load %struct.address_space*, %struct.address_space** %3, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.page* @find_lock_page(%struct.address_space* %37, i32 %38)
  store %struct.page* %39, %struct.page** %10, align 8
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %25
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = call i32 @PageDirty(%struct.page* %43)
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = load %struct.page*, %struct.page** %9, align 8
  %48 = call i32 @nilfs_copy_page(%struct.page* %46, %struct.page* %47, i32 0)
  %49 = load %struct.page*, %struct.page** %10, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  %51 = load %struct.page*, %struct.page** %10, align 8
  %52 = call i32 @put_page(%struct.page* %51)
  br label %112

53:                                               ; preds = %25
  %54 = load %struct.address_space*, %struct.address_space** %4, align 8
  %55 = getelementptr inbounds %struct.address_space, %struct.address_space* %54, i32 0, i32 0
  %56 = call i32 @xa_lock_irq(i32* %55)
  %57 = load %struct.address_space*, %struct.address_space** %4, align 8
  %58 = getelementptr inbounds %struct.address_space, %struct.address_space* %57, i32 0, i32 0
  %59 = load i32, i32* %11, align 4
  %60 = call %struct.page* @__xa_erase(i32* %58, i32 %59)
  store %struct.page* %60, %struct.page** %12, align 8
  %61 = load %struct.page*, %struct.page** %9, align 8
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = icmp ne %struct.page* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load %struct.address_space*, %struct.address_space** %4, align 8
  %67 = getelementptr inbounds %struct.address_space, %struct.address_space* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.address_space*, %struct.address_space** %4, align 8
  %71 = getelementptr inbounds %struct.address_space, %struct.address_space* %70, i32 0, i32 0
  %72 = call i32 @xa_unlock_irq(i32* %71)
  %73 = load %struct.address_space*, %struct.address_space** %3, align 8
  %74 = getelementptr inbounds %struct.address_space, %struct.address_space* %73, i32 0, i32 0
  %75 = call i32 @xa_lock_irq(i32* %74)
  %76 = load %struct.address_space*, %struct.address_space** %3, align 8
  %77 = getelementptr inbounds %struct.address_space, %struct.address_space* %76, i32 0, i32 0
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.page*, %struct.page** %9, align 8
  %80 = load i32, i32* @GFP_NOFS, align 4
  %81 = call %struct.page* @__xa_store(i32* %77, i32 %78, %struct.page* %79, i32 %80)
  store %struct.page* %81, %struct.page** %12, align 8
  %82 = load %struct.page*, %struct.page** %12, align 8
  %83 = call i64 @unlikely(%struct.page* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %53
  %86 = load %struct.page*, %struct.page** %9, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 0
  store %struct.address_space* null, %struct.address_space** %87, align 8
  %88 = load %struct.page*, %struct.page** %9, align 8
  %89 = call i32 @put_page(%struct.page* %88)
  br label %108

90:                                               ; preds = %53
  %91 = load %struct.address_space*, %struct.address_space** %3, align 8
  %92 = load %struct.page*, %struct.page** %9, align 8
  %93 = getelementptr inbounds %struct.page, %struct.page* %92, i32 0, i32 0
  store %struct.address_space* %91, %struct.address_space** %93, align 8
  %94 = load %struct.address_space*, %struct.address_space** %3, align 8
  %95 = getelementptr inbounds %struct.address_space, %struct.address_space* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.page*, %struct.page** %9, align 8
  %99 = call i32 @PageDirty(%struct.page* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.address_space*, %struct.address_space** %3, align 8
  %103 = getelementptr inbounds %struct.address_space, %struct.address_space* %102, i32 0, i32 0
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %106 = call i32 @__xa_set_mark(i32* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %90
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.address_space*, %struct.address_space** %3, align 8
  %110 = getelementptr inbounds %struct.address_space, %struct.address_space* %109, i32 0, i32 0
  %111 = call i32 @xa_unlock_irq(i32* %110)
  br label %112

112:                                              ; preds = %108, %42
  %113 = load %struct.page*, %struct.page** %9, align 8
  %114 = call i32 @unlock_page(%struct.page* %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %21

118:                                              ; preds = %21
  %119 = call i32 @pagevec_release(%struct.pagevec* %5)
  %120 = call i32 (...) @cond_resched()
  br label %14
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i32*) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @nilfs_copy_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local %struct.page* @__xa_erase(i32*, i32) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local %struct.page* @__xa_store(i32*, i32, %struct.page*, i32) #1

declare dso_local i64 @unlikely(%struct.page*) #1

declare dso_local i32 @__xa_set_mark(i32*, i32, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
