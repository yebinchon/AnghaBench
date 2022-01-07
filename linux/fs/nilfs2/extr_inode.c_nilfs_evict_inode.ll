; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nilfs_transaction_info = type { i32 }
%struct.nilfs_inode_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NILFS_TI_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_transaction_info, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 3
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %10)
  store %struct.nilfs_inode_info* %11, %struct.nilfs_inode_info** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %18 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i32 @is_bad_inode(%struct.inode* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21, %16, %1
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = call i32 @truncate_inode_pages_final(i32* %28)
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call i32 @clear_inode(%struct.inode* %30)
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = call i32 @nilfs_clear_inode(%struct.inode* %32)
  br label %75

34:                                               ; preds = %21
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = call i32 @nilfs_transaction_begin(%struct.super_block* %35, %struct.nilfs_transaction_info* %3, i32 0)
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = call i32 @truncate_inode_pages_final(i32* %38)
  %40 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %41 = call i32 @nilfs_truncate_bmap(%struct.nilfs_inode_info* %40, i32 0)
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call i32 @clear_inode(%struct.inode* %44)
  %46 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %47 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nilfs_ifile_delete_inode(i32 %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %34
  %58 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %59 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @atomic64_dec(i32* %61)
  br label %63

63:                                               ; preds = %57, %34
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = call i32 @nilfs_clear_inode(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = call i64 @IS_SYNC(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @NILFS_TI_SYNC, align 4
  %71 = call i32 @nilfs_set_transaction_flag(i32 %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.super_block*, %struct.super_block** %4, align 8
  %74 = call i32 @nilfs_transaction_commit(%struct.super_block* %73)
  br label %75

75:                                               ; preds = %72, %26
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @nilfs_clear_inode(%struct.inode*) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @nilfs_truncate_bmap(%struct.nilfs_inode_info*, i32) #1

declare dso_local i32 @nilfs_mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_ifile_delete_inode(i32, i32) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @nilfs_set_transaction_flag(i32) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
