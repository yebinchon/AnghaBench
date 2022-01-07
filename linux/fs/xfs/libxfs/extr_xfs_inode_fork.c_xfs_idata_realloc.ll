; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_idata_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_idata_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@KM_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_idata_realloc(%struct.xfs_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_ifork*, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %9, i32 %10)
  store %struct.xfs_ifork* %11, %struct.xfs_ifork** %7, align 8
  %12 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %13 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @XFS_IFORK_SIZE(%struct.xfs_inode* %22, i32 %23)
  %25 = icmp sle i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %60

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kmem_free(i32* %38)
  %40 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %44 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %60

45:                                               ; preds = %31
  %46 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @roundup(i32 %50, i32 4)
  %52 = load i32, i32* @KM_NOFS, align 4
  %53 = call i32* @kmem_realloc(i32* %49, i32 %51, i32 %52)
  %54 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %55 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.xfs_ifork*, %struct.xfs_ifork** %7, align 8
  %59 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %45, %34, %30
  ret void
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_IFORK_SIZE(%struct.xfs_inode*, i32) #1

declare dso_local i32 @kmem_free(i32*) #1

declare dso_local i32* @kmem_realloc(i32*, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
