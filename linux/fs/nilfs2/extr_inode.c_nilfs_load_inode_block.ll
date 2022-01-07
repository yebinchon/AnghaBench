; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_load_inode_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_load_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode_info = type { %struct.buffer_head*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_load_inode_block(%struct.inode* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.nilfs_inode_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %14)
  store %struct.nilfs_inode_info* %15, %struct.nilfs_inode_info** %7, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %20 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %19, i32 0, i32 0
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = icmp eq %struct.buffer_head* %21, null
  br i1 %22, label %23, label %64

23:                                               ; preds = %2
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %28 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %36 = call i32 @nilfs_ifile_get_inode_block(i32 %31, i32 %34, %struct.buffer_head** %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %23
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %47 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %46, i32 0, i32 0
  %48 = load %struct.buffer_head*, %struct.buffer_head** %47, align 8
  %49 = icmp eq %struct.buffer_head* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %54 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %53, i32 0, i32 0
  store %struct.buffer_head* %52, %struct.buffer_head** %54, align 8
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  %58 = call i32 @brelse(%struct.buffer_head* %57)
  %59 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %60 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %59, i32 0, i32 0
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %62, align 8
  br label %63

63:                                               ; preds = %55, %50
  br label %69

64:                                               ; preds = %2
  %65 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %66 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %65, i32 0, i32 0
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %67, %struct.buffer_head** %68, align 8
  br label %69

69:                                               ; preds = %64, %63
  %70 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  %72 = call i32 @get_bh(%struct.buffer_head* %71)
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %40
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_ifile_get_inode_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
