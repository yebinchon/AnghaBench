; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_xattr_header }
%struct.ocfs2_xattr_header = type { i32 }

@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*, i8*, i64)* @ocfs2_xattr_block_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_block_list(%struct.inode* %0, %struct.ocfs2_dinode* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_xattr_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_xattr_header*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %15 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le64_to_cpu(i32 %24)
  %26 = call i32 @ocfs2_read_xattr_block(%struct.inode* %21, i32 %25, %struct.buffer_head** %10)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %64

33:                                               ; preds = %20
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %37, %struct.ocfs2_xattr_block** %11, align 8
  %38 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %11, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %33
  %46 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %11, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.ocfs2_xattr_header* %48, %struct.ocfs2_xattr_header** %13, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @ocfs2_xattr_list_entries(%struct.inode* %49, %struct.ocfs2_xattr_header* %50, i8* %51, i64 %52)
  store i32 %53, i32* %12, align 4
  br label %60

54:                                               ; preds = %33
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @ocfs2_xattr_tree_list_index_block(%struct.inode* %55, %struct.buffer_head* %56, i8* %57, i64 %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %54, %45
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = call i32 @brelse(%struct.buffer_head* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %29, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ocfs2_read_xattr_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_list_entries(%struct.inode*, %struct.ocfs2_xattr_header*, i8*, i64) #1

declare dso_local i32 @ocfs2_xattr_tree_list_index_block(%struct.inode*, %struct.buffer_head*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
