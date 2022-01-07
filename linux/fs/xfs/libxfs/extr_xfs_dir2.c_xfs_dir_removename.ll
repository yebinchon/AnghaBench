; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_removename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32, i32 }
%struct.xfs_da_args = type { %struct.xfs_trans*, i32, i32, %struct.xfs_inode*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@xs_dir_remove = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_removename(%struct.xfs_trans* %0, %struct.xfs_inode* %1, %struct.xfs_name* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca %struct.xfs_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_da_args*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %16 = call %struct.TYPE_8__* @VFS_I(%struct.xfs_inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISDIR(i32 %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* @xs_dir_remove, align 4
  %25 = call i32 @XFS_STATS_INC(%struct.TYPE_7__* %23, i32 %24)
  %26 = load i32, i32* @KM_NOFS, align 4
  %27 = call %struct.xfs_da_args* @kmem_zalloc(i32 48, i32 %26)
  store %struct.xfs_da_args* %27, %struct.xfs_da_args** %12, align 8
  %28 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %29 = icmp ne %struct.xfs_da_args* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %123

33:                                               ; preds = %5
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %40 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %42 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %45 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %47 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %50 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %52 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %57 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %61, align 8
  %63 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %64 = call i32 %62(%struct.xfs_name* %63)
  %65 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %66 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %69 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %71 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %72 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %71, i32 0, i32 3
  store %struct.xfs_inode* %70, %struct.xfs_inode** %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %75 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @XFS_DATA_FORK, align 4
  %77 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %78 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %80 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %81 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %80, i32 0, i32 0
  store %struct.xfs_trans* %79, %struct.xfs_trans** %81, align 8
  %82 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %83 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %33
  %89 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %90 = call i32 @xfs_dir2_sf_removename(%struct.xfs_da_args* %89)
  store i32 %90, i32* %13, align 4
  br label %119

91:                                               ; preds = %33
  %92 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %93 = call i32 @xfs_dir2_isblock(%struct.xfs_da_args* %92, i32* %14)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %119

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %102 = call i32 @xfs_dir2_block_removename(%struct.xfs_da_args* %101)
  store i32 %102, i32* %13, align 4
  br label %119

103:                                              ; preds = %97
  %104 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %105 = call i32 @xfs_dir2_isleaf(%struct.xfs_da_args* %104, i32* %14)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %119

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %114 = call i32 @xfs_dir2_leaf_removename(%struct.xfs_da_args* %113)
  store i32 %114, i32* %13, align 4
  br label %118

115:                                              ; preds = %109
  %116 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %117 = call i32 @xfs_dir2_node_removename(%struct.xfs_da_args* %116)
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %108, %100, %96, %88
  %120 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %121 = call i32 @kmem_free(%struct.xfs_da_args* %120)
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %30
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_8__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.xfs_da_args* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_removename(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isblock(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_block_removename(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isleaf(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_removename(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_node_removename(%struct.xfs_da_args*) #1

declare dso_local i32 @kmem_free(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
