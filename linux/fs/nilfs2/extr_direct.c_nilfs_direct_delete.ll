; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%union.nilfs_bmap_ptr_req = type { i64 }
%struct.inode = type { i32 }

@NILFS_DIRECT_KEY_MAX = common dso_local global i64 0, align 8
@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64)* @nilfs_direct_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_delete(%struct.nilfs_bmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.nilfs_bmap_ptr_req, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap* %13, i64 %14)
  %16 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %12
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %23 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %27 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %26)
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi %struct.inode* [ %27, %25 ], [ null, %28 ]
  store %struct.inode* %30, %struct.inode** %7, align 8
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap* %31, i64 %32)
  %34 = bitcast %union.nilfs_bmap_ptr_req* %6 to i64*
  store i64 %33, i64* %34, align 8
  %35 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap* %35, %union.nilfs_bmap_ptr_req* %6, %struct.inode* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %29
  %41 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap* %41, %union.nilfs_bmap_ptr_req* %6, %struct.inode* %42)
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %47 = call i32 @nilfs_direct_set_ptr(%struct.nilfs_bmap* %44, i64 %45, i64 %46)
  %48 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %49 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nilfs_inode_sub_blocks(i32 %50, i32 1)
  br label %52

52:                                               ; preds = %40, %29
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap*, i64) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_direct_set_ptr(%struct.nilfs_bmap*, i64, i64) #1

declare dso_local i32 @nilfs_inode_sub_blocks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
