; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32, i32 }
%struct.xfs_da_args = type { %struct.xfs_trans*, i32, i32, %struct.xfs_inode*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_replace(%struct.xfs_trans* %0, %struct.xfs_inode* %1, %struct.xfs_name* %2, i32 %3, i32 %4) #0 {
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
  %21 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @xfs_dir_ino_validate(i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %128

30:                                               ; preds = %5
  %31 = load i32, i32* @KM_NOFS, align 4
  %32 = call %struct.xfs_da_args* @kmem_zalloc(i32 48, i32 %31)
  store %struct.xfs_da_args* %32, %struct.xfs_da_args** %12, align 8
  %33 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %34 = icmp ne %struct.xfs_da_args* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %128

38:                                               ; preds = %30
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %40 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %45 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %47 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %50 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %52 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %57 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %60 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %62 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %66, align 8
  %68 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %69 = call i32 %67(%struct.xfs_name* %68)
  %70 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %71 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %74 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %76 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %77 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %76, i32 0, i32 3
  store %struct.xfs_inode* %75, %struct.xfs_inode** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %80 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @XFS_DATA_FORK, align 4
  %82 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %83 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %85 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %86 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %85, i32 0, i32 0
  store %struct.xfs_trans* %84, %struct.xfs_trans** %86, align 8
  %87 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %88 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %38
  %94 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %95 = call i32 @xfs_dir2_sf_replace(%struct.xfs_da_args* %94)
  store i32 %95, i32* %13, align 4
  br label %124

96:                                               ; preds = %38
  %97 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %98 = call i32 @xfs_dir2_isblock(%struct.xfs_da_args* %97, i32* %14)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %124

102:                                              ; preds = %96
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %107 = call i32 @xfs_dir2_block_replace(%struct.xfs_da_args* %106)
  store i32 %107, i32* %13, align 4
  br label %124

108:                                              ; preds = %102
  %109 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %110 = call i32 @xfs_dir2_isleaf(%struct.xfs_da_args* %109, i32* %14)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %124

114:                                              ; preds = %108
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %119 = call i32 @xfs_dir2_leaf_replace(%struct.xfs_da_args* %118)
  store i32 %119, i32* %13, align 4
  br label %123

120:                                              ; preds = %114
  %121 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %122 = call i32 @xfs_dir2_node_replace(%struct.xfs_da_args* %121)
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %113, %105, %101, %93
  %125 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %126 = call i32 @kmem_free(%struct.xfs_da_args* %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %35, %28
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_8__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_dir_ino_validate(i32, i32) #1

declare dso_local %struct.xfs_da_args* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_replace(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isblock(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_block_replace(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isleaf(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_replace(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_node_replace(%struct.xfs_da_args*) #1

declare dso_local i32 @kmem_free(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
