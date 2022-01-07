; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_symlink.c_ocfs2_fast_symlink_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_symlink.c_ocfs2_fast_symlink_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ocfs2_fast_symlink_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fast_symlink_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @ocfs2_read_inode_block(%struct.inode* %18, %struct.buffer_head** %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %9, align 8
  %31 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocfs2_fast_symlink_chars(i32 %39)
  %41 = call i64 @strnlen(i8* %36, i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = call i8* @kmap_atomic(%struct.page* %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  %48 = call i32 @memcpy(i8* %44, i8* %45, i64 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @kunmap_atomic(i8* %49)
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = call i32 @SetPageUptodate(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @brelse(%struct.buffer_head* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %26, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32 @ocfs2_fast_symlink_chars(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
