; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_ilookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_ilookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@inode_hashtable = common dso_local global %struct.hlist_head* null, align 8
@inode_hash_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ilookup(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @hash(%struct.super_block* %9, i64 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i64 %12
  store %struct.hlist_head* %13, %struct.hlist_head** %6, align 8
  br label %14

14:                                               ; preds = %35, %2
  %15 = call i32 @spin_lock(i32* @inode_hash_lock)
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.inode* @find_inode_fast(%struct.super_block* %16, %struct.hlist_head* %17, i64 %18)
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = call i32 @spin_unlock(i32* @inode_hash_lock)
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %41

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @wait_on_inode(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call i32 @inode_unhashed(%struct.inode* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i32 @iput(%struct.inode* %36)
  br label %14

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %14
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %40, %struct.inode** %3, align 8
  br label %41

41:                                               ; preds = %39, %27
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %42
}

declare dso_local i32 @hash(%struct.super_block*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode_fast(%struct.super_block*, %struct.hlist_head*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @wait_on_inode(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_unhashed(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
