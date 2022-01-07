; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_validate_and_adjust_move_goal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_validate_and_adjust_move_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_move_extents = type { i64, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.ocfs2_super = type { i32, i32 }

@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"extents get ready to be moved to #%llu block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_move_extents*)* @ocfs2_validate_and_adjust_move_goal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_and_adjust_move_goal(%struct.inode* %0, %struct.ocfs2_move_extents* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ocfs2_move_extents*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_group_desc*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ocfs2_move_extents* %1, %struct.ocfs2_move_extents** %4, align 8
  store i32 0, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_3__* %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %9, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %17, %22
  %24 = shl i32 1, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %29 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @ocfs2_block_to_cluster_start(%struct.TYPE_3__* %27, i64 %30)
  %32 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %39 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %40 = call i32 @ocfs2_find_victim_alloc_group(%struct.inode* %34, i64 %37, i32 %38, i32 %39, i32* %6, %struct.buffer_head** %7)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %87

44:                                               ; preds = %2
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %48, %struct.ocfs2_group_desc** %8, align 8
  %49 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %50 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %53 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %61 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %57, %44
  %65 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %66 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %76 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %87

82:                                               ; preds = %64
  %83 = load %struct.ocfs2_move_extents*, %struct.ocfs2_move_extents** %4, align 8
  %84 = getelementptr inbounds %struct.ocfs2_move_extents, %struct.ocfs2_move_extents* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %82, %79, %43
  %88 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_3__*) #1

declare dso_local i64 @ocfs2_block_to_cluster_start(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @ocfs2_find_victim_alloc_group(%struct.inode*, i64, i32, i32, i32*, %struct.buffer_head**) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
