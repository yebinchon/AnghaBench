; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_duplicateIXtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_duplicateIXtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_superblock = type { i32 }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@JFS_BAD_SAIT = common dso_local global i32 0, align 4
@FILESYSTEM_I = common dso_local global i32 0, align 4
@COMMIT_FORCE = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32, i32*)* @duplicateIXtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicateIXtree(%struct.super_block* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.jfs_superblock*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @JFS_BAD_SAIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %94

21:                                               ; preds = %4
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i32, i32* @FILESYSTEM_I, align 4
  %24 = call %struct.inode* @diReadSpecial(%struct.super_block* %22, i32 %23, i32 1)
  store %struct.inode* %24, %struct.inode** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = icmp eq %struct.inode* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load i32, i32* @JFS_BAD_SAIT, align 4
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = call i64 @readSuper(%struct.super_block* %34, %struct.buffer_head** %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %94

38:                                               ; preds = %27
  %39 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.jfs_superblock*
  store %struct.jfs_superblock* %42, %struct.jfs_superblock** %9, align 8
  %43 = load i32, i32* @JFS_BAD_SAIT, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.jfs_superblock*, %struct.jfs_superblock** %9, align 8
  %46 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %50 = call i32 @mark_buffer_dirty(%struct.buffer_head* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %52 = call i32 @sync_dirty_buffer(%struct.buffer_head* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  br label %94

55:                                               ; preds = %21
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load i32, i32* @COMMIT_FORCE, align 4
  %58 = call i32 @txBegin(%struct.super_block* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @xtInsert(i32 %59, %struct.inode* %60, i32 0, i32 %61, i32 %62, i32* %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %55
  %67 = load i32, i32* @JFS_BAD_SAIT, align 4
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @txAbort(i32 %73, i32 1)
  br label %89

75:                                               ; preds = %55
  %76 = load i64, i64* @PSIZE, align 8
  %77 = load %struct.inode*, %struct.inode** %11, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.inode*, %struct.inode** %11, align 8
  %84 = load i64, i64* @PSIZE, align 8
  %85 = call i32 @inode_add_bytes(%struct.inode* %83, i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @COMMIT_FORCE, align 4
  %88 = call i32 @txCommit(i32 %86, i32 1, %struct.inode** %11, i32 %87)
  br label %89

89:                                               ; preds = %75, %66
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @txEnd(i32 %90)
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = call i32 @diFreeSpecial(%struct.inode* %92)
  br label %94

94:                                               ; preds = %89, %38, %37, %20
  ret void
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(%struct.super_block*) #1

declare dso_local %struct.inode* @diReadSpecial(%struct.super_block*, i32, i32) #1

declare dso_local i64 @readSuper(%struct.super_block*, %struct.buffer_head**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @txBegin(%struct.super_block*, i32) #1

declare dso_local i64 @xtInsert(i32, %struct.inode*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i64) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @diFreeSpecial(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
