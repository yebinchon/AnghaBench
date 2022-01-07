; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_cancel_cow_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_cancel_cow_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_trans = type { i64 }
%struct.xfs_ifork = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { i32 }

@XFS_COW_FORK = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@NULLFSBLOCK = common dso_local global i64 0, align 8
@XFS_QMOPT_RES_REGBLKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_cancel_cow_blocks(%struct.xfs_inode* %0, %struct.xfs_trans** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_trans**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_ifork*, align 8
  %13 = alloca %struct.xfs_bmbt_irec, align 8
  %14 = alloca %struct.xfs_bmbt_irec, align 8
  %15 = alloca %struct.xfs_iext_cursor, align 4
  %16 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store %struct.xfs_trans** %1, %struct.xfs_trans*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %18 = load i32, i32* @XFS_COW_FORK, align 4
  %19 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %17, i32 %18)
  store %struct.xfs_ifork* %19, %struct.xfs_ifork** %12, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %21 = call i32 @xfs_inode_has_cow_data(%struct.xfs_inode* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %138

24:                                               ; preds = %5
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %26 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %27 = call i32 @xfs_iext_lookup_extent_before(%struct.xfs_inode* %25, %struct.xfs_ifork* %26, i64* %10, %struct.xfs_iext_cursor* %15, %struct.xfs_bmbt_irec* %13)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %138

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %127, %30
  %32 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %13, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %128

39:                                               ; preds = %31
  %40 = bitcast %struct.xfs_bmbt_irec* %14 to i8*
  %41 = bitcast %struct.xfs_bmbt_irec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 32, i1 false)
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %14, i64 %42, i64 %45)
  %47 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %52 = call i32 @xfs_iext_prev(%struct.xfs_ifork* %51, %struct.xfs_iext_cursor* %15)
  br label %122

53:                                               ; preds = %39
  %54 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %55 = call i32 @trace_xfs_reflink_cancel_cow(%struct.xfs_inode* %54, %struct.xfs_bmbt_irec* %14)
  %56 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @isnullstartblock(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %62 = load i32, i32* @XFS_COW_FORK, align 4
  %63 = call i32 @xfs_bmap_del_extent_delay(%struct.xfs_inode* %61, i32 %62, %struct.xfs_iext_cursor* %15, %struct.xfs_bmbt_irec* %13, %struct.xfs_bmbt_irec* %14)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %128

67:                                               ; preds = %60
  br label %121

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %73, %68
  %77 = load %struct.xfs_trans**, %struct.xfs_trans*** %8, align 8
  %78 = load %struct.xfs_trans*, %struct.xfs_trans** %77, align 8
  %79 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NULLFSBLOCK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load %struct.xfs_trans**, %struct.xfs_trans*** %8, align 8
  %86 = load %struct.xfs_trans*, %struct.xfs_trans** %85, align 8
  %87 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @xfs_refcount_free_cow_extent(%struct.xfs_trans* %86, i32 %88, i64 %90)
  %92 = load %struct.xfs_trans**, %struct.xfs_trans*** %8, align 8
  %93 = load %struct.xfs_trans*, %struct.xfs_trans** %92, align 8
  %94 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @xfs_bmap_add_free(%struct.xfs_trans* %93, i32 %95, i64 %97, i32* null)
  %99 = load %struct.xfs_trans**, %struct.xfs_trans*** %8, align 8
  %100 = call i32 @xfs_defer_finish(%struct.xfs_trans** %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %76
  br label %128

104:                                              ; preds = %76
  %105 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %106 = call i32 @xfs_bmap_del_extent_cow(%struct.xfs_inode* %105, %struct.xfs_iext_cursor* %15, %struct.xfs_bmbt_irec* %13, %struct.xfs_bmbt_irec* %14)
  %107 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %108 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %14, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 0, %109
  %111 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  %112 = call i32 @xfs_trans_reserve_quota_nblks(i32* null, %struct.xfs_inode* %107, i64 %110, i32 0, i32 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %128

116:                                              ; preds = %104
  br label %120

117:                                              ; preds = %73
  %118 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %119 = call i32 @xfs_iext_prev(%struct.xfs_ifork* %118, %struct.xfs_iext_cursor* %15)
  br label %120

120:                                              ; preds = %117, %116
  br label %121

121:                                              ; preds = %120, %67
  br label %122

122:                                              ; preds = %121, %50
  %123 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %124 = call i32 @xfs_iext_get_extent(%struct.xfs_ifork* %123, %struct.xfs_iext_cursor* %15, %struct.xfs_bmbt_irec* %13)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %128

127:                                              ; preds = %122
  br label %31

128:                                              ; preds = %126, %115, %103, %66, %31
  %129 = load %struct.xfs_ifork*, %struct.xfs_ifork** %12, align 8
  %130 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %135 = call i32 @xfs_inode_clear_cowblocks_tag(%struct.xfs_inode* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %29, %23
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_inode_has_cow_data(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iext_lookup_extent_before(%struct.xfs_inode*, %struct.xfs_ifork*, i64*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i64, i64) #1

declare dso_local i32 @xfs_iext_prev(%struct.xfs_ifork*, %struct.xfs_iext_cursor*) #1

declare dso_local i32 @trace_xfs_reflink_cancel_cow(%struct.xfs_inode*, %struct.xfs_bmbt_irec*) #1

declare dso_local i64 @isnullstartblock(i32) #1

declare dso_local i32 @xfs_bmap_del_extent_delay(%struct.xfs_inode*, i32, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_refcount_free_cow_extent(%struct.xfs_trans*, i32, i64) #1

declare dso_local i32 @xfs_bmap_add_free(%struct.xfs_trans*, i32, i64, i32*) #1

declare dso_local i32 @xfs_defer_finish(%struct.xfs_trans**) #1

declare dso_local i32 @xfs_bmap_del_extent_cow(%struct.xfs_inode*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_trans_reserve_quota_nblks(i32*, %struct.xfs_inode*, i64, i32, i32) #1

declare dso_local i32 @xfs_iext_get_extent(%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_inode_clear_cowblocks_tag(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
