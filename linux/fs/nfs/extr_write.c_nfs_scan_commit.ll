; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_scan_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_scan_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.nfs_commit_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_scan_commit(%struct.inode* %0, %struct.list_head* %1, %struct.nfs_commit_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.nfs_commit_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.nfs_commit_info* %2, %struct.nfs_commit_info** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %11 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i64 @atomic_long_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_4__* @NFS_I(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i64 @atomic_long_read(i32* %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %17
  %31 = load i32, i32* @INT_MAX, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %33 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.list_head*, %struct.list_head** %6, align 8
  %37 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nfs_scan_commit_list(i32* %35, %struct.list_head* %36, %struct.nfs_commit_info* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i64 @pnfs_scan_commit_lists(%struct.inode* %40, %struct.nfs_commit_info* %41, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %30, %17
  %51 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %7, align 8
  %52 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_4__* @NFS_I(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(i32) #1

declare dso_local i32 @nfs_scan_commit_list(i32*, %struct.list_head*, %struct.nfs_commit_info*, i32) #1

declare dso_local i64 @pnfs_scan_commit_lists(%struct.inode*, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
