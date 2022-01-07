; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_to_shortform.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_to_shortform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i8* }
%struct.xfs_da_args = type { i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, %struct.xfs_inode*, %struct.TYPE_6__* }
%struct.xfs_inode = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32, i32, i32 }
%struct.xfs_attr_leaf_name_local = type { i64, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_to_shortform(%struct.xfs_buf* %0, %struct.xfs_da_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_da_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_attr_leafblock*, align 8
  %9 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %10 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %11 = alloca %struct.xfs_attr_leaf_name_local*, align 8
  %12 = alloca %struct.xfs_da_args, align 8
  %13 = alloca %struct.xfs_inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %5, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %17, i32 0, i32 10
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  store %struct.xfs_inode* %19, %struct.xfs_inode** %13, align 8
  %20 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %21 = call i32 @trace_xfs_attr_leaf_to_sf(%struct.xfs_da_args* %20)
  %22 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %23 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %22, i32 0, i32 11
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @kmem_alloc(i32 %26, i32 0)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %187

33:                                               ; preds = %3
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %39 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %38, i32 0, i32 11
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i8* %34, i8* %37, i32 %42)
  %44 = load i8*, i8** %14, align 8
  %45 = bitcast i8* %44 to %struct.xfs_attr_leafblock*
  store %struct.xfs_attr_leafblock* %45, %struct.xfs_attr_leafblock** %8, align 8
  %46 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %47 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %46, i32 0, i32 11
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %50 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_6__* %48, %struct.xfs_attr3_icleaf_hdr* %9, %struct.xfs_attr_leafblock* %49)
  %51 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %52 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %51)
  store %struct.xfs_attr_leaf_entry* %52, %struct.xfs_attr_leaf_entry** %10, align 8
  %53 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %56, i32 0, i32 11
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i8* %55, i32 0, i32 %60)
  %62 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %64 = call i32 @xfs_da_shrink_inode(%struct.xfs_da_args* %62, i32 0, %struct.xfs_buf* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %33
  br label %183

68:                                               ; preds = %33
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  %73 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  %81 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %85 = icmp ne i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  %89 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %90 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @xfs_attr_fork_remove(%struct.xfs_inode* %88, i32 %91)
  br label %183

93:                                               ; preds = %68
  %94 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %95 = call i32 @xfs_attr_shortform_create(%struct.xfs_da_args* %94)
  %96 = bitcast %struct.xfs_da_args* %12 to i8*
  %97 = call i32 @memset(i8* %96, i32 0, i32 72)
  %98 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %99 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %98, i32 0, i32 11
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 11
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %101, align 8
  %102 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  %103 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 10
  store %struct.xfs_inode* %102, %struct.xfs_inode** %103, align 8
  %104 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %105 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 9
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @XFS_ATTR_FORK, align 4
  %109 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 8
  store i32 %108, i32* %109, align 8
  %110 = load %struct.xfs_da_args*, %struct.xfs_da_args** %6, align 8
  %111 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 7
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %115 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 6
  store i32 %114, i32* %115, align 8
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %177, %93
  %117 = load i32, i32* %16, align 4
  %118 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %182

121:                                              ; preds = %116
  %122 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %123 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %177

129:                                              ; preds = %121
  %130 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %131 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %177

135:                                              ; preds = %129
  %136 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %137 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @ASSERT(i32 %140)
  %142 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call %struct.xfs_attr_leaf_name_local* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock* %142, i32 %143)
  store %struct.xfs_attr_leaf_name_local* %144, %struct.xfs_attr_leaf_name_local** %11, align 8
  %145 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %11, align 8
  %146 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 5
  store i32* %147, i32** %148, align 8
  %149 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %11, align 8
  %150 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %11, align 8
  %154 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 4
  store i32* %158, i32** %159, align 8
  %160 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %11, align 8
  %161 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @be16_to_cpu(i32 %162)
  %164 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 3
  store i32 %163, i32* %164, align 8
  %165 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %166 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @be32_to_cpu(i32 %167)
  %169 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %171 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32 %172)
  %174 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 1
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @xfs_attr_shortform_add(%struct.xfs_da_args* %12, i32 %175)
  br label %177

177:                                              ; preds = %135, %134, %128
  %178 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %10, align 8
  %179 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %178, i32 1
  store %struct.xfs_attr_leaf_entry* %179, %struct.xfs_attr_leaf_entry** %10, align 8
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %116

182:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  br label %183

183:                                              ; preds = %182, %71, %67
  %184 = load i8*, i8** %14, align 8
  %185 = call i32 @kmem_free(i8* %184)
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %30
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @trace_xfs_attr_leaf_to_sf(%struct.xfs_da_args*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_6__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @xfs_da_shrink_inode(%struct.xfs_da_args*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr_fork_remove(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_attr_shortform_create(%struct.xfs_da_args*) #1

declare dso_local %struct.xfs_attr_leaf_name_local* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32) #1

declare dso_local i32 @xfs_attr_shortform_add(%struct.xfs_da_args*, i32) #1

declare dso_local i32 @kmem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
