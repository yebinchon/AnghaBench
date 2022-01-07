; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_finish_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_finish_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_btree_cur = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.xfs_buf = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@XFS_ERRTAG_REFCOUNT_FINISH_ONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_FREEING = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_REFCOUNT_ADJUST_INCREASE = common dso_local global i32 0, align 4
@XFS_REFCOUNT_ADJUST_DECREASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_refcount_finish_one(%struct.xfs_trans* %0, i32 %1, i64 %2, i64 %3, i64* %4, i64* %5, %struct.xfs_btree_cur** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.xfs_btree_cur**, align 8
  %16 = alloca %struct.xfs_mount*, align 8
  %17 = alloca %struct.xfs_btree_cur*, align 8
  %18 = alloca %struct.xfs_buf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.xfs_btree_cur** %6, %struct.xfs_btree_cur*** %15, align 8
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %26 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %25, i32 0, i32 0
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %26, align 8
  store %struct.xfs_mount* %27, %struct.xfs_mount** %16, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %18, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %28, i64 %29)
  store i64 %30, i64* %20, align 8
  %31 = load i64, i64* %20, align 8
  %32 = load i64, i64* @NULLAGNUMBER, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %36, i64 %37)
  store i32 %38, i32* %21, align 4
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %40, i64 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %44, i64 %45)
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @trace_xfs_refcount_deferred(%struct.xfs_mount* %39, i64 %42, i32 %43, i32 %46, i64 %47)
  %49 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %50 = load i32, i32* @XFS_ERRTAG_REFCOUNT_FINISH_ONE, align 4
  %51 = call i64 @XFS_TEST_ERROR(i32 0, %struct.xfs_mount* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %7
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %211

56:                                               ; preds = %7
  %57 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %15, align 8
  %58 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %57, align 8
  store %struct.xfs_btree_cur* %58, %struct.xfs_btree_cur** %17, align 8
  %59 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %60 = icmp ne %struct.xfs_btree_cur* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %63 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %20, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %71 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %23, align 8
  %77 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %78 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %24, align 4
  %84 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %85 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %86 = call i32 @xfs_refcount_finish_one_cleanup(%struct.xfs_trans* %84, %struct.xfs_btree_cur* %85, i32 0)
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %17, align 8
  %87 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %15, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %87, align 8
  br label %88

88:                                               ; preds = %69, %61, %56
  %89 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %90 = icmp eq %struct.xfs_btree_cur* %89, null
  br i1 %90, label %91, label %135

91:                                               ; preds = %88
  %92 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %93 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %92, i32 0, i32 0
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %93, align 8
  %95 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load i32, i32* @XFS_ALLOC_FLAG_FREEING, align 4
  %98 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %94, %struct.xfs_trans* %95, i64 %96, i32 %97, %struct.xfs_buf** %18)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %8, align 4
  br label %211

103:                                              ; preds = %91
  %104 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %105 = icmp ne %struct.xfs_buf* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @EFSCORRUPTED, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %211

109:                                              ; preds = %103
  %110 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %111 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %112 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %113 = load i64, i64* %20, align 8
  %114 = call %struct.xfs_btree_cur* @xfs_refcountbt_init_cursor(%struct.xfs_mount* %110, %struct.xfs_trans* %111, %struct.xfs_buf* %112, i64 %113)
  store %struct.xfs_btree_cur* %114, %struct.xfs_btree_cur** %17, align 8
  %115 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %116 = icmp ne %struct.xfs_btree_cur* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %19, align 4
  br label %206

120:                                              ; preds = %109
  %121 = load i64, i64* %23, align 8
  %122 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %123 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 %121, i64* %127, align 8
  %128 = load i32, i32* %24, align 4
  %129 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %130 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 %128, i32* %134, align 8
  br label %135

135:                                              ; preds = %120, %88
  %136 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %137 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %15, align 8
  store %struct.xfs_btree_cur* %136, %struct.xfs_btree_cur** %137, align 8
  %138 = load i32, i32* %10, align 4
  switch i32 %138, label %183 [
    i32 128, label %139
    i32 130, label %151
    i32 131, label %163
    i32 129, label %173
  ]

