; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_rui_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_rui_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.xfs_rui_log_item = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.xfs_map_extent* }
%struct.xfs_map_extent = type { i32, i64, i32, i32, i32 }
%struct.xfs_rud_log_item = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_btree_cur = type { i32 }
%struct.TYPE_6__ = type { i32 }

@XFS_RUI_RECOVERED = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_TYPE_MASK = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_FLAGS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_MAP = common dso_local global i32 0, align 4
@XFS_RMAP_MAP_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_UNMAP = common dso_local global i32 0, align 4
@XFS_RMAP_UNMAP_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_CONVERT = common dso_local global i32 0, align 4
@XFS_RMAP_CONVERT_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_ALLOC = common dso_local global i32 0, align 4
@XFS_RMAP_FREE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rui_recover(%struct.xfs_mount* %0, %struct.xfs_rui_log_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_rui_log_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_map_extent*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_rud_log_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfs_trans*, align 8
  %16 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_rui_log_item* %1, %struct.xfs_rui_log_item** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %16, align 8
  %17 = load i32, i32* @XFS_RUI_RECOVERED, align 4
  %18 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %99, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %102

32:                                               ; preds = %25
  %33 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %36, i64 %38
  store %struct.xfs_map_extent* %39, %struct.xfs_map_extent** %8, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %42 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %43 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %41, i32 %44)
  %46 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %40, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %48 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @XFS_RMAP_EXTENT_TYPE_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %53 [
    i32 131, label %52
    i32 130, label %52
    i32 129, label %52
    i32 128, label %52
    i32 134, label %52
    i32 133, label %52
    i32 135, label %52
    i32 132, label %52
  ]

52:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32
  store i32 1, i32* %10, align 4
  br label %54

53:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %57
  %61 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %62 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %68 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %66, %70
  br i1 %71, label %89, label %72

