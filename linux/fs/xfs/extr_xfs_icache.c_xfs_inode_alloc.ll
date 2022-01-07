; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_inode_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_inode_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i64, i32, i32, i32, i64, i64, i32, i64, i64, i32, i32, i64, i32*, i32*, i32, %struct.xfs_mount*, i32 }
%struct.xfs_mount = type { i32 }
%struct.TYPE_3__ = type { i64 }

@xfs_inode_zone = common dso_local global i32 0, align 4
@vn_active = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_EXTENTS = common dso_local global i32 0, align 4
@xfs_end_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_inode* @xfs_inode_alloc(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @xfs_inode_zone, align 4
  %8 = call %struct.xfs_inode* @kmem_zone_alloc(i32 %7, i32 0)
  store %struct.xfs_inode* %8, %struct.xfs_inode** %6, align 8
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %10 = icmp ne %struct.xfs_inode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.xfs_inode* null, %struct.xfs_inode** %3, align 8
  br label %92

12:                                               ; preds = %2
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %17 = call %struct.TYPE_3__* @VFS_I(%struct.xfs_inode* %16)
  %18 = call i64 @inode_init_always(i32 %15, %struct.TYPE_3__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @xfs_inode_zone, align 4
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %23 = call i32 @kmem_zone_free(i32 %21, %struct.xfs_inode* %22)
  store %struct.xfs_inode* null, %struct.xfs_inode** %3, align 8
  br label %92

24:                                               ; preds = %12
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %26 = call %struct.TYPE_3__* @VFS_I(%struct.xfs_inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %29 = load i32, i32* @vn_active, align 4
  %30 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %28, i32 %29)
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %32 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %31, i32 0, i32 16
  %33 = call i64 @atomic_read(i32* %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %38 = call i32 @xfs_isiflocked(%struct.xfs_inode* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %44 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %51 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %53 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %53, i32 0, i32 15
  store %struct.xfs_mount* %52, %struct.xfs_mount** %54, align 8
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %56 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %55, i32 0, i32 14
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  %58 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %59 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %58, i32 0, i32 13
  store i32* null, i32** %59, align 8
  %60 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %61 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %60, i32 0, i32 12
  store i32* null, i32** %61, align 8
  %62 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %63 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %62, i32 0, i32 11
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @XFS_DINODE_FMT_EXTENTS, align 4
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %66 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 4
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %68 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %67, i32 0, i32 9
  %69 = call i32 @memset(i32* %68, i32 0, i32 4)
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %71 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %70, i32 0, i32 8
  store i64 0, i64* %71, align 8
  %72 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %73 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  %74 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %75 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %74, i32 0, i32 6
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  %77 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %78 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %80 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %82 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %81, i32 0, i32 3
  %83 = load i32, i32* @xfs_end_io, align 4
  %84 = call i32 @INIT_WORK(i32* %82, i32 %83)
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 2
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %89 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %88, i32 0, i32 1
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  store %struct.xfs_inode* %91, %struct.xfs_inode** %3, align 8
  br label %92

92:                                               ; preds = %24, %20, %11
  %93 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  ret %struct.xfs_inode* %93
}

declare dso_local %struct.xfs_inode* @kmem_zone_alloc(i32, i32) #1

declare dso_local i64 @inode_init_always(i32, %struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @kmem_zone_free(i32, %struct.xfs_inode*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @xfs_isiflocked(%struct.xfs_inode*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
