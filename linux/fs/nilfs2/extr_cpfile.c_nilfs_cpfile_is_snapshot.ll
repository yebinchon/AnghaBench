; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_is_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_is_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_checkpoint = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_is_snapshot(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.nilfs_checkpoint*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i64 @nilfs_mdt_cno(%struct.inode* %14)
  %16 = icmp sge i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %12
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @down_read(i32* %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %25, i64 %26, i32 0, %struct.buffer_head** %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %55

31:                                               ; preds = %20
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @kmap_atomic(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %36, i64 %37, %struct.buffer_head* %38, i8* %39)
  store %struct.nilfs_checkpoint* %40, %struct.nilfs_checkpoint** %7, align 8
  %41 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %42 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %7, align 8
  %49 = call i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @kunmap_atomic(i8* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  br label %55

55:                                               ; preds = %50, %30
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @up_read(i32* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
