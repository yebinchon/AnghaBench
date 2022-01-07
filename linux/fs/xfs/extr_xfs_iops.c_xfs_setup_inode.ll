; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_setup_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_setup_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_10__, %struct.TYPE_9__*, i32, %struct.TYPE_6__, i32, %struct.inode }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.inode = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@I_NEW = common dso_local global i32 0, align 4
@xfs_dir_ilock_class = common dso_local global i32 0, align 4
@xfs_nondir_ilock_class = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_setup_inode(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %5, i32 0, i32 5
  store %struct.inode* %6, %struct.inode** %3, align 8
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @I_NEW, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @inode_sb_list_add(%struct.inode* %15)
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @inode_fake_hash(%struct.inode* %17)
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xfs_uid_to_kuid(i32 %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %27 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xfs_gid_to_kgid(i32 %29)
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i_size_write(%struct.inode* %33, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %41 = call i32 @xfs_diflags_to_iflags(%struct.inode* %39, %struct.xfs_inode* %40)
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %1
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @lockdep_set_class(i32* %49, i32* %55)
  %57 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %58 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i32 @lockdep_set_class(i32* %59, i32* @xfs_dir_ilock_class)
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %62 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %67 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %80

68:                                               ; preds = %1
  %69 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %70 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %75 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %77 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @lockdep_set_class(i32* %78, i32* @xfs_nondir_ilock_class)
  br label %80

80:                                               ; preds = %68, %47
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mapping_gfp_mask(i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @__GFP_FS, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = call i32 @mapping_set_gfp_mask(i32 %87, i32 %91)
  %93 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %94 = call i32 @XFS_IFORK_Q(%struct.xfs_inode* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %80
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = call i32 @inode_has_no_xattr(%struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %3, align 8
  %100 = call i32 @cache_no_acl(%struct.inode* %99)
  br label %101

101:                                              ; preds = %96, %80
  ret void
}

declare dso_local i32 @inode_sb_list_add(%struct.inode*) #1

declare dso_local i32 @inode_fake_hash(%struct.inode*) #1

declare dso_local i32 @xfs_uid_to_kuid(i32) #1

declare dso_local i32 @xfs_gid_to_kgid(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @xfs_diflags_to_iflags(%struct.inode*, %struct.xfs_inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @mapping_gfp_mask(i32) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local i32 @inode_has_no_xattr(%struct.inode*) #1

declare dso_local i32 @cache_no_acl(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
