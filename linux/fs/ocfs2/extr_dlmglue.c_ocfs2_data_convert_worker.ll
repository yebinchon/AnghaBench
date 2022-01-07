; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_data_convert_worker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_data_convert_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.ocfs2_inode_info = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"generation: %u\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not sync inode %llu for downconvert!\00", align 1
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@UNBLOCK_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_data_convert_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_data_convert_worker(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %9 = call %struct.inode* @ocfs2_lock_res_inode(%struct.ocfs2_lock_res* %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @S_ISDIR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %19)
  store %struct.ocfs2_inode_info* %20, %struct.ocfs2_inode_info** %7, align 8
  %21 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %22 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %64

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @S_ISREG(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %64

36:                                               ; preds = %29
  %37 = load %struct.address_space*, %struct.address_space** %6, align 8
  %38 = call i32 @unmap_mapping_range(%struct.address_space* %37, i32 0, i32 0, i32 0)
  %39 = load %struct.address_space*, %struct.address_space** %6, align 8
  %40 = call i64 @filemap_fdatawrite(%struct.address_space* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @ML_ERROR, align 4
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mlog(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.address_space*, %struct.address_space** %6, align 8
  %51 = call i32 @sync_mapping_buffers(%struct.address_space* %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DLM_LOCK_EX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.address_space*, %struct.address_space** %6, align 8
  %57 = call i32 @truncate_inode_pages(%struct.address_space* %56, i32 0)
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.address_space*, %struct.address_space** %6, align 8
  %60 = call i32 @filemap_fdatawait(%struct.address_space* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @forget_all_cached_acls(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %35, %18
  %65 = load i32, i32* @UNBLOCK_CONTINUE, align 4
  ret i32 %65
}

declare dso_local %struct.inode* @ocfs2_lock_res_inode(%struct.ocfs2_lock_res*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i64 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @sync_mapping_buffers(%struct.address_space*) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
