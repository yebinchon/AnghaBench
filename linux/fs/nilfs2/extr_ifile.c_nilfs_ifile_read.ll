; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nilfs_root = type { i32 }
%struct.nilfs_inode = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NILFS_IFILE_INO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@NILFS_MDT_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_ifile_read(%struct.super_block* %0, %struct.nilfs_root* %1, i64 %2, %struct.nilfs_inode* %3, %struct.inode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.nilfs_root*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nilfs_inode*, align 8
  %11 = alloca %struct.inode**, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.nilfs_root* %1, %struct.nilfs_root** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.nilfs_inode* %3, %struct.nilfs_inode** %10, align 8
  store %struct.inode** %4, %struct.inode*** %11, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = load %struct.nilfs_root*, %struct.nilfs_root** %8, align 8
  %16 = load i32, i32* @NILFS_IFILE_INO, align 4
  %17 = call %struct.inode* @nilfs_iget_locked(%struct.super_block* %14, %struct.nilfs_root* %15, i32 %16)
  store %struct.inode* %17, %struct.inode** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %12, align 8
  %19 = icmp ne %struct.inode* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %71

27:                                               ; preds = %5
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I_NEW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = load i32, i32* @NILFS_MDT_GFP, align 4
  %38 = call i32 @nilfs_mdt_init(%struct.inode* %36, i32 %37, i32 4)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %67

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @nilfs_palloc_init_blockgroup(%struct.inode* %43, i64 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %67

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = load %struct.inode*, %struct.inode** %12, align 8
  %52 = call %struct.TYPE_2__* @NILFS_IFILE_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @nilfs_palloc_setup_cache(%struct.inode* %50, i32* %53)
  %55 = load %struct.inode*, %struct.inode** %12, align 8
  %56 = load %struct.nilfs_inode*, %struct.nilfs_inode** %10, align 8
  %57 = call i32 @nilfs_read_inode_common(%struct.inode* %55, %struct.nilfs_inode* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %67

61:                                               ; preds = %49
  %62 = load %struct.inode*, %struct.inode** %12, align 8
  %63 = call i32 @unlock_new_inode(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* %65, %struct.inode** %66, align 8
  store i32 0, i32* %6, align 4
  br label %71

67:                                               ; preds = %60, %48, %41
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = call i32 @iget_failed(%struct.inode* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %64, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.inode* @nilfs_iget_locked(%struct.super_block*, %struct.nilfs_root*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_mdt_init(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_palloc_init_blockgroup(%struct.inode*, i64) #1

declare dso_local i32 @nilfs_palloc_setup_cache(%struct.inode*, i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_IFILE_I(%struct.inode*) #1

declare dso_local i32 @nilfs_read_inode_common(%struct.inode*, %struct.nilfs_inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
