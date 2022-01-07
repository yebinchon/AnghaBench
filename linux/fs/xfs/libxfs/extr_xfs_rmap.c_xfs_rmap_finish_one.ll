; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_finish_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_finish_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_btree_cur = type { %struct.xfs_mount*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_buf = type { i32 }
%struct.xfs_owner_info = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@XFS_ERRTAG_RMAP_FINISH_ONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_finish_one(%struct.xfs_trans* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.xfs_btree_cur** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.xfs_btree_cur**, align 8
  %20 = alloca %struct.xfs_mount*, align 8
  %21 = alloca %struct.xfs_btree_cur*, align 8
  %22 = alloca %struct.xfs_buf*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.xfs_owner_info, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.xfs_btree_cur** %8, %struct.xfs_btree_cur*** %19, align 8
  %28 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %29 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %28, i32 0, i32 0
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %29, align 8
  store %struct.xfs_mount* %30, %struct.xfs_mount** %20, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %22, align 8
  store i32 0, i32* %23, align 4
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %31, i32 %32)
  store i64 %33, i64* %24, align 8
  %34 = load i64, i64* %24, align 8
  %35 = load i64, i64* @NULLAGNUMBER, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %39, i32 %40)
  store i32 %41, i32* %26, align 4
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %43 = load i64, i64* %24, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %26, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @trace_xfs_rmap_deferred(%struct.xfs_mount* %42, i64 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %53 = load i32, i32* @XFS_ERRTAG_RMAP_FINISH_ONE, align 4
  %54 = call i64 @XFS_TEST_ERROR(i32 0, %struct.xfs_mount* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %9
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %176

59:                                               ; preds = %9
  %60 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %19, align 8
  %61 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %60, align 8
  store %struct.xfs_btree_cur* %61, %struct.xfs_btree_cur** %21, align 8
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %63 = icmp ne %struct.xfs_btree_cur* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %66 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %24, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %74 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %75 = call i32 @xfs_rmap_finish_one_cleanup(%struct.xfs_trans* %73, %struct.xfs_btree_cur* %74, i32 0)
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %21, align 8
  %76 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %19, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %76, align 8
  br label %77

77:                                               ; preds = %72, %64, %59
  %78 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %79 = icmp eq %struct.xfs_btree_cur* %78, null
  br i1 %79, label %80, label %106

80:                                               ; preds = %77
  %81 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %82 = load i64, i64* %24, align 8
  %83 = call i32 @xfs_free_extent_fix_freelist(%struct.xfs_trans* %81, i64 %82, %struct.xfs_buf** %22)
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %23, align 4
  store i32 %87, i32* %10, align 4
  br label %176

88:                                               ; preds = %80
  %89 = load %struct.xfs_buf*, %struct.xfs_buf** %22, align 8
  %90 = icmp ne %struct.xfs_buf* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @EFSCORRUPTED, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %176

94:                                               ; preds = %88
  %95 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %96 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %97 = load %struct.xfs_buf*, %struct.xfs_buf** %22, align 8
  %98 = load i64, i64* %24, align 8
  %99 = call %struct.xfs_btree_cur* @xfs_rmapbt_init_cursor(%struct.xfs_mount* %95, %struct.xfs_trans* %96, %struct.xfs_buf* %97, i64 %98)
  store %struct.xfs_btree_cur* %99, %struct.xfs_btree_cur** %21, align 8
  %100 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %101 = icmp ne %struct.xfs_btree_cur* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %23, align 4
  br label %171

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %108 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %19, align 8
  store %struct.xfs_btree_cur* %107, %struct.xfs_btree_cur** %108, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @xfs_rmap_ino_owner(%struct.xfs_owner_info* %25, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @XFS_EXT_UNWRITTEN, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %27, align 4
  %117 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %118 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %117, i32 0, i32 0
  %119 = load %struct.xfs_mount*, %struct.xfs_mount** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %119, i32 %120)
  store i32 %121, i32* %26, align 4
  %122 = load i32, i32* %12, align 4
  switch i32 %122, label %165 [
    i32 135, label %123
    i32 131, label %123
    i32 130, label %129
    i32 132, label %135
    i32 129, label %135
    i32 128, label %141
    i32 134, label %147
    i32 133, label %156
  ]

123:                                              ; preds = %106, %106
  %124 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %125 = load i32, i32* %26, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %27, align 4
  %128 = call i32 @xfs_rmap_map(%struct.xfs_btree_cur* %124, i32 %125, i32 %126, i32 %127, %struct.xfs_owner_info* %25)
  store i32 %128, i32* %23, align 4
  br label %169

129:                                              ; preds = %106
  %130 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %27, align 4
  %134 = call i32 @xfs_rmap_map_shared(%struct.xfs_btree_cur* %130, i32 %131, i32 %132, i32 %133, %struct.xfs_owner_info* %25)
  store i32 %134, i32* %23, align 4
  br label %169

135:                                              ; preds = %106, %106
  %136 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %137 = load i32, i32* %26, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %27, align 4
  %140 = call i32 @xfs_rmap_unmap(%struct.xfs_btree_cur* %136, i32 %137, i32 %138, i32 %139, %struct.xfs_owner_info* %25)
  store i32 %140, i32* %23, align 4
  br label %169

141:                                              ; preds = %106
  %142 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %27, align 4
  %146 = call i32 @xfs_rmap_unmap_shared(%struct.xfs_btree_cur* %142, i32 %143, i32 %144, i32 %145, %struct.xfs_owner_info* %25)
  store i32 %146, i32* %23, align 4
  br label %169

147:                                              ; preds = %106
  %148 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %27, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @xfs_rmap_convert(%struct.xfs_btree_cur* %148, i32 %149, i32 %150, i32 %154, %struct.xfs_owner_info* %25)
  store i32 %155, i32* %23, align 4
  br label %169

156:                                              ; preds = %106
  %157 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %27, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @xfs_rmap_convert_shared(%struct.xfs_btree_cur* %157, i32 %158, i32 %159, i32 %163, %struct.xfs_owner_info* %25)
  store i32 %164, i32* %23, align 4
  br label %169

165:                                              ; preds = %106
  %166 = call i32 @ASSERT(i32 0)
  %167 = load i32, i32* @EFSCORRUPTED, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %23, align 4
  br label %169

169:                                              ; preds = %165, %156, %147, %141, %135, %129, %123
  %170 = load i32, i32* %23, align 4
  store i32 %170, i32* %10, align 4
  br label %176

171:                                              ; preds = %102
  %172 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %173 = load %struct.xfs_buf*, %struct.xfs_buf** %22, align 8
  %174 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %172, %struct.xfs_buf* %173)
  %175 = load i32, i32* %23, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %171, %169, %91, %86, %56
  %177 = load i32, i32* %10, align 4
  ret i32 %177
}

declare dso_local i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @trace_xfs_rmap_deferred(%struct.xfs_mount*, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @XFS_TEST_ERROR(i32, %struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_rmap_finish_one_cleanup(%struct.xfs_trans*, %struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_free_extent_fix_freelist(%struct.xfs_trans*, i64, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_btree_cur* @xfs_rmapbt_init_cursor(%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, i64) #1

declare dso_local i32 @xfs_rmap_ino_owner(%struct.xfs_owner_info*, i32, i32, i32) #1

declare dso_local i32 @xfs_rmap_map(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_rmap_map_shared(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_rmap_unmap(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_rmap_unmap_shared(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_rmap_convert(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_rmap_convert_shared(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
