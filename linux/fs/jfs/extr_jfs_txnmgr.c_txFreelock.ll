; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txFreelock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txFreelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_inode_info = type { i32, i64, i64 }
%struct.tlock = type { i32, i64 }

@tlckFREELOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txFreelock(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.jfs_inode_info*, align 8
  %4 = alloca %struct.tlock*, align 8
  %5 = alloca %struct.tlock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %8)
  store %struct.jfs_inode_info* %9, %struct.jfs_inode_info** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %11 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %63

15:                                               ; preds = %1
  %16 = call i32 (...) @TXN_LOCK()
  %17 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %17, i32 0, i32 2
  %19 = bitcast i64* %18 to %struct.tlock*
  store %struct.tlock* %19, %struct.tlock** %4, align 8
  br label %20

20:                                               ; preds = %45, %15
  %21 = load %struct.tlock*, %struct.tlock** %4, align 8
  %22 = getelementptr inbounds %struct.tlock, %struct.tlock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.tlock* @lid_to_tlock(i64 %26)
  store %struct.tlock* %27, %struct.tlock** %5, align 8
  %28 = load %struct.tlock*, %struct.tlock** %5, align 8
  %29 = getelementptr inbounds %struct.tlock, %struct.tlock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @tlckFREELOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.tlock*, %struct.tlock** %5, align 8
  %36 = getelementptr inbounds %struct.tlock, %struct.tlock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tlock*, %struct.tlock** %4, align 8
  %39 = getelementptr inbounds %struct.tlock, %struct.tlock* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @txLockFree(i64 %40)
  br label %45

42:                                               ; preds = %25
  %43 = load %struct.tlock*, %struct.tlock** %5, align 8
  store %struct.tlock* %43, %struct.tlock** %4, align 8
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %42, %34
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %48 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %54 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %57 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %59 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %58, i32 0, i32 0
  %60 = call i32 @list_del_init(i32* %59)
  br label %61

61:                                               ; preds = %55, %51
  %62 = call i32 (...) @TXN_UNLOCK()
  br label %63

63:                                               ; preds = %61, %14
  ret void
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i32 @txLockFree(i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
