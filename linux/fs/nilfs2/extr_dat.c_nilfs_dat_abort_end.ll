; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_abort_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_abort_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_dat_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_dat_abort_end(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_palloc_req*, align 8
  %5 = alloca %struct.nilfs_dat_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %4, align 8
  %9 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %10 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @kmap_atomic(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %17 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %15, i32 %18, %struct.TYPE_2__* %21, i8* %22)
  store %struct.nilfs_dat_entry* %23, %struct.nilfs_dat_entry** %5, align 8
  %24 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le64_to_cpu(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %5, align 8
  %29 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le64_to_cpu(i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kunmap_atomic(i8* %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i64 @nilfs_mdt_cno(%struct.inode* %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %44 = call i32 @nilfs_palloc_abort_free_entry(%struct.inode* %42, %struct.nilfs_palloc_req* %43)
  br label %45

45:                                               ; preds = %41, %38, %2
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %4, align 8
  %48 = call i32 @nilfs_dat_abort_entry(%struct.inode* %46, %struct.nilfs_palloc_req* %47)
  ret void
}

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_abort_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_dat_abort_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
