; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_attr_shortform = type { %struct.TYPE_6__, %struct.xfs_attr_sf_entry* }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_attr_sf_entry = type { i64, i32 }
%struct.xfs_ifork = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@XFS_ATTR_NSP_ONDISK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_attr_shortform_verify(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_attr_shortform*, align 8
  %5 = alloca %struct.xfs_attr_sf_entry*, align 8
  %6 = alloca %struct.xfs_attr_sf_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xfs_ifork*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %20 = load i32, i32* @XFS_ATTR_FORK, align 4
  %21 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %19, i32 %20)
  store %struct.xfs_ifork* %21, %struct.xfs_ifork** %8, align 8
  %22 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %23 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.xfs_attr_shortform*
  store %struct.xfs_attr_shortform* %26, %struct.xfs_attr_shortform** %4, align 8
  %27 = load %struct.xfs_ifork*, %struct.xfs_ifork** %8, align 8
  %28 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32*, i32** @__this_address, align 8
  store i32* %34, i32** %2, align 8
  br label %109

35:                                               ; preds = %1
  %36 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %4, align 8
  %37 = bitcast %struct.xfs_attr_shortform* %36 to i8*
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %41, i32 0, i32 1
  %43 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %42, align 8
  %44 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %43, i64 0
  store %struct.xfs_attr_sf_entry* %44, %struct.xfs_attr_sf_entry** %5, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %98, %35
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %4, align 8
  %48 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %45
  %53 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %54 = bitcast %struct.xfs_attr_sf_entry* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 16
  %56 = load i8*, i8** %7, align 8
  %57 = icmp uge i8* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32*, i32** @__this_address, align 8
  store i32* %59, i32** %2, align 8
  br label %109

60:                                               ; preds = %52
  %61 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32*, i32** @__this_address, align 8
  store i32* %66, i32** %2, align 8
  br label %109

67:                                               ; preds = %60
  %68 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %69 = call %struct.xfs_attr_sf_entry* @XFS_ATTR_SF_NEXTENTRY(%struct.xfs_attr_sf_entry* %68)
  store %struct.xfs_attr_sf_entry* %69, %struct.xfs_attr_sf_entry** %6, align 8
  %70 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %6, align 8
  %71 = bitcast %struct.xfs_attr_sf_entry* %70 to i8*
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ugt i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32*, i32** @__this_address, align 8
  store i32* %75, i32** %2, align 8
  br label %109

76:                                               ; preds = %67
  %77 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %78 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @XFS_ATTR_NSP_ONDISK_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32*, i32** @__this_address, align 8
  store i32* %85, i32** %2, align 8
  br label %109

86:                                               ; preds = %76
  %87 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %88 = getelementptr inbounds %struct.xfs_attr_sf_entry, %struct.xfs_attr_sf_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @XFS_ATTR_NSP_ONDISK_MASK, align 4
  %91 = and i32 %89, %90
  %92 = call i32 @hweight8(i32 %91)
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32*, i32** @__this_address, align 8
  store i32* %95, i32** %2, align 8
  br label %109

96:                                               ; preds = %86
  %97 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %6, align 8
  store %struct.xfs_attr_sf_entry* %97, %struct.xfs_attr_sf_entry** %5, align 8
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %45

101:                                              ; preds = %45
  %102 = load %struct.xfs_attr_sf_entry*, %struct.xfs_attr_sf_entry** %5, align 8
  %103 = bitcast %struct.xfs_attr_sf_entry* %102 to i8*
  %104 = load i8*, i8** %7, align 8
  %105 = icmp ne i8* %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32*, i32** @__this_address, align 8
  store i32* %107, i32** %2, align 8
  br label %109

108:                                              ; preds = %101
  store i32* null, i32** %2, align 8
  br label %109

109:                                              ; preds = %108, %106, %94, %84, %74, %65, %58, %33
  %110 = load i32*, i32** %2, align 8
  ret i32* %110
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local %struct.xfs_attr_sf_entry* @XFS_ATTR_SF_NEXTENTRY(%struct.xfs_attr_sf_entry*) #1

declare dso_local i32 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
