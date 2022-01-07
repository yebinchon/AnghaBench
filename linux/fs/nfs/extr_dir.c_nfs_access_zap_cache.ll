; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_zap_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_zap_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@head = common dso_local global i32 0, align 4
@NFS_INO_ACL_LRU_SET = common dso_local global i32 0, align 4
@nfs_access_lru_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_access_zap_cache(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load i32, i32* @head, align 4
  %4 = call i32 @LIST_HEAD(i32 %3)
  %5 = load i32, i32* @NFS_INO_ACL_LRU_SET, align 4
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %5, i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %37

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* @nfs_access_lru_lock)
  %14 = load i32, i32* @NFS_INO_ACL_LRU_SET, align 4
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i64 @test_and_clear_bit(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @list_del_init(i32* %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call %struct.TYPE_3__* @NFS_I(%struct.inode* %29)
  %31 = call i32 @__nfs_access_zap_cache(%struct.TYPE_3__* %30, i32* @head)
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = call i32 @spin_unlock(i32* @nfs_access_lru_lock)
  %36 = call i32 @nfs_access_free_list(i32* @head)
  br label %37

37:                                               ; preds = %25, %11
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__nfs_access_zap_cache(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_access_free_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
