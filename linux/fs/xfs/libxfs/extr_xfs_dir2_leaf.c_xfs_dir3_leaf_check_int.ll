; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_check_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_check_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.xfs_da_geometry* }
%struct.xfs_da_geometry = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i64, i64, i32 }
%struct.xfs_dir2_leaf = type { i32 }
%struct.xfs_dir2_leaf_entry = type { i64, i32 }
%struct.xfs_dir_ops = type { i64 (%struct.xfs_da_geometry*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf.0*)*, i32 (%struct.xfs_dir3_icleaf_hdr.1*, %struct.xfs_dir2_leaf.2*)* }
%struct.xfs_dir2_leaf.0 = type opaque
%struct.xfs_dir3_icleaf_hdr.1 = type opaque
%struct.xfs_dir2_leaf.2 = type opaque

@__this_address = common dso_local global i32* null, align 8
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_dir3_leaf_check_int(%struct.xfs_mount* %0, %struct.xfs_inode* %1, %struct.xfs_dir3_icleaf_hdr* %2, %struct.xfs_dir2_leaf* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %9 = alloca %struct.xfs_dir2_leaf*, align 8
  %10 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_dir_ops*, align 8
  %15 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  %16 = alloca %struct.xfs_da_geometry*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %7, align 8
  store %struct.xfs_dir3_icleaf_hdr* %2, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  store %struct.xfs_dir2_leaf* %3, %struct.xfs_dir2_leaf** %9, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %18, align 8
  store %struct.xfs_da_geometry* %19, %struct.xfs_da_geometry** %16, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %22 = call %struct.xfs_dir_ops* @xfs_dir_get_ops(%struct.xfs_mount* %20, %struct.xfs_inode* %21)
  store %struct.xfs_dir_ops* %22, %struct.xfs_dir_ops** %14, align 8
  %23 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %24 = icmp ne %struct.xfs_dir3_icleaf_hdr* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %14, align 8
  %27 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %26, i32 0, i32 2
  %28 = load i32 (%struct.xfs_dir3_icleaf_hdr.1*, %struct.xfs_dir2_leaf.2*)*, i32 (%struct.xfs_dir3_icleaf_hdr.1*, %struct.xfs_dir2_leaf.2*)** %27, align 8
  %29 = bitcast %struct.xfs_dir3_icleaf_hdr* %15 to %struct.xfs_dir3_icleaf_hdr.1*
  %30 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %9, align 8
  %31 = bitcast %struct.xfs_dir2_leaf* %30 to %struct.xfs_dir2_leaf.2*
  %32 = call i32 %28(%struct.xfs_dir3_icleaf_hdr.1* %29, %struct.xfs_dir2_leaf.2* %31)
  store %struct.xfs_dir3_icleaf_hdr* %15, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  br label %33

33:                                               ; preds = %25, %4
  %34 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %14, align 8
  %35 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %34, i32 0, i32 1
  %36 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf.0*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf.0*)** %35, align 8
  %37 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %9, align 8
  %38 = bitcast %struct.xfs_dir2_leaf* %37 to %struct.xfs_dir2_leaf.0*
  %39 = call %struct.xfs_dir2_leaf_entry* %36(%struct.xfs_dir2_leaf.0* %38)
  store %struct.xfs_dir2_leaf_entry* %39, %struct.xfs_dir2_leaf_entry** %10, align 8
  %40 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %16, align 8
  %41 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %9, align 8
  %42 = call i32* @xfs_dir2_leaf_tail_p(%struct.xfs_da_geometry* %40, %struct.xfs_dir2_leaf* %41)
  store i32* %42, i32** %11, align 8
  %43 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %44 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %14, align 8
  %47 = getelementptr inbounds %struct.xfs_dir_ops, %struct.xfs_dir_ops* %46, i32 0, i32 0
  %48 = load i64 (%struct.xfs_da_geometry*)*, i64 (%struct.xfs_da_geometry*)** %47, align 8
  %49 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %16, align 8
  %50 = call i64 %48(%struct.xfs_da_geometry* %49)
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32*, i32** @__this_address, align 8
  store i32* %53, i32** %5, align 8
  br label %141

54:                                               ; preds = %33
  %55 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %62 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @XFS_DIR3_LEAF1_MAGIC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60, %54
  %67 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %68 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %67, i64 %70
  %72 = bitcast %struct.xfs_dir2_leaf_entry* %71 to i8*
  %73 = load i32*, i32** %11, align 8
  %74 = call i64 @xfs_dir2_leaf_bests_p(i32* %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = icmp ugt i8* %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32*, i32** @__this_address, align 8
  store i32* %78, i32** %5, align 8
  br label %141

79:                                               ; preds = %66, %60
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %129, %79
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %132

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %92 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %87
  %96 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %96, i64 %98
  %100 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @be32_to_cpu(i32 %101)
  %103 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %103, i64 %106
  %108 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @be32_to_cpu(i32 %109)
  %111 = icmp sgt i64 %102, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = load i32*, i32** @__this_address, align 8
  store i32* %113, i32** %5, align 8
  br label %141

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %87
  %116 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %116, i64 %118
  %120 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %123 = call i64 @cpu_to_be32(i32 %122)
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %125, %115
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %80

132:                                              ; preds = %80
  %133 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %8, align 8
  %134 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32*, i32** @__this_address, align 8
  store i32* %139, i32** %5, align 8
  br label %141

140:                                              ; preds = %132
  store i32* null, i32** %5, align 8
  br label %141

141:                                              ; preds = %140, %138, %112, %77, %52
  %142 = load i32*, i32** %5, align 8
  ret i32* %142
}

declare dso_local %struct.xfs_dir_ops* @xfs_dir_get_ops(%struct.xfs_mount*, %struct.xfs_inode*) #1

declare dso_local i32* @xfs_dir2_leaf_tail_p(%struct.xfs_da_geometry*, %struct.xfs_dir2_leaf*) #1

declare dso_local i64 @xfs_dir2_leaf_bests_p(i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
