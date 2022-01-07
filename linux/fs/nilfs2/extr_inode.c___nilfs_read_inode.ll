; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c___nilfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c___nilfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_root = type { i32 }
%struct.inode = type { %struct.TYPE_4__*, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@nilfs_file_inode_operations = common dso_local global i32 0, align 4
@nilfs_file_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@nilfs_dir_inode_operations = common dso_local global i32 0, align 4
@nilfs_dir_operations = common dso_local global i32 0, align 4
@nilfs_symlink_inode_operations = common dso_local global i32 0, align 4
@nilfs_special_inode_operations = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.nilfs_root*, i64, %struct.inode*)* @__nilfs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nilfs_read_inode(%struct.super_block* %0, %struct.nilfs_root* %1, i64 %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_root*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.the_nilfs*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.nilfs_inode*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.nilfs_root* %1, %struct.nilfs_root** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %15, align 8
  store %struct.the_nilfs* %16, %struct.the_nilfs** %10, align 8
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_5__* @NILFS_MDT(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @down_read(i32* %21)
  %23 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %24 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @nilfs_ifile_get_inode_block(i32 %25, i64 %26, %struct.buffer_head** %11)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %141

32:                                               ; preds = %4
  %33 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %34 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %38 = call %struct.nilfs_inode* @nilfs_ifile_map_inode(i32 %35, i64 %36, %struct.buffer_head* %37)
  store %struct.nilfs_inode* %38, %struct.nilfs_inode** %12, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = load %struct.nilfs_inode*, %struct.nilfs_inode** %12, align 8
  %41 = call i32 @nilfs_read_inode_common(%struct.inode* %39, %struct.nilfs_inode* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %132

45:                                               ; preds = %32
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @S_ISREG(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store i32* @nilfs_file_inode_operations, i32** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  store i32* @nilfs_file_operations, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* @nilfs_aops, i32** %59, align 8
  br label %105

60:                                               ; preds = %45
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  store i32* @nilfs_dir_inode_operations, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  store i32* @nilfs_dir_operations, i32** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32* @nilfs_aops, i32** %74, align 8
  br label %104

75:                                               ; preds = %60
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @S_ISLNK(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  store i32* @nilfs_symlink_inode_operations, i32** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @inode_nohighmem(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32* @nilfs_aops, i32** %89, align 8
  br label %103

90:                                               ; preds = %75
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  store i32* @nilfs_special_inode_operations, i32** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nilfs_inode*, %struct.nilfs_inode** %12, align 8
  %98 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le64_to_cpu(i32 %99)
  %101 = call i32 @huge_decode_dev(i32 %100)
  %102 = call i32 @init_special_inode(%struct.inode* %93, i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %90, %81
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %51
  %106 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %107 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = call i32 @nilfs_ifile_unmap_inode(i32 %108, i64 %109, %struct.buffer_head* %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %113 = call i32 @brelse(%struct.buffer_head* %112)
  %114 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %115 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.TYPE_5__* @NILFS_MDT(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @up_read(i32* %118)
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = call i32 @nilfs_set_inode_flags(%struct.inode* %120)
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* @__GFP_FS, align 4
  %129 = xor i32 %128, -1
  %130 = call i32 @mapping_gfp_constraint(%struct.TYPE_4__* %127, i32 %129)
  %131 = call i32 @mapping_set_gfp_mask(%struct.TYPE_4__* %124, i32 %130)
  store i32 0, i32* %5, align 4
  br label %149

132:                                              ; preds = %44
  %133 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %134 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %138 = call i32 @nilfs_ifile_unmap_inode(i32 %135, i64 %136, %struct.buffer_head* %137)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %140 = call i32 @brelse(%struct.buffer_head* %139)
  br label %141

141:                                              ; preds = %132, %31
  %142 = load %struct.the_nilfs*, %struct.the_nilfs** %10, align 8
  %143 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.TYPE_5__* @NILFS_MDT(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = call i32 @up_read(i32* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %141, %105
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_5__* @NILFS_MDT(i32) #1

declare dso_local i32 @nilfs_ifile_get_inode_block(i32, i64, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nilfs_inode* @nilfs_ifile_map_inode(i32, i64, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_read_inode_common(%struct.inode*, %struct.nilfs_inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @huge_decode_dev(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_ifile_unmap_inode(i32, i64, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
