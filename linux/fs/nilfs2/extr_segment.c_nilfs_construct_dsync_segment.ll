; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_construct_dsync_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_construct_dsync_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i32, %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i8*, i8*, %struct.nilfs_inode_info*, i32 }
%struct.nilfs_inode_info = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@NILFS_I_INODE_SYNC = common dso_local global i32 0, align 4
@STRICT_ORDER = common dso_local global i32 0, align 4
@NILFS_SC_UNCLOSED = common dso_local global i32 0, align 4
@NILFS_I_QUEUED = common dso_local global i32 0, align 4
@NILFS_I_BUSY = common dso_local global i32 0, align 4
@SC_LSEG_DSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_construct_dsync_segment(%struct.super_block* %0, %struct.inode* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.the_nilfs*, align 8
  %11 = alloca %struct.nilfs_sc_info*, align 8
  %12 = alloca %struct.nilfs_inode_info*, align 8
  %13 = alloca %struct.nilfs_transaction_info, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %16, align 8
  store %struct.the_nilfs* %17, %struct.the_nilfs** %10, align 8
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 2
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %19, align 8
  store %struct.nilfs_sc_info* %20, %struct.nilfs_sc_info** %11, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %22 = icmp ne %struct.nilfs_sc_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EROFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %103

26:                                               ; preds = %4
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = call i32 @nilfs_transaction_lock(%struct.super_block* %27, %struct.nilfs_transaction_info* %13, i32 0)
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %29)
  store %struct.nilfs_inode_info* %30, %struct.nilfs_inode_info** %12, align 8
  %31 = load i32, i32* @NILFS_I_INODE_SYNC, align 4
  %32 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %33 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %26
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %38 = load i32, i32* @STRICT_ORDER, align 4
  %39 = call i64 @nilfs_test_opt(%struct.the_nilfs* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @NILFS_SC_UNCLOSED, align 4
  %43 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %44 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %49 = call i64 @nilfs_discontinued(%struct.the_nilfs* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %41, %36, %26
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = call i32 @nilfs_transaction_unlock(%struct.super_block* %52)
  %54 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %55 = call i32 @nilfs_segctor_sync(%struct.nilfs_sc_info* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %5, align 4
  br label %103

57:                                               ; preds = %47
  %58 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %59 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %58, i32 0, i32 1
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* @NILFS_I_QUEUED, align 4
  %62 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %63 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %62, i32 0, i32 0
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @NILFS_I_BUSY, align 4
  %68 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %69 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = call i32 @nilfs_transaction_unlock(%struct.super_block* %76)
  store i32 0, i32* %5, align 4
  br label %103

78:                                               ; preds = %66, %57
  %79 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %80 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %83 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %84 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %83, i32 0, i32 2
  store %struct.nilfs_inode_info* %82, %struct.nilfs_inode_info** %84, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %87 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %90 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %92 = load i32, i32* @SC_LSEG_DSYNC, align 4
  %93 = call i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %78
  %97 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %98 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %78
  %100 = load %struct.super_block*, %struct.super_block** %6, align 8
  %101 = call i32 @nilfs_transaction_unlock(%struct.super_block* %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %72, %51, %23
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @nilfs_transaction_lock(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nilfs_test_opt(%struct.the_nilfs*, i32) #1

declare dso_local i64 @nilfs_discontinued(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_transaction_unlock(%struct.super_block*) #1

declare dso_local i32 @nilfs_segctor_sync(%struct.nilfs_sc_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