139:                                              ; preds = %135
  %140 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %141 = load i32, i32* %21, align 4
  %142 = load i64, i64* %12, align 8
  %143 = load i64*, i64** %14, align 8
  %144 = load i32, i32* @XFS_REFCOUNT_ADJUST_INCREASE, align 4
  %145 = call i32 @xfs_refcount_adjust(%struct.xfs_btree_cur* %140, i32 %141, i64 %142, i32* %22, i64* %143, i32 %144, i32* null)
  store i32 %145, i32* %19, align 4
  %146 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %147 = load i64, i64* %20, align 8
  %148 = load i32, i32* %22, align 4
  %149 = call i64 @XFS_AGB_TO_FSB(%struct.xfs_mount* %146, i64 %147, i32 %148)
  %150 = load i64*, i64** %13, align 8
  store i64 %149, i64* %150, align 8
  br label %187

151:                                              ; preds = %135
  %152 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %153 = load i32, i32* %21, align 4
  %154 = load i64, i64* %12, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = load i32, i32* @XFS_REFCOUNT_ADJUST_DECREASE, align 4
  %157 = call i32 @xfs_refcount_adjust(%struct.xfs_btree_cur* %152, i32 %153, i64 %154, i32* %22, i64* %155, i32 %156, i32* null)
  store i32 %157, i32* %19, align 4
  %158 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load i32, i32* %22, align 4
  %161 = call i64 @XFS_AGB_TO_FSB(%struct.xfs_mount* %158, i64 %159, i32 %160)
  %162 = load i64*, i64** %13, align 8
  store i64 %161, i64* %162, align 8
  br label %187

163:                                              ; preds = %135
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %12, align 8
  %166 = add nsw i64 %164, %165
  %167 = load i64*, i64** %13, align 8
  store i64 %166, i64* %167, align 8
  %168 = load i64*, i64** %14, align 8
  store i64 0, i64* %168, align 8
  %169 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %170 = load i32, i32* %21, align 4
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @__xfs_refcount_cow_alloc(%struct.xfs_btree_cur* %169, i32 %170, i64 %171)
  store i32 %172, i32* %19, align 4
  br label %187

173:                                              ; preds = %135
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %12, align 8
  %176 = add nsw i64 %174, %175
  %177 = load i64*, i64** %13, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64*, i64** %14, align 8
  store i64 0, i64* %178, align 8
  %179 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %17, align 8
  %180 = load i32, i32* %21, align 4
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @__xfs_refcount_cow_free(%struct.xfs_btree_cur* %179, i32 %180, i64 %181)
  store i32 %182, i32* %19, align 4
  br label %187

183:                                              ; preds = %135
  %184 = call i32 @ASSERT(i32 0)
  %185 = load i32, i32* @EFSCORRUPTED, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %19, align 4
  br label %187

187:                                              ; preds = %183, %173, %163, %151, %139
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %204, label %190

190:                                              ; preds = %187
  %191 = load i64*, i64** %14, align 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %196 = load i64, i64* %20, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %21, align 4
  %199 = load i64, i64* %12, align 8
  %200 = load i32, i32* %22, align 4
  %201 = load i64*, i64** %14, align 8
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @trace_xfs_refcount_finish_one_leftover(%struct.xfs_mount* %195, i64 %196, i32 %197, i32 %198, i64 %199, i32 %200, i64 %202)
  br label %204

204:                                              ; preds = %194, %190, %187
  %205 = load i32, i32* %19, align 4
  store i32 %205, i32* %8, align 4
  br label %211

206:                                              ; preds = %117
  %207 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %208 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %209 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %207, %struct.xfs_buf* %208)
  %210 = load i32, i32* %19, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %206, %204, %106, %101, %53
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i64) #1

declare dso_local i32 @trace_xfs_refcount_deferred(%struct.xfs_mount*, i64, i32, i32, i64) #1

declare dso_local i64 @XFS_TEST_ERROR(i32, %struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_refcount_finish_one_cleanup(%struct.xfs_trans*, %struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount*, %struct.xfs_trans*, i64, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_btree_cur* @xfs_refcountbt_init_cursor(%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, i64) #1

declare dso_local i32 @xfs_refcount_adjust(%struct.xfs_btree_cur*, i32, i64, i32*, i64*, i32, i32*) #1

declare dso_local i64 @XFS_AGB_TO_FSB(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @__xfs_refcount_cow_alloc(%struct.xfs_btree_cur*, i32, i64) #1

declare dso_local i32 @__xfs_refcount_cow_free(%struct.xfs_btree_cur*, i32, i64) #1

declare dso_local i32 @trace_xfs_refcount_finish_one_leftover(%struct.xfs_mount*, i64, i32, i32, i64, i32, i64) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
