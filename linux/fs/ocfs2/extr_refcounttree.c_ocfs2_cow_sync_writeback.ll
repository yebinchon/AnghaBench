; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_cow_sync_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_cow_sync_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cow_sync_writeback(%struct.super_block* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i64 @ocfs2_should_order_data(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %103

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %21, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %28, %32
  %34 = add nsw i32 %27, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @filemap_fdatawrite_range(i32 %37, i32 %38, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %103

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %100, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @GFP_NOFS, align 4
  %72 = call %struct.page* @find_or_create_page(i32 %69, i32 %70, i32 %71)
  store %struct.page* %72, %struct.page** %15, align 8
  %73 = load %struct.page*, %struct.page** %15, align 8
  %74 = icmp ne %struct.page* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.page*, %struct.page** %15, align 8
  %79 = call i32 @wait_on_page_writeback(%struct.page* %78)
  %80 = load %struct.page*, %struct.page** %15, align 8
  %81 = call i64 @PageError(%struct.page* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %66
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %91

88:                                               ; preds = %66
  %89 = load %struct.page*, %struct.page** %15, align 8
  %90 = call i32 @mark_page_accessed(%struct.page* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.page*, %struct.page** %15, align 8
  %93 = call i32 @unlock_page(%struct.page* %92)
  %94 = load %struct.page*, %struct.page** %15, align 8
  %95 = call i32 @put_page(%struct.page* %94)
  store %struct.page* null, %struct.page** %15, align 8
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %101

100:                                              ; preds = %91
  br label %49

101:                                              ; preds = %99, %49
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %44, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.page* @find_or_create_page(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
