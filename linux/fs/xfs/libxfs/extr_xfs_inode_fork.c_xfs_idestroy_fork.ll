; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_idestroy_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_idestroy_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.xfs_ifork = type { i32, i64, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32* }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@xfs_ifork_zone = common dso_local global i32 0, align 4
@XFS_COW_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_idestroy_fork(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_ifork*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.TYPE_7__* %6, i32 %7)
  store %struct.xfs_ifork* %8, %struct.xfs_ifork** %5, align 8
  %9 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kmem_free(i32* %16)
  %18 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @XFS_IFORK_FORMAT(%struct.TYPE_7__* %21, i32 %22)
  %24 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kmem_free(i32* %36)
  %38 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %32, %26
  br label %58

42:                                               ; preds = %20
  %43 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %44 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @XFS_IFEXTENTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %56 = call i32 @xfs_iext_destroy(%struct.xfs_ifork* %55)
  br label %57

57:                                               ; preds = %54, %49, %42
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @XFS_ATTR_FORK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @xfs_ifork_zone, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kmem_zone_free(i32 %63, i32* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %83

70:                                               ; preds = %58
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @XFS_COW_FORK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @xfs_ifork_zone, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @kmem_zone_free(i32 %75, i32* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %74, %70
  br label %83

83:                                               ; preds = %82, %62
  ret void
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kmem_free(i32*) #1

declare dso_local i64 @XFS_IFORK_FORMAT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_iext_destroy(%struct.xfs_ifork*) #1

declare dso_local i32 @kmem_zone_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
