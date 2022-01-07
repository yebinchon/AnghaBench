; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@AOP_TRUNCATED_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ocfs2_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ocfs2_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %15)
  store %struct.ocfs2_inode_info* %16, %struct.ocfs2_inode_info** %6, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %22 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i64 [ %30, %27 ], [ 0, %31 ]
  %34 = call i32 @trace_ocfs2_readpage(i64 %24, i64 %33)
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @ocfs2_inode_lock_with_page(%struct.inode* %35, i32* null, i32 0, %struct.page* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %97

48:                                               ; preds = %32
  %49 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %49, i32 0, i32 1
  %51 = call i64 @down_read_trylock(i32* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.page*, %struct.page** %4, align 8
  %56 = call i32 @unlock_page(%struct.page* %55)
  store i32 0, i32* %9, align 4
  %57 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %58 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %57, i32 0, i32 1
  %59 = call i32 @down_read(i32* %58)
  %60 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %60, i32 0, i32 1
  %62 = call i32 @up_read(i32* %61)
  br label %94

63:                                               ; preds = %48
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i64 @i_size_read(%struct.inode* %65)
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @zero_user(%struct.page* %69, i32 0, i32 %70)
  %72 = load %struct.page*, %struct.page** %4, align 8
  %73 = call i32 @SetPageUptodate(%struct.page* %72)
  store i32 0, i32* %8, align 4
  br label %90

74:                                               ; preds = %63
  %75 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %76 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = load %struct.page*, %struct.page** %4, align 8
  %84 = call i32 @ocfs2_readpage_inline(%struct.inode* %82, %struct.page* %83)
  store i32 %84, i32* %8, align 4
  br label %89

85:                                               ; preds = %74
  %86 = load %struct.page*, %struct.page** %4, align 8
  %87 = load i32, i32* @ocfs2_get_block, align 4
  %88 = call i32 @block_read_full_page(%struct.page* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %81
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %92 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %91, i32 0, i32 1
  %93 = call i32 @up_read(i32* %92)
  br label %94

94:                                               ; preds = %90, %53
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call i32 @ocfs2_inode_unlock(%struct.inode* %95, i32 0)
  br label %97

97:                                               ; preds = %94, %45
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.page*, %struct.page** %4, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_readpage(i64, i64) #1

declare dso_local i32 @ocfs2_inode_lock_with_page(%struct.inode*, i32*, i32, %struct.page*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_readpage_inline(%struct.inode*, %struct.page*) #1

declare dso_local i32 @block_read_full_page(%struct.page*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
