; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_create_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_create_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_palloc_req = type { %struct.buffer_head*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_ifile_create_inode(%struct.inode* %0, i64* %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.nilfs_palloc_req, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %10 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @nilfs_palloc_prepare_alloc_entry(%struct.inode* %12, %struct.nilfs_palloc_req* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  %21 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %17, i64 %19, i32 1, %struct.buffer_head** %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @nilfs_palloc_abort_alloc_entry(%struct.inode* %25, %struct.nilfs_palloc_req* %8)
  br label %27

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  %34 = call i32 @brelse(%struct.buffer_head* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %50

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @nilfs_palloc_commit_alloc_entry(%struct.inode* %37, %struct.nilfs_palloc_req* %8)
  %39 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %41 = call i32 @mark_buffer_dirty(%struct.buffer_head* %40)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %8, i32 0, i32 0
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  %49 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %48, %struct.buffer_head** %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %36, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @nilfs_palloc_prepare_alloc_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_palloc_abort_alloc_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_palloc_commit_alloc_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