72:                                               ; preds = %65
  %73 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %74 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %75, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %72
  %82 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %83 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XFS_RMAP_EXTENT_FLAGS, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81, %72, %65, %60, %57, %54
  %90 = load i32, i32* @XFS_RUI_RECOVERED, align 4
  %91 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %92 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %91, i32 0, i32 0
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  %94 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %95 = call i32 @xfs_rui_release(%struct.xfs_rui_log_item* %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %229

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %25

102:                                              ; preds = %25
  %103 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %104 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %105 = call %struct.TYPE_6__* @M_RES(%struct.xfs_mount* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %108 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %111 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %103, i32* %106, i32 %109, i32 0, i32 %110, %struct.xfs_trans** %15)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %229

116:                                              ; preds = %102
  %117 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %118 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %119 = call %struct.xfs_rud_log_item* @xfs_trans_get_rud(%struct.xfs_trans* %117, %struct.xfs_rui_log_item* %118)
  store %struct.xfs_rud_log_item* %119, %struct.xfs_rud_log_item** %11, align 8
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %206, %116
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %123 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %209

127:                                              ; preds = %120
  %128 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %129 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %131, i64 %133
  store %struct.xfs_map_extent* %134, %struct.xfs_map_extent** %8, align 8
  %135 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %136 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @XFS_RMAP_EXTENT_UNWRITTEN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = load i32, i32* @XFS_EXT_UNWRITTEN, align 4
  br label %145

143:                                              ; preds = %127
  %144 = load i32, i32* @XFS_EXT_NORM, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %14, align 4
  %147 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %148 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @XFS_RMAP_EXTENT_ATTR_FORK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @XFS_ATTR_FORK, align 4
  br label %157

155:                                              ; preds = %145
  %156 = load i32, i32* @XFS_DATA_FORK, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  store i32 %158, i32* %13, align 4
  %159 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %160 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @XFS_RMAP_EXTENT_TYPE_MASK, align 4
  %163 = and i32 %161, %162
  switch i32 %163, label %180 [
    i32 131, label %164
    i32 130, label %166
    i32 129, label %168
    i32 128, label %170
    i32 134, label %172
    i32 133, label %174
    i32 135, label %176
    i32 132, label %178
  ]

164:                                              ; preds = %157
  %165 = load i32, i32* @XFS_RMAP_MAP, align 4
  store i32 %165, i32* %12, align 4
  br label %183

166:                                              ; preds = %157
  %167 = load i32, i32* @XFS_RMAP_MAP_SHARED, align 4
  store i32 %167, i32* %12, align 4
  br label %183

168:                                              ; preds = %157
  %169 = load i32, i32* @XFS_RMAP_UNMAP, align 4
  store i32 %169, i32* %12, align 4
  br label %183

170:                                              ; preds = %157
  %171 = load i32, i32* @XFS_RMAP_UNMAP_SHARED, align 4
  store i32 %171, i32* %12, align 4
  br label %183

172:                                              ; preds = %157
  %173 = load i32, i32* @XFS_RMAP_CONVERT, align 4
  store i32 %173, i32* %12, align 4
  br label %183

174:                                              ; preds = %157
  %175 = load i32, i32* @XFS_RMAP_CONVERT_SHARED, align 4
  store i32 %175, i32* %12, align 4
  br label %183

176:                                              ; preds = %157
  %177 = load i32, i32* @XFS_RMAP_ALLOC, align 4
  store i32 %177, i32* %12, align 4
  br label %183

178:                                              ; preds = %157
  %179 = load i32, i32* @XFS_RMAP_FREE, align 4
  store i32 %179, i32* %12, align 4
  br label %183

180:                                              ; preds = %157
  %181 = load i32, i32* @EFSCORRUPTED, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  br label %221

183:                                              ; preds = %178, %176, %174, %172, %170, %168, %166, %164
  %184 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %185 = load %struct.xfs_rud_log_item*, %struct.xfs_rud_log_item** %11, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %188 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %192 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %195 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %198 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @xfs_trans_log_finish_rmap_update(%struct.xfs_trans* %184, %struct.xfs_rud_log_item* %185, i32 %186, i32 %189, i32 %190, i32 %193, i32 %196, i64 %199, i32 %200, %struct.xfs_btree_cur** %16)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %183
  br label %221

205:                                              ; preds = %183
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %120

209:                                              ; preds = %120
  %210 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %211 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %16, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @xfs_rmap_finish_one_cleanup(%struct.xfs_trans* %210, %struct.xfs_btree_cur* %211, i32 %212)
  %214 = load i32, i32* @XFS_RUI_RECOVERED, align 4
  %215 = load %struct.xfs_rui_log_item*, %struct.xfs_rui_log_item** %5, align 8
  %216 = getelementptr inbounds %struct.xfs_rui_log_item, %struct.xfs_rui_log_item* %215, i32 0, i32 0
  %217 = call i32 @set_bit(i32 %214, i32* %216)
  %218 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %219 = call i32 @xfs_trans_commit(%struct.xfs_trans* %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %3, align 4
  br label %229

221:                                              ; preds = %204, %180
  %222 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %223 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %16, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @xfs_rmap_finish_one_cleanup(%struct.xfs_trans* %222, %struct.xfs_btree_cur* %223, i32 %224)
  %226 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %227 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %226)
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %221, %209, %114, %89
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xfs_rui_release(%struct.xfs_rui_log_item*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_6__* @M_RES(%struct.xfs_mount*) #1

declare dso_local %struct.xfs_rud_log_item* @xfs_trans_get_rud(%struct.xfs_trans*, %struct.xfs_rui_log_item*) #1

declare dso_local i32 @xfs_trans_log_finish_rmap_update(%struct.xfs_trans*, %struct.xfs_rud_log_item*, i32, i32, i32, i32, i32, i64, i32, %struct.xfs_btree_cur**) #1

declare dso_local i32 @xfs_rmap_finish_one_cleanup(%struct.xfs_trans*, %struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
