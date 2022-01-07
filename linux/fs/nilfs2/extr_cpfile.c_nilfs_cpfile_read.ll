; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.nilfs_inode = type { i32 }
%struct.inode = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"too large checkpoint size: %zu bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NILFS_MIN_CHECKPOINT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"too small checkpoint size: %zu bytes\00", align 1
@NILFS_CPFILE_INO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@NILFS_MDT_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_read(%struct.super_block* %0, i64 %1, %struct.nilfs_inode* %2, %struct.inode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_inode*, align 8
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nilfs_inode* %2, %struct.nilfs_inode** %8, align 8
  store %struct.inode** %3, %struct.inode*** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @nilfs_msg(%struct.super_block* %18, i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %84

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @NILFS_MIN_CHECKPOINT_SIZE, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @nilfs_msg(%struct.super_block* %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %84

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load i32, i32* @NILFS_CPFILE_INO, align 4
  %39 = call %struct.inode* @nilfs_iget_locked(%struct.super_block* %37, i32* null, i32 %38)
  store %struct.inode* %39, %struct.inode** %10, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = icmp ne %struct.inode* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %84

49:                                               ; preds = %36
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @I_NEW, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %77

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = load i32, i32* @NILFS_MDT_GFP, align 4
  %60 = call i32 @nilfs_mdt_init(%struct.inode* %58, i32 %59, i32 0)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %80

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @nilfs_mdt_set_entry_size(%struct.inode* %65, i64 %66, i32 4)
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = load %struct.nilfs_inode*, %struct.nilfs_inode** %8, align 8
  %70 = call i32 @nilfs_read_inode_common(%struct.inode* %68, %struct.nilfs_inode* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = call i32 @unlock_new_inode(%struct.inode* %75)
  br label %77

77:                                               ; preds = %74, %56
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %78, %struct.inode** %79, align 8
  store i32 0, i32* %5, align 4
  br label %84

80:                                               ; preds = %73, %63
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call i32 @iget_failed(%struct.inode* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %77, %46, %28, %17
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i64) #1

declare dso_local %struct.inode* @nilfs_iget_locked(%struct.super_block*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_mdt_init(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_mdt_set_entry_size(%struct.inode*, i64, i32) #1

declare dso_local i32 @nilfs_read_inode_common(%struct.inode*, %struct.nilfs_inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
