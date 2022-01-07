; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_mmap.c___ocfs2_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_mmap.c___ocfs2_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.buffer_head = type { i32 }
%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.inode = type { %struct.address_space* }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@OCFS2_WRITE_MMAP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.buffer_head*, %struct.page*)* @__ocfs2_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_page_mkwrite(%struct.file* %0, %struct.buffer_head* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %17 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = call %struct.inode* @file_inode(%struct.file* %18)
  store %struct.inode* %19, %struct.inode** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %10, align 8
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @page_offset(%struct.page* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %25, i32* %12, align 4
  store %struct.page* null, %struct.page** %14, align 8
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call i32 @i_size_read(%struct.inode* %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 1
  %34 = load %struct.address_space*, %struct.address_space** %33, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.address_space*, %struct.address_space** %36, align 8
  %38 = icmp ne %struct.address_space* %34, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %3
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i32 @PageUptodate(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @page_offset(%struct.page* %44)
  %46 = load i32, i32* %16, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %39, %3
  br label %101

49:                                               ; preds = %43
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @PAGE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.address_space*, %struct.address_space** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @OCFS2_WRITE_MMAP, align 4
  %67 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %68 = load %struct.page*, %struct.page** %6, align 8
  %69 = call i32 @ocfs2_write_begin_nolock(%struct.address_space* %63, i32 %64, i32 %65, i32 %66, %struct.page** %14, i8** %15, %struct.buffer_head* %67, %struct.page* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ENOSPC, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @vmf_error(i32 %81)
  store i32 %82, i32* %8, align 4
  br label %101

83:                                               ; preds = %62
  %84 = load %struct.page*, %struct.page** %14, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %87, i32* %8, align 4
  br label %101

88:                                               ; preds = %83
  %89 = load %struct.address_space*, %struct.address_space** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @ocfs2_write_end_nolock(%struct.address_space* %89, i32 %90, i32 %91, i32 %92, i8* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %88, %86, %80, %48
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_write_begin_nolock(%struct.address_space*, i32, i32, i32, %struct.page**, i8**, %struct.buffer_head*, %struct.page*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @ocfs2_write_end_nolock(%struct.address_space*, i32, i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
