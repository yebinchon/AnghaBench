; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_map_and_dirty_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_map_and_dirty_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ocfs2_zero_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_map_and_dirty_page(%struct.inode* %0, i32* %1, i32 %2, i32 %3, %struct.page* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.page* %4, %struct.page** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.page*, %struct.page** %12, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.page*, %struct.page** %12, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ocfs2_map_page_blocks(%struct.page* %30, i32* %31, %struct.inode* %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %41

41:                                               ; preds = %38, %7
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.page*, %struct.page** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @zero_user_segment(%struct.page* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.page*, %struct.page** %12, align 8
  %52 = call i32 @page_buffers(%struct.page* %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ocfs2_zero_func, align 4
  %56 = call i32 @walk_page_buffers(i32* %50, i32 %52, i32 %53, i32 %54, i32* %16, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %79

62:                                               ; preds = %49
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i64 @ocfs2_should_order_data(%struct.inode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @ocfs2_jbd2_inode_add_write(i32* %67, %struct.inode* %68, i32 %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %77

77:                                               ; preds = %74, %66
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.page*, %struct.page** %12, align 8
  %84 = call i32 @SetPageUptodate(%struct.page* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.page*, %struct.page** %12, align 8
  %87 = call i32 @flush_dcache_page(%struct.page* %86)
  ret void
}

declare dso_local i32 @ocfs2_map_page_blocks(%struct.page*, i32*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32 @ocfs2_jbd2_inode_add_write(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
