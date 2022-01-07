; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_commit_change_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_commit_change_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.nilfs_btnode_chkey_ctxt = type { i64, i64, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i64, %struct.page* }
%struct.page = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"invalid oldkey %lld (newkey=%lld)\00", align 1
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_btnode_commit_change_key(%struct.address_space* %0, %struct.nilfs_btnode_chkey_ctxt* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.nilfs_btnode_chkey_ctxt*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.nilfs_btnode_chkey_ctxt* %1, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %10 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %10, i32 0, i32 2
  %12 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %5, align 8
  %13 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %13, i32 0, i32 3
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %6, align 8
  %16 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %17 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = icmp eq %struct.buffer_head* %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 1
  %32 = load %struct.page*, %struct.page** %31, align 8
  store %struct.page* %32, %struct.page** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.page*, %struct.page** %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @NILFS_PAGE_BUG(%struct.page* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %29
  %47 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %48 = call i32 @mark_buffer_dirty(%struct.buffer_head* %47)
  %49 = load %struct.address_space*, %struct.address_space** %3, align 8
  %50 = getelementptr inbounds %struct.address_space, %struct.address_space* %49, i32 0, i32 0
  %51 = call i32 @xa_lock_irq(i32* %50)
  %52 = load %struct.address_space*, %struct.address_space** %3, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 0
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @__xa_erase(i32* %53, i64 %54)
  %56 = load %struct.address_space*, %struct.address_space** %3, align 8
  %57 = getelementptr inbounds %struct.address_space, %struct.address_space* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %60 = call i32 @__xa_set_mark(i32* %57, i64 %58, i32 %59)
  %61 = load %struct.address_space*, %struct.address_space** %3, align 8
  %62 = getelementptr inbounds %struct.address_space, %struct.address_space* %61, i32 0, i32 0
  %63 = call i32 @xa_unlock_irq(i32* %62)
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = getelementptr inbounds %struct.page, %struct.page* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = call i32 @unlock_page(%struct.page* %69)
  br label %85

71:                                               ; preds = %26
  %72 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %74 = call i32 @nilfs_copy_buffer(%struct.buffer_head* %72, %struct.buffer_head* %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %76 = call i32 @mark_buffer_dirty(%struct.buffer_head* %75)
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %81 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %4, align 8
  %82 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %81, i32 0, i32 2
  store %struct.buffer_head* %80, %struct.buffer_head** %82, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %84 = call i32 @nilfs_btnode_delete(%struct.buffer_head* %83)
  br label %85

85:                                               ; preds = %25, %71, %46
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NILFS_PAGE_BUG(%struct.page*, i8*, i64, i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @__xa_erase(i32*, i64) #1

declare dso_local i32 @__xa_set_mark(i32*, i64, i32) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @nilfs_copy_buffer(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_btnode_delete(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
