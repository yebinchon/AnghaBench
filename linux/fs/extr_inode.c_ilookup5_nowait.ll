; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_ilookup5_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_ilookup5_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@inode_hashtable = common dso_local global %struct.hlist_head* null, align 8
@inode_hash_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ilookup5_nowait(%struct.super_block* %0, i64 %1, i32 (%struct.inode*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.inode*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hlist_head*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @hash(%struct.super_block* %12, i64 %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %11, i64 %15
  store %struct.hlist_head* %16, %struct.hlist_head** %9, align 8
  %17 = call i32 @spin_lock(i32* @inode_hash_lock)
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %20 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call %struct.inode* @find_inode(%struct.super_block* %18, %struct.hlist_head* %19, i32 (%struct.inode*, i8*)* %20, i8* %21)
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = call i32 @spin_unlock(i32* @inode_hash_lock)
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %30

28:                                               ; preds = %4
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi %struct.inode* [ null, %27 ], [ %29, %28 ]
  ret %struct.inode* %31
}

declare dso_local i32 @hash(%struct.super_block*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode(%struct.super_block*, %struct.hlist_head*, i32 (%struct.inode*, i8*)*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
