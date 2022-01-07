; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32, i64, i32, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Orphaned inode %llu was deleted while we were waiting on a lock. ip_flags = 0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Trusting LVB on inode %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Invalid dinode %llu disk generation: %u inode->i_generation: %u\0A\00", align 1
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Stale dinode %llu dtime: %llu flags: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head**)* @ocfs2_inode_lock_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_inode_lock_update(%struct.inode* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %10)
  store %struct.ocfs2_inode_info* %11, %struct.ocfs2_inode_info** %6, align 8
  %12 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %13 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %12, i32 0, i32 3
  store %struct.ocfs2_lock_res* %13, %struct.ocfs2_lock_res** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ocfs2_super* @OCFS2_SB(i32 %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %9, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %19 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %144

22:                                               ; preds = %2
  %23 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38)
  %40 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %144

45:                                               ; preds = %22
  %46 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %50 = call i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %144

53:                                               ; preds = %45
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = call i32 @INODE_CACHE(%struct.inode* %54)
  %56 = call i32 @ocfs2_metadata_cache_purge(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %57, i32 0)
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %61 = call i64 @ocfs2_meta_lvb_is_trustable(%struct.inode* %59, %struct.ocfs2_lock_res* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %65 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = call i32 @ocfs2_refresh_inode_from_lvb(%struct.inode* %68)
  br label %139

70:                                               ; preds = %53
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %73 = call i32 @ocfs2_read_inode_block(%struct.inode* %71, %struct.buffer_head** %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %140

79:                                               ; preds = %70
  %80 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %80, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %84, %struct.ocfs2_dinode** %8, align 8
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %89 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = icmp ne i64 %87, %91
  %93 = zext i1 %92 to i32
  %94 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %95 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %98 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le32_to_cpu(i32 %99)
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @mlog_bug_on_msg(i32 %93, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %96, i64 %100, i64 %103)
  %105 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %106 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @le64_to_cpu(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %79
  %111 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %112 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @OCFS2_VALID_FL, align 4
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %110, %79
  %120 = phi i1 [ true, %79 ], [ %118, %110 ]
  %121 = zext i1 %120 to i32
  %122 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %123 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %126 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @le32_to_cpu(i32 %131)
  %133 = call i32 @mlog_bug_on_msg(i32 %121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %124, i64 %128, i64 %132)
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %136 = call i32 @ocfs2_refresh_inode(%struct.inode* %134, %struct.ocfs2_dinode* %135)
  %137 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %138 = call i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res* %137)
  br label %139

139:                                              ; preds = %119, %63
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %76
  %141 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %52, %32, %21
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_metadata_cache_purge(i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

declare dso_local i64 @ocfs2_meta_lvb_is_trustable(%struct.inode*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_refresh_inode_from_lvb(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_refresh_inode(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
