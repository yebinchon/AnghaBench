; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_do_grow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_do_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_alloc_parms = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i32 }

@__const.do_grow.ap = private unnamed_addr constant %struct.gfs2_alloc_parms { i32 1 }, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_RG_BIT = common dso_local global i64 0, align 8
@RES_JDATA = common dso_local global i32 0, align 4
@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @do_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_grow(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_alloc_parms, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %7, align 8
  %16 = bitcast %struct.gfs2_alloc_parms* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.gfs2_alloc_parms* @__const.do_grow.ap to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %23 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %22)
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %27 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %26, %struct.gfs2_alloc_parms* %8)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %130

32:                                               ; preds = %25
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %34 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %33, %struct.gfs2_alloc_parms* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %125

38:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %20, %2
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %41 = load i64, i64* @RES_DINODE, align 8
  %42 = load i64, i64* @RES_STATFS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @RES_RG_BIT, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %50 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @RES_JDATA, align 4
  br label %55

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %45, %57
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %68

66:                                               ; preds = %55
  %67 = load i64, i64* @RES_QUOTA, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i64 [ 0, %65 ], [ %67, %66 ]
  %70 = add nsw i64 %58, %69
  %71 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %40, i64 %70, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %119

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %80 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %79, i32* null)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %116

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %75
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %87 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %86, %struct.buffer_head** %9)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %116

91:                                               ; preds = %85
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @truncate_setsize(%struct.inode* %92, i64 %93)
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %96 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %95, i32 0, i32 1
  %97 = call i32 @current_time(%struct.TYPE_4__* %96)
  %98 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %99 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %102 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %97, i32* %103, align 4
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %105 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = call i32 @gfs2_trans_add_meta(i32 %106, %struct.buffer_head* %107)
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %109, i32 %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  br label %116

116:                                              ; preds = %91, %90, %83
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %118 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %117)
  br label %119

119:                                              ; preds = %116, %74
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %124 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %123)
  br label %125

125:                                              ; preds = %122, %37
  %126 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %127 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %30
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_max_stuffed_size(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @current_time(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
