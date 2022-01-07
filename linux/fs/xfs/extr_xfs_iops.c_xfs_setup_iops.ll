; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_setup_iops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_setup_iops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_5__, %struct.inode }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32, i32, i32*, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@xfs_inode_operations = common dso_local global i32 0, align 4
@xfs_file_operations = common dso_local global i32 0, align 4
@xfs_dax_aops = common dso_local global i32 0, align 4
@xfs_address_space_operations = common dso_local global i32 0, align 4
@xfs_dir_ci_inode_operations = common dso_local global i32 0, align 4
@xfs_dir_inode_operations = common dso_local global i32 0, align 4
@xfs_dir_file_operations = common dso_local global i32 0, align 4
@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_inline_symlink_inode_operations = common dso_local global i32 0, align 4
@xfs_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_setup_iops(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %4 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %4, i32 0, i32 1
  store %struct.inode* %5, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @S_IFMT, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %62 [
    i32 128, label %11
    i32 130, label %30
    i32 129, label %47
  ]

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  store i32* @xfs_inode_operations, i32** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  store i32* @xfs_file_operations, i32** %15, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @IS_DAX(%struct.inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* @xfs_dax_aops, i32** %23, align 8
  br label %29

24:                                               ; preds = %11
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* @xfs_address_space_operations, i32** %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  br label %73

30:                                               ; preds = %1
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_6__* @XFS_M(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @xfs_sb_version_hasasciici(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  store i32* @xfs_dir_ci_inode_operations, i32** %40, align 8
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  store i32* @xfs_dir_inode_operations, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  store i32* @xfs_dir_file_operations, i32** %46, align 8
  br label %73

47:                                               ; preds = %1
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %49 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XFS_IFINLINE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  store i32* @xfs_inline_symlink_inode_operations, i32** %57, align 8
  br label %61

58:                                               ; preds = %47
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  store i32* @xfs_symlink_inode_operations, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %73

62:                                               ; preds = %1
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  store i32* @xfs_inode_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @init_special_inode(%struct.inode* %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %62, %61, %44, %29
  ret void
}

declare dso_local i32 @IS_DAX(%struct.inode*) #1

declare dso_local i32 @xfs_sb_version_hasasciici(i32*) #1

declare dso_local %struct.TYPE_6__* @XFS_M(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
