; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_entry_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_entry_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i8*, i32, %struct.inode*, %struct.ocfs2_dir_entry**)* @ocfs2_find_entry_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ocfs2_find_entry_id(i8* %0, i32 %1, %struct.inode* %2, %struct.ocfs2_dir_entry** %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dir_entry**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.ocfs2_inline_data*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.ocfs2_dir_entry** %3, %struct.ocfs2_dir_entry*** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i32 @ocfs2_read_inode_block(%struct.inode* %15, %struct.buffer_head** %12)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @mlog_errno(i32 %20)
  br label %48

22:                                               ; preds = %4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %26, %struct.ocfs2_dinode** %13, align 8
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.ocfs2_inline_data* %29, %struct.ocfs2_inline_data** %14, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %14, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @i_size_read(%struct.inode* %37)
  %39 = load %struct.ocfs2_dir_entry**, %struct.ocfs2_dir_entry*** %9, align 8
  %40 = call i32 @ocfs2_search_dirblock(%struct.buffer_head* %30, %struct.inode* %31, i8* %32, i32 %33, i32 0, i32 %36, i32 %38, %struct.ocfs2_dir_entry** %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %44, %struct.buffer_head** %5, align 8
  br label %49

45:                                               ; preds = %22
  %46 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  br label %48

48:                                               ; preds = %45, %19
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %50
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_search_dirblock(%struct.buffer_head*, %struct.inode*, i8*, i32, i32, i32, i32, %struct.ocfs2_dir_entry**) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
