; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_update_backups.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_update_backups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_MAX_BACKUP_SUPERBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i8*)* @update_backups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_backups(%struct.inode* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__* %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %13, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %76, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @OCFS2_MAX_BACKUP_SUPERBLOCKS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %79

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ocfs2_backup_super_blkno(%struct.TYPE_4__* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @ocfs2_blocks_to_clusters(%struct.TYPE_4__* %30, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %79

37:                                               ; preds = %22
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %38, i32 %39, i32 1, %struct.buffer_head** %11)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %79

46:                                               ; preds = %37
  %47 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i64 %49, i8* %50, i32 %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %60, %struct.ocfs2_dinode** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cpu_to_le64(i32 %61)
  %63 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = call i32 @ocfs2_write_super_or_backup(%struct.ocfs2_super* %65, %struct.buffer_head* %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %46
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %79

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %18

79:                                               ; preds = %72, %43, %36, %18
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_backup_super_blkno(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @ocfs2_blocks_to_clusters(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_write_super_or_backup(%struct.ocfs2_super*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
