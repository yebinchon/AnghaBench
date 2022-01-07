; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.ext4_inode_info = type { %struct.inode, i32, i32, i64, i64, i32, i32, i32*, i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@ext4_inode_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ext4_end_io_rsv_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @ext4_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ext4_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @ext4_inode_cachep, align 4
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.ext4_inode_info* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.ext4_inode_info* %7, %struct.ext4_inode_info** %4, align 8
  %8 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %9 = icmp ne %struct.ext4_inode_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %72

11:                                               ; preds = %1
  %12 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %12, i32 0, i32 0
  %14 = call i32 @inode_set_iversion(%struct.inode* %13, i32 1)
  %15 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %16 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %15, i32 0, i32 23
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %18, i32 0, i32 22
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %21, i32 0, i32 21
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %24, i32 0, i32 20
  %26 = call i32 @ext4_es_init_tree(i32* %25)
  %27 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %28 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %27, i32 0, i32 19
  %29 = call i32 @rwlock_init(i32* %28)
  %30 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %31 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %30, i32 0, i32 18
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %34 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %33, i32 0, i32 17
  store i64 0, i64* %34, align 8
  %35 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %36 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %35, i32 0, i32 16
  store i64 0, i64* %36, align 8
  %37 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %38 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %37, i32 0, i32 15
  store i64 0, i64* %38, align 8
  %39 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %40 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %39, i32 0, i32 14
  store i64 0, i64* %40, align 8
  %41 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %42 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %41, i32 0, i32 13
  store i64 0, i64* %42, align 8
  %43 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %43, i32 0, i32 12
  store i64 0, i64* %44, align 8
  %45 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %46 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %45, i32 0, i32 11
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %49 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %48, i32 0, i32 10
  %50 = call i32 @ext4_init_pending_tree(i32* %49)
  %51 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %52 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %51, i32 0, i32 7
  store i32* null, i32** %52, align 8
  %53 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %54 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %53, i32 0, i32 6
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %57 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %56, i32 0, i32 5
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %60 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %62 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %64 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %63, i32 0, i32 2
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  %66 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %67 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %66, i32 0, i32 1
  %68 = load i32, i32* @ext4_end_io_rsv_work, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %71 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %70, i32 0, i32 0
  store %struct.inode* %71, %struct.inode** %2, align 8
  br label %72

72:                                               ; preds = %11, %10
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %73
}

declare dso_local %struct.ext4_inode_info* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @inode_set_iversion(%struct.inode*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ext4_es_init_tree(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @ext4_init_pending_tree(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
