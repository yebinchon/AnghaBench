; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_createname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_createname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32, i32 }
%struct.xfs_da_args = type { i32, %struct.xfs_trans*, i32, i32, %struct.xfs_inode*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@xs_dir_create = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_ADDNAME = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_createname(%struct.xfs_trans* %0, %struct.xfs_inode* %1, %struct.xfs_name* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca %struct.xfs_name*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_da_args*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %16 = call %struct.TYPE_8__* @VFS_I(%struct.xfs_inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISDIR(i32 %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %5
  %24 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %25 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @xfs_dir_ino_validate(i32 %26, i64 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %151

33:                                               ; preds = %23
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* @xs_dir_create, align 4
  %38 = call i32 @XFS_STATS_INC(%struct.TYPE_7__* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %5
  %40 = load i32, i32* @KM_NOFS, align 4
  %41 = call %struct.xfs_da_args* @kmem_zalloc(i32 64, i32 %40)
  store %struct.xfs_da_args* %41, %struct.xfs_da_args** %12, align 8
  %42 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %43 = icmp ne %struct.xfs_da_args* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %151

47:                                               ; preds = %39
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %49 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %54 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %56 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %59 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %61 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %64 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %66 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %69 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %71 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %75, align 8
  %77 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %78 = call i32 %76(%struct.xfs_name* %77)
  %79 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %80 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %83 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  %84 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %85 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %86 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %85, i32 0, i32 4
  store %struct.xfs_inode* %84, %struct.xfs_inode** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %89 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @XFS_DATA_FORK, align 4
  %91 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %92 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %94 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %95 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %94, i32 0, i32 1
  store %struct.xfs_trans* %93, %struct.xfs_trans** %95, align 8
  %96 = load i32, i32* @XFS_DA_OP_ADDNAME, align 4
  %97 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %100 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %47
  %104 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %105 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %106 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %47
  %110 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %111 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %118 = call i32 @xfs_dir2_sf_addname(%struct.xfs_da_args* %117)
  store i32 %118, i32* %13, align 4
  br label %147

119:                                              ; preds = %109
  %120 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %121 = call i32 @xfs_dir2_isblock(%struct.xfs_da_args* %120, i32* %14)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %147

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %130 = call i32 @xfs_dir2_block_addname(%struct.xfs_da_args* %129)
  store i32 %130, i32* %13, align 4
  br label %147

131:                                              ; preds = %125
  %132 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %133 = call i32 @xfs_dir2_isleaf(%struct.xfs_da_args* %132, i32* %14)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %147

137:                                              ; preds = %131
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %142 = call i32 @xfs_dir2_leaf_addname(%struct.xfs_da_args* %141)
  store i32 %142, i32* %13, align 4
  br label %146

143:                                              ; preds = %137
  %144 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %145 = call i32 @xfs_dir2_node_addname(%struct.xfs_da_args* %144)
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %136, %128, %124, %116
  %148 = load %struct.xfs_da_args*, %struct.xfs_da_args** %12, align 8
  %149 = call i32 @kmem_free(%struct.xfs_da_args* %148)
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %44, %31
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_8__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_dir_ino_validate(i32, i64) #1

declare dso_local i32 @XFS_STATS_INC(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.xfs_da_args* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isblock(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_block_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_isleaf(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_dir2_node_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @kmem_free(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
