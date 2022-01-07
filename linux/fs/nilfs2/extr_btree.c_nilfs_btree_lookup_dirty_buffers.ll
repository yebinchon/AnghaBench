; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_lookup_dirty_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_lookup_dirty_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.list_head = type { i32 }
%struct.address_space = type { i32 }
%struct.pagevec = type { i32* }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.TYPE_2__ = type { %struct.address_space }

@NILFS_BTREE_LEVEL_MAX = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.list_head*)* @nilfs_btree_lookup_dirty_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_lookup_dirty_buffers(%struct.nilfs_bmap* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.nilfs_bmap*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pagevec, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %14 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %15 = call %struct.TYPE_2__* @NILFS_BMAP_I(%struct.nilfs_bmap* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.address_space* %16, %struct.address_space** %5, align 8
  %17 = load i32, i32* @NILFS_BTREE_LEVEL_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca %struct.list_head, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %31, %2
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @NILFS_BTREE_LEVEL_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %20, i64 %28
  %30 = call i32 @INIT_LIST_HEAD(%struct.list_head* %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %22

34:                                               ; preds = %22
  %35 = call i32 @pagevec_init(%struct.pagevec* %8)
  br label %36

36:                                               ; preds = %73, %34
  %37 = load %struct.address_space*, %struct.address_space** %5, align 8
  %38 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %39 = call i64 @pagevec_lookup_tag(%struct.pagevec* %8, %struct.address_space* %37, i32* %11, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @pagevec_count(%struct.pagevec* %8)
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %8, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.buffer_head* @page_buffers(i32 %52)
  store %struct.buffer_head* %53, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %53, %struct.buffer_head** %9, align 8
  br label %54

54:                                               ; preds = %63, %46
  %55 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %56 = call i64 @buffer_dirty(%struct.buffer_head* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = call i32 @nilfs_btree_add_dirty_buffer(%struct.nilfs_bmap* %59, %struct.list_head* %20, %struct.buffer_head* %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %9, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %68 = icmp ne %struct.buffer_head* %66, %67
  br i1 %68, label %54, label %69

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %42

73:                                               ; preds = %42
  %74 = call i32 @pagevec_release(%struct.pagevec* %8)
  %75 = call i32 (...) @cond_resched()
  br label %36

76:                                               ; preds = %36
  %77 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %88, %76
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @NILFS_BTREE_LEVEL_MAX, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.list_head, %struct.list_head* %20, i64 %84
  %86 = load %struct.list_head*, %struct.list_head** %4, align 8
  %87 = call i32 @list_splice_tail(%struct.list_head* %85, %struct.list_head* %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %78

91:                                               ; preds = %78
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

declare dso_local %struct.TYPE_2__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i64 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local %struct.buffer_head* @page_buffers(i32) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_add_dirty_buffer(%struct.nilfs_bmap*, %struct.list_head*, %struct.buffer_head*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @list_splice_tail(%struct.list_head*, %struct.list_head*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
