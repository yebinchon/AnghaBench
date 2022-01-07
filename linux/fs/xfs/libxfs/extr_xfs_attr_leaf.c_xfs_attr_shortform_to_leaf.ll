; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_to_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.xfs_ifork* }
%struct.xfs_ifork = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_buf = type { i32 }
%struct.xfs_attr_shortform = type { %struct.TYPE_4__, %struct.xfs_attr_sf_entry* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xfs_attr_sf_entry = type { i64, i32, i32*, i32 }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_to_leaf(%struct.xfs_da_args* %0, %struct.xfs_buf** %1) #0 {
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_buf**, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_attr_shortform*, align 8
  %7 = alloca %struct.xfs_attr_sf_entry*, align 8
  %8 = alloca %struct.xfs_da_args, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.xfs_buf*, align 8
  %15 = alloca %struct.xfs_ifork*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  store %struct.xfs_buf** %1, %struct.xfs_buf*** %4, align 8
  %16 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %17 = call i32 @trace_xfs_attr_sf_to_leaf(%struct.xfs_da_args* %16)
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 11
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  store %struct.xfs_inode* %20, %struct.xfs_inode** %5, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 0
  %23 = load %struct.xfs_ifork*, %struct.xfs_ifork** %22, align 8
  store %struct.xfs_ifork* %23, %struct.xfs_ifork** %15, align 8
  %24 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %25 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.xfs_attr_shortform*
  store %struct.xfs_attr_shortform* %28, %struct.xfs_attr_shortform** %6, align 8
  %29 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %6, align 8
  %30 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be16_to_cpu(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @kmem_alloc(i32 %34, i32 0)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %42 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @memcpy(i8* %40, i64 %44, i32 %45)
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to %struct.xfs_attr_shortform*
  store %struct.xfs_attr_shortform* %48, %struct.xfs_attr_shortform** %6, align 8
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* @XFS_ATTR_FORK, align 4
  %53 = call i32 @xfs_idata_realloc(%struct.xfs_inode* %49, i32 %51, i32 %52)
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %58 = load i32, i32* @XFS_ATTR_FORK, align 4
  %59 = call i32 @xfs_bmap_local_to_extents_empty(i32 %56, %struct.xfs_inode* %57, i32 %58)
  store %struct.xfs_buf* null, %struct.xfs_buf** %14, align 8
  %60 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %61 = call i32 @xfs_da_grow_inode(%struct.xfs_da_args* %60, i64* %13)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %2
  br label %169

65:                                               ; preds = %2
  %66 = load i64, i64* %13, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @xfs_attr3_leaf_create(%struct.xfs_da_args* %70, i64 %71, %struct.xfs_buf** %14)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %169

76:                                               ; preds = %65
  %77 = bitcast %struct.xfs_da_args* %8 to i8*
  %78 = call i32 @memset(i8* %77, i32 0, i32 72)
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %80 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 11
  store %struct.xfs_inode* %79, %struct.xfs_inode** %80, align 8
  %81 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %82 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 10
  store i32 %83, i32* %84, align 8
  %85 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %86 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 9
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @XFS_ATTR_FORK, align 4
  %90 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 8
  store i32 %89, i32* %90, align 8
  %91 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %92 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 7
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %96 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 6
  store i32 %95, i32* %96, align 8
  %97 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %6, align 8
  %98 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %97, i32 0, i32 1
  %99 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %98, align 8
  %100 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %99, i64 0
  store %struct.xfs_attr_sf_entry* %100, %struct.xfs_attr_sf_entry** %7, align 8
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %163, %76
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %6, align 8
  %104 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %166

108:                                              ; preds = %101
  %109 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %110 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 5
  store i32* %111, i32** %112, align 8
  %113 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %114 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 0
  store i64 %115, i64* %116, align 8
  %117 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %118 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 4
  store i32* %122, i32** %123, align 8
  %124 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %125 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 3
  store i32 %126, i32* %127, align 8
  %128 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %129 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %132 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @xfs_da_hashname(i32* %130, i64 %133)
  %135 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 2
  store i32 %134, i32* %135, align 4
  %136 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %137 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32 %138)
  %140 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 1
  store i32 %139, i32* %140, align 8
  %141 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %142 = call i32 @xfs_attr3_leaf_lookup_int(%struct.xfs_buf* %141, %struct.xfs_da_args* %8)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @ENOATTR, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ASSERT(i32 %147)
  %149 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %150 = call i32 @xfs_attr3_leaf_add(%struct.xfs_buf* %149, %struct.xfs_da_args* %8)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @ENOSPC, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp ne i32 %151, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @ASSERT(i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %108
  br label %169

160:                                              ; preds = %108
  %161 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %7, align 8
  %162 = call %struct.xfs_attr_sf_entry* @XFS_ATTR_SF_NEXTENTRY(%struct.xfs_attr_sf_entry* %161)
  store %struct.xfs_attr_sf_entry* %162, %struct.xfs_attr_sf_entry** %7, align 8
  br label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %101

166:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  %167 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %168 = load %struct.xfs_buf**, %struct.xfs_buf*** %4, align 8
  store %struct.xfs_buf* %167, %struct.xfs_buf** %168, align 8
  br label %169

169:                                              ; preds = %166, %159, %75, %64
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @kmem_free(i8* %170)
  %172 = load i32, i32* %10, align 4
  ret i32 %172
}

declare dso_local i32 @trace_xfs_attr_sf_to_leaf(%struct.xfs_da_args*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @xfs_idata_realloc(%struct.xfs_inode*, i32, i32) #1

declare dso_local i32 @xfs_bmap_local_to_extents_empty(i32, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.xfs_da_args*, i64*) #1

declare dso_local i32 @xfs_attr3_leaf_create(%struct.xfs_da_args*, i64, %struct.xfs_buf**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @xfs_da_hashname(i32*, i64) #1

declare dso_local i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32) #1

declare dso_local i32 @xfs_attr3_leaf_lookup_int(%struct.xfs_buf*, %struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_add(%struct.xfs_buf*, %struct.xfs_da_args*) #1

declare dso_local %struct.xfs_attr_sf_entry* @XFS_ATTR_SF_NEXTENTRY(%struct.xfs_attr_sf_entry*) #1

declare dso_local i32 @kmem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
