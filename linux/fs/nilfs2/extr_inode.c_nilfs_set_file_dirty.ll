; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_set_file_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_set_file_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32 }

@NILFS_I_DIRTY = common dso_local global i32 0, align 4
@NILFS_I_QUEUED = common dso_local global i32 0, align 4
@NILFS_I_BUSY = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cannot set file dirty (ino=%lu): the file is being freed\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_set_file_dirty(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca %struct.the_nilfs*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %8)
  store %struct.nilfs_inode_info* %9, %struct.nilfs_inode_info** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %13, align 8
  store %struct.the_nilfs* %14, %struct.the_nilfs** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 2
  %18 = call i32 @atomic_add(i32 %15, i32* %17)
  %19 = load i32, i32* @NILFS_I_DIRTY, align 4
  %20 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %20, i32 0, i32 0
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* @NILFS_I_QUEUED, align 4
  %30 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %31 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @NILFS_I_BUSY, align 4
  %36 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %37 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %34
  %41 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %42 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %41, i32 0, i32 1
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i32* @igrab(%struct.inode* %46)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @nilfs_msg(%struct.TYPE_2__* %52, i32 %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %59 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %45, %40
  %64 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %65 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %64, i32 0, i32 1
  %66 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %67 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %66, i32 0, i32 1
  %68 = call i32 @list_move_tail(i32* %65, i32* %67)
  %69 = load i32, i32* @NILFS_I_QUEUED, align 4
  %70 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %71 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %63, %34, %25
  %74 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %75 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %49, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32* @igrab(%struct.inode*) #1

declare dso_local i32 @nilfs_msg(%struct.TYPE_2__*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
