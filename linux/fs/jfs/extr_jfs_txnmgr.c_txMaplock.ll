; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txMaplock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txMaplock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tlock = type { i32, i64, i32, i32*, %struct.inode*, i32, i64 }
%struct.inode = type { i32 }
%struct.jfs_inode_info = type { i64, i32, i8* }
%struct.tblock = type { i8*, i8* }
%struct.maplock = type { i64, i64, i64 }

@tlckINODELOCK = common dso_local global i32 0, align 4
@tlckDIRECTORY = common dso_local global i32 0, align 4
@TxAnchor = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tlock* @txMaplock(i64 %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jfs_inode_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tblock*, align 8
  %10 = alloca %struct.tlock*, align 8
  %11 = alloca %struct.maplock*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %12)
  store %struct.jfs_inode_info* %13, %struct.jfs_inode_info** %7, align 8
  %14 = call i32 (...) @TXN_LOCK()
  %15 = call i8* (...) @txLockAlloc()
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call %struct.tlock* @lid_to_tlock(i8* %16)
  store %struct.tlock* %17, %struct.tlock** %10, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.tlock*, %struct.tlock** %10, align 8
  %20 = getelementptr inbounds %struct.tlock, %struct.tlock* %19, i32 0, i32 6
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @tlckINODELOCK, align 4
  %22 = load %struct.tlock*, %struct.tlock** %10, align 8
  %23 = getelementptr inbounds %struct.tlock, %struct.tlock* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i32, i32* @tlckDIRECTORY, align 4
  %31 = load %struct.tlock*, %struct.tlock** %10, align 8
  %32 = getelementptr inbounds %struct.tlock, %struct.tlock* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = load %struct.tlock*, %struct.tlock** %10, align 8
  %38 = getelementptr inbounds %struct.tlock, %struct.tlock* %37, i32 0, i32 4
  store %struct.inode* %36, %struct.inode** %38, align 8
  %39 = load %struct.tlock*, %struct.tlock** %10, align 8
  %40 = getelementptr inbounds %struct.tlock, %struct.tlock* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tlock*, %struct.tlock** %10, align 8
  %43 = getelementptr inbounds %struct.tlock, %struct.tlock* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %35
  %47 = load i64, i64* %4, align 8
  %48 = call %struct.tblock* @tid_to_tblock(i64 %47)
  store %struct.tblock* %48, %struct.tblock** %9, align 8
  %49 = load %struct.tblock*, %struct.tblock** %9, align 8
  %50 = getelementptr inbounds %struct.tblock, %struct.tblock* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i8*, i8** %8, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.tblock*, %struct.tblock** %9, align 8
  %57 = getelementptr inbounds %struct.tblock, %struct.tblock* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call %struct.tlock* @lid_to_tlock(i8* %58)
  %60 = getelementptr inbounds %struct.tlock, %struct.tlock* %59, i32 0, i32 1
  store i64 %55, i64* %60, align 8
  br label %65

61:                                               ; preds = %46
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.tblock*, %struct.tblock** %9, align 8
  %64 = getelementptr inbounds %struct.tblock, %struct.tblock* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.tlock*, %struct.tlock** %10, align 8
  %67 = getelementptr inbounds %struct.tlock, %struct.tlock* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.tblock*, %struct.tblock** %9, align 8
  %70 = getelementptr inbounds %struct.tblock, %struct.tblock* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %93

71:                                               ; preds = %35
  %72 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %73 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tlock*, %struct.tlock** %10, align 8
  %76 = getelementptr inbounds %struct.tlock, %struct.tlock* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %80 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.tlock*, %struct.tlock** %10, align 8
  %82 = getelementptr inbounds %struct.tlock, %struct.tlock* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %88 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %90 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %89, i32 0, i32 1
  %91 = call i32 @list_add_tail(i32* %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TxAnchor, i32 0, i32 0))
  br label %92

92:                                               ; preds = %85, %71
  br label %93

93:                                               ; preds = %92, %65
  %94 = call i32 (...) @TXN_UNLOCK()
  %95 = load %struct.tlock*, %struct.tlock** %10, align 8
  %96 = getelementptr inbounds %struct.tlock, %struct.tlock* %95, i32 0, i32 2
  %97 = bitcast i32* %96 to %struct.maplock*
  store %struct.maplock* %97, %struct.maplock** %11, align 8
  %98 = load %struct.maplock*, %struct.maplock** %11, align 8
  %99 = getelementptr inbounds %struct.maplock, %struct.maplock* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.maplock*, %struct.maplock** %11, align 8
  %101 = getelementptr inbounds %struct.maplock, %struct.maplock* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.maplock*, %struct.maplock** %11, align 8
  %103 = getelementptr inbounds %struct.maplock, %struct.maplock* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.tlock*, %struct.tlock** %10, align 8
  ret %struct.tlock* %104
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i8* @txLockAlloc(...) #1

declare dso_local %struct.tlock* @lid_to_tlock(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.tblock* @tid_to_tblock(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
