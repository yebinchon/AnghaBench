; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_commit_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_commit_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_dat_entry = type { i8*, i8*, i8* }

@NILFS_CNO_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nilfs_palloc_req*)* @nilfs_dat_commit_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_dat_commit_free(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_palloc_req*, align 8
  %5 = alloca %struct.nilfs_dat_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %4, align 8
  %7 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %8 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @kmap_atomic(i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %15 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %13, i32 %16, %struct.TYPE_2__* %19, i8* %20)
  store %struct.nilfs_dat_entry* %21, %struct.nilfs_dat_entry** %5, align 8
  %22 = load i32, i32* @NILFS_CNO_MIN, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @NILFS_CNO_MIN, align 4
  %27 = call i8* @cpu_to_le64(i32 %26)
  %28 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %29 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = call i8* @cpu_to_le64(i32 0)
  %31 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @kunmap_atomic(i8* %33)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %37 = call i32 @nilfs_dat_commit_entry(%struct.inode* %35, %struct.nilfs_palloc_req* %36)
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %40 = call i32 @nilfs_palloc_commit_free_entry(%struct.inode* %38, %struct.nilfs_palloc_req* %39)
  ret void
}

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @nilfs_dat_commit_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_palloc_commit_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
