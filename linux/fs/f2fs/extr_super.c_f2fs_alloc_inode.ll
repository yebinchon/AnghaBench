; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.f2fs_inode_info = type { %struct.inode, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@f2fs_inode_cachep = common dso_local global i32 0, align 4
@GFP_F2FS_ZERO = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @f2fs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @f2fs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.f2fs_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @f2fs_inode_cachep, align 4
  %6 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %7 = call %struct.f2fs_inode_info* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.f2fs_inode_info* %7, %struct.f2fs_inode_info** %4, align 8
  %8 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %9 = icmp ne %struct.f2fs_inode_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %13 = bitcast %struct.f2fs_inode_info* %12 to i8*
  %14 = call i32 @init_once(i8* %13)
  %15 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %15, i32 0, i32 11
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %19 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %18, i32 0, i32 10
  %20 = call i32 @init_rwsem(i32* %19)
  %21 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %21, i32 0, i32 9
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %25 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %24, i32 0, i32 8
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %28 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %27, i32 0, i32 7
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %31 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %30, i32 0, i32 6
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %34 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %33, i32 0, i32 5
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %37 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @READ, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @init_rwsem(i32* %40)
  %42 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @WRITE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @init_rwsem(i32* %46)
  %48 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %49 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %48, i32 0, i32 3
  %50 = call i32 @init_rwsem(i32* %49)
  %51 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %52 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %51, i32 0, i32 2
  %53 = call i32 @init_rwsem(i32* %52)
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = call %struct.TYPE_2__* @F2FS_SB(%struct.super_block* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %59 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %61 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %60, i32 0, i32 0
  store %struct.inode* %61, %struct.inode** %2, align 8
  br label %62

62:                                               ; preds = %11, %10
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %63
}

declare dso_local %struct.f2fs_inode_info* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @init_once(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
