; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%union.nilfs_bmap_ptr_req = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@NILFS_DIRECT_KEY_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64, i64)* @nilfs_direct_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_insert(%struct.nilfs_bmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.nilfs_bmap_ptr_req, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap* %19, i64 %20)
  %22 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %18
  %28 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %29 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @nilfs_direct_find_target_v(%struct.nilfs_bmap* %32, i64 %33)
  %35 = bitcast %union.nilfs_bmap_ptr_req* %8 to i32*
  store i32 %34, i32* %35, align 4
  %36 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %37 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %36)
  store %struct.inode* %37, %struct.inode** %9, align 8
  br label %38

38:                                               ; preds = %31, %27
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %39, %union.nilfs_bmap_ptr_req* %8, %struct.inode* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %78, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = inttoptr i64 %45 to %struct.buffer_head*
  store %struct.buffer_head* %46, %struct.buffer_head** %10, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %48 = call i32 @set_buffer_nilfs_volatile(%struct.buffer_head* %47)
  %49 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i32 @nilfs_bmap_commit_alloc_ptr(%struct.nilfs_bmap* %49, %union.nilfs_bmap_ptr_req* %8, %struct.inode* %50)
  %52 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = bitcast %union.nilfs_bmap_ptr_req* %8 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nilfs_direct_set_ptr(%struct.nilfs_bmap* %52, i64 %53, i32 %55)
  %57 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %58 = call i32 @nilfs_bmap_dirty(%struct.nilfs_bmap* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %62 = call i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap* %61)
  br label %63

63:                                               ; preds = %60, %44
  %64 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %65 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = bitcast %union.nilfs_bmap_ptr_req* %8 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nilfs_bmap_set_target_v(%struct.nilfs_bmap* %68, i64 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %63
  %74 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %75 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nilfs_inode_add_blocks(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %73, %38
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %24, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap*, i64) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_direct_find_target_v(%struct.nilfs_bmap*, i64) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @set_buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_bmap_commit_alloc_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_direct_set_ptr(%struct.nilfs_bmap*, i64, i32) #1

declare dso_local i32 @nilfs_bmap_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_target_v(%struct.nilfs_bmap*, i64, i32) #1

declare dso_local i32 @nilfs_inode_add_blocks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
