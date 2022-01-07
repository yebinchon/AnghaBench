; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32, i32 }
%struct.xfs_da_args = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@xs_dir_lookup = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_DA_OP_CILOOKUP = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_lookup(i32* %0, %struct.TYPE_12__* %1, %struct.xfs_name* %2, i32* %3, %struct.xfs_name* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.xfs_name*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_name*, align 8
  %11 = alloca %struct.xfs_da_args*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.xfs_name* %4, %struct.xfs_name** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = call %struct.TYPE_14__* @VFS_I(%struct.TYPE_12__* %15)
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISDIR(i32 %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load i32, i32* @xs_dir_lookup, align 4
  %25 = call i32 @XFS_STATS_INC(%struct.TYPE_13__* %23, i32 %24)
  %26 = load i32, i32* @KM_NOFS, align 4
  %27 = call %struct.xfs_da_args* @kmem_zalloc(i32 64, i32 %26)
  store %struct.xfs_da_args* %27, %struct.xfs_da_args** %11, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %34 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 8
  %35 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %36 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %39 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %41 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %44 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %46 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %55, align 8
  %57 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %58 = call i32 %56(%struct.xfs_name* %57)
  %59 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %60 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %63 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %62, i32 0, i32 6
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load i32, i32* @XFS_DATA_FORK, align 4
  %65 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %66 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %69 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %71 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %72 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %74 = icmp ne %struct.xfs_name* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %5
  %76 = load i32, i32* @XFS_DA_OP_CILOOKUP, align 4
  %77 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %78 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %5
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = call i32 @xfs_ilock_data_map_shared(%struct.TYPE_12__* %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %92 = call i32 @xfs_dir2_sf_lookup(%struct.xfs_da_args* %91)
  store i32 %92, i32* %12, align 4
  br label %121

93:                                               ; preds = %81
  %94 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %95 = call i32 @xfs_dir2_isblock(%struct.xfs_da_args* %94, i32* %13)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %150

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %104 = call i32 @xfs_dir2_block_lookup(%struct.xfs_da_args* %103)
  store i32 %104, i32* %12, align 4
  br label %121

105:                                              ; preds = %99
  %106 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %107 = call i32 @xfs_dir2_isleaf(%struct.xfs_da_args* %106, i32* %13)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %150

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %116 = call i32 @xfs_dir2_leaf_lookup(%struct.xfs_da_args* %115)
  store i32 %116, i32* %12, align 4
  br label %120

117:                                              ; preds = %111
  %118 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %119 = call i32 @xfs_dir2_node_lookup(%struct.xfs_da_args* %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %102, %90
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @EEXIST, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %126, %121
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %127
  %131 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %132 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %136 = icmp ne %struct.xfs_name* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %139 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %142 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %144 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %147 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %130
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149, %110, %98
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @xfs_iunlock(%struct.TYPE_12__* %151, i32 %152)
  %154 = load %struct.xfs_da_args*, %struct.xfs_da_args** %11, align 8
  %155 = call i32 @kmem_free(%struct.xfs_da_args* %154)
  %156 = load i32, i32* %12, align 4
  ret i32 %156
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_14__* @VFS_I(%struct.TYPE_12__*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.xfs_da_args* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_ilock_data_map_shared(%struct.TYPE_12__*) #1

declare dso_local i32 @xfs_dir2_sf_lookup(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isblock(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_block_lookup(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isleaf(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_node_lookup(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
