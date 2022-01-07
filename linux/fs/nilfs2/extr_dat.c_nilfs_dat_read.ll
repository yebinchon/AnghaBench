; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.super_block = type { i64 }
%struct.nilfs_inode = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_dat_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nilfs_dat_read.dat_lock_key = internal global %struct.lock_class_key zeroinitializer, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"too large DAT entry size: %zu bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NILFS_MIN_DAT_ENTRY_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"too small DAT entry size: %zu bytes\00", align 1
@NILFS_DAT_INO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@NILFS_MDT_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_dat_read(%struct.super_block* %0, i64 %1, %struct.nilfs_inode* %2, %struct.inode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_inode*, align 8
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nilfs_dat_info*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nilfs_inode* %2, %struct.nilfs_inode** %8, align 8
  store %struct.inode** %3, %struct.inode*** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @nilfs_msg(%struct.super_block* %19, i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %103

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @NILFS_MIN_DAT_ENTRY_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @nilfs_msg(%struct.super_block* %30, i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %103

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load i32, i32* @NILFS_DAT_INO, align 4
  %40 = call %struct.inode* @nilfs_iget_locked(%struct.super_block* %38, i32* null, i32 %39)
  store %struct.inode* %40, %struct.inode** %10, align 8
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = icmp ne %struct.inode* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %103

50:                                               ; preds = %37
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I_NEW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %96

58:                                               ; preds = %50
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = load i32, i32* @NILFS_MDT_GFP, align 4
  %61 = call i32 @nilfs_mdt_init(%struct.inode* %59, i32 %60, i32 12)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %99

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @nilfs_palloc_init_blockgroup(%struct.inode* %66, i64 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %99

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call %struct.nilfs_dat_info* @NILFS_DAT_I(%struct.inode* %73)
  store %struct.nilfs_dat_info* %74, %struct.nilfs_dat_info** %11, align 8
  %75 = load %struct.nilfs_dat_info*, %struct.nilfs_dat_info** %11, align 8
  %76 = getelementptr inbounds %struct.nilfs_dat_info, %struct.nilfs_dat_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @lockdep_set_class(i32* %77, %struct.lock_class_key* @nilfs_dat_read.dat_lock_key)
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load %struct.nilfs_dat_info*, %struct.nilfs_dat_info** %11, align 8
  %81 = getelementptr inbounds %struct.nilfs_dat_info, %struct.nilfs_dat_info* %80, i32 0, i32 1
  %82 = call i32 @nilfs_palloc_setup_cache(%struct.inode* %79, i32* %81)
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = load %struct.nilfs_dat_info*, %struct.nilfs_dat_info** %11, align 8
  %85 = getelementptr inbounds %struct.nilfs_dat_info, %struct.nilfs_dat_info* %84, i32 0, i32 0
  %86 = call i32 @nilfs_mdt_setup_shadow_map(%struct.inode* %83, i32* %85)
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = load %struct.nilfs_inode*, %struct.nilfs_inode** %8, align 8
  %89 = call i32 @nilfs_read_inode_common(%struct.inode* %87, %struct.nilfs_inode* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %99

93:                                               ; preds = %72
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = call i32 @unlock_new_inode(%struct.inode* %94)
  br label %96

96:                                               ; preds = %93, %57
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %97, %struct.inode** %98, align 8
  store i32 0, i32* %5, align 4
  br label %103

99:                                               ; preds = %92, %71, %64
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call i32 @iget_failed(%struct.inode* %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %96, %47, %29, %18
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i64) #1

declare dso_local %struct.inode* @nilfs_iget_locked(%struct.super_block*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_mdt_init(%struct.inode*, i32, i32) #1

declare dso_local i32 @nilfs_palloc_init_blockgroup(%struct.inode*, i64) #1

declare dso_local %struct.nilfs_dat_info* @NILFS_DAT_I(%struct.inode*) #1

declare dso_local i32 @lockdep_set_class(i32*, %struct.lock_class_key*) #1

declare dso_local i32 @nilfs_palloc_setup_cache(%struct.inode*, i32*) #1

declare dso_local i32 @nilfs_mdt_setup_shadow_map(%struct.inode*, i32*) #1

declare dso_local i32 @nilfs_read_inode_common(%struct.inode*, %struct.nilfs_inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
