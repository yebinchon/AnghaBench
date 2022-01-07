; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_init_local_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_init_local_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_IFBROOT = common dso_local global i32 0, align 4
@XFS_IFINLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_init_local_fork(%struct.xfs_inode* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_ifork*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %13, i32 %14)
  store %struct.xfs_ifork* %15, %struct.xfs_ifork** %9, align 8
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %18 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISLNK(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @roundup(i32 %31, i32 4)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @KM_NOFS, align 4
  %35 = call i8* @kmem_alloc(i32 %33, i32 %34)
  %36 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %37 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %40 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i8* %42, i8* %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %30
  %49 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %50 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %48, %30
  br label %61

57:                                               ; preds = %27
  %58 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %59 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %64 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @XFS_IFEXTENTS, align 4
  %66 = load i32, i32* @XFS_IFBROOT, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %70 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @XFS_IFINLINE, align 4
  %74 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %75 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  ret void
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_4__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
