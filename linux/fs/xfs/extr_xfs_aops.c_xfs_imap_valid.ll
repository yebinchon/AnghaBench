; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_imap_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_imap_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_writepage_ctx = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.xfs_inode = type { %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@XFS_COW_FORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_writepage_ctx*, %struct.xfs_inode*, i64)* @xfs_imap_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_imap_valid(%struct.xfs_writepage_ctx* %0, %struct.xfs_inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_writepage_ctx*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i64, align 8
  store %struct.xfs_writepage_ctx* %0, %struct.xfs_writepage_ctx** %5, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %19, %23
  %25 = icmp sge i64 %15, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %62

27:                                               ; preds = %14
  %28 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XFS_COW_FORK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %62

34:                                               ; preds = %27
  %35 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %39 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @READ_ONCE(i32 %41)
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %62

45:                                               ; preds = %34
  %46 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %47 = call i64 @xfs_inode_has_cow_data(%struct.xfs_inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @READ_ONCE(i32 %57)
  %59 = icmp ne i64 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %49, %45
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %44, %33, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @xfs_inode_has_cow_data(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
