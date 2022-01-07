; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_item.c_xfs_bui_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_item.c_xfs_bui_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.xfs_bui_log_item = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.xfs_map_extent* }
%struct.xfs_map_extent = type { i32, i64, i32, i32, i32 }
%struct.xfs_bud_log_item = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@XFS_BUI_RECOVERED = common dso_local global i32 0, align 4
@XFS_BUI_MAX_FAST_EXTENTS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XFS_BMAP_EXTENT_TYPE_MASK = common dso_local global i32 0, align 4
@XFS_BMAP_EXTENT_FLAGS = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_IRECOVERY = common dso_local global i32 0, align 4
@XFS_BMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i32 0, align 4
@XFS_BMAP_EXTENT_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bui_recover(%struct.xfs_trans* %0, %struct.xfs_bui_log_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_bui_log_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_map_extent*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_bud_log_item*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfs_trans*, align 8
  %18 = alloca %struct.xfs_inode*, align 8
  %19 = alloca %struct.xfs_bmbt_irec, align 8
  %20 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_bui_log_item* %1, %struct.xfs_bui_log_item** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.xfs_inode* null, %struct.xfs_inode** %18, align 8
  %21 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %21, i32 0, i32 0
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %20, align 8
  %24 = load i32, i32* @XFS_BUI_RECOVERED, align 4
  %25 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XFS_BUI_MAX_FAST_EXTENTS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load i32, i32* @XFS_BUI_RECOVERED, align 4
  %40 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %44 = call i32 @xfs_bui_release(%struct.xfs_bui_log_item* %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %284

47:                                               ; preds = %2
  %48 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %50, align 8
  %52 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %51, i64 0
  store %struct.xfs_map_extent* %52, %struct.xfs_map_extent** %8, align 8
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %54 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %55 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %56 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %54, i32 %57)
  %59 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %53, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %63 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %64 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @XFS_INO_TO_FSB(%struct.xfs_mount* %62, i32 %65)
  %67 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %61, i32 %66)
  %68 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %60, i32 %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %70 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @XFS_BMAP_EXTENT_TYPE_MASK, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %75 [
    i32 129, label %74
    i32 128, label %74
  ]

74:                                               ; preds = %47, %47
  store i32 1, i32* %12, align 4
  br label %76

75:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %121, label %82

82:                                               ; preds = %79
  %83 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %84 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %10, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %93 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %91, %95
  br i1 %96, label %121, label %97

97:                                               ; preds = %90
  %98 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %99 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %102 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %100, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %97
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %109 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %107, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %106
  %114 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %115 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @XFS_BMAP_EXTENT_FLAGS, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %113, %106, %97, %90, %87, %82, %79, %76
  %122 = load i32, i32* @XFS_BUI_RECOVERED, align 4
  %123 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %124 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %123, i32 0, i32 0
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  %126 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %127 = call i32 @xfs_bui_release(%struct.xfs_bui_log_item* %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %284

130:                                              ; preds = %113
  %131 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %132 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %133 = call %struct.TYPE_8__* @M_RES(%struct.xfs_mount* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %136 = load i32, i32* @XFS_DATA_FORK, align 4
  %137 = call i32 @XFS_EXTENTADD_SPACE_RES(%struct.xfs_mount* %135, i32 %136)
  %138 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %131, i32* %134, i32 %137, i32 0, i32 0, %struct.xfs_trans** %17)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %284

143:                                              ; preds = %130
  %144 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %145 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %146 = call i32 @xfs_defer_move(%struct.xfs_trans* %144, %struct.xfs_trans* %145)
  %147 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %148 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %149 = call %struct.xfs_bud_log_item* @xfs_trans_get_bud(%struct.xfs_trans* %147, %struct.xfs_bui_log_item* %148)
  store %struct.xfs_bud_log_item* %149, %struct.xfs_bud_log_item** %13, align 8
  %150 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  %151 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %152 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %153 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %156 = call i32 @xfs_iget(%struct.xfs_mount* %150, %struct.xfs_trans* %151, i32 %154, i32 0, i32 %155, %struct.xfs_inode** %18)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %268

160:                                              ; preds = %143
  %161 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %162 = call %struct.TYPE_7__* @VFS_I(%struct.xfs_inode* %161)
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %168 = load i32, i32* @XFS_IRECOVERY, align 4
  %169 = call i32 @xfs_iflags_set(%struct.xfs_inode* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %160
  %171 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %172 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @XFS_BMAP_EXTENT_UNWRITTEN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* @XFS_EXT_UNWRITTEN, align 4
  br label %181

179:                                              ; preds = %170
  %180 = load i32, i32* @XFS_EXT_NORM, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  store i32 %182, i32* %16, align 4
  %183 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %184 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @XFS_BMAP_EXTENT_ATTR_FORK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* @XFS_ATTR_FORK, align 4
  br label %193

191:                                              ; preds = %181
  %192 = load i32, i32* @XFS_DATA_FORK, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  store i32 %194, i32* %15, align 4
  %195 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %196 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @XFS_BMAP_EXTENT_TYPE_MASK, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  switch i32 %200, label %203 [
    i32 129, label %201
    i32 128, label %201
  ]

201:                                              ; preds = %193, %193
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %14, align 4
  br label %206

203:                                              ; preds = %193
  %204 = load i32, i32* @EFSCORRUPTED, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %268

206:                                              ; preds = %201
  %207 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %208 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %209 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %207, %struct.xfs_inode* %208, i32 0)
  %210 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %211 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %11, align 8
  %213 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %214 = load %struct.xfs_bud_log_item*, %struct.xfs_bud_log_item** %13, align 8
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %219 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %222 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @xfs_trans_log_finish_bmap_update(%struct.xfs_trans* %213, %struct.xfs_bud_log_item* %214, i32 %215, %struct.xfs_inode* %216, i32 %217, i32 %220, i32 %223, i64* %11, i32 %224)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %206
  br label %268

229:                                              ; preds = %206
  %230 = load i64, i64* %11, align 8
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = icmp eq i32 %233, 128
  %235 = zext i1 %234 to i32
  %236 = call i32 @ASSERT(i32 %235)
  %237 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %238 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 3
  store i32 %239, i32* %240, align 8
  %241 = load i64, i64* %11, align 8
  %242 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 2
  store i64 %241, i64* %242, align 8
  %243 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %8, align 8
  %244 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 1
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %16, align 4
  %248 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 0
  store i32 %247, i32* %248, align 8
  %249 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %250 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %251 = call i32 @xfs_bmap_unmap_extent(%struct.xfs_trans* %249, %struct.xfs_inode* %250, %struct.xfs_bmbt_irec* %19)
  br label %252

252:                                              ; preds = %232, %229
  %253 = load i32, i32* @XFS_BUI_RECOVERED, align 4
  %254 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %5, align 8
  %255 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %254, i32 0, i32 0
  %256 = call i32 @set_bit(i32 %253, i32* %255)
  %257 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %258 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %259 = call i32 @xfs_defer_move(%struct.xfs_trans* %257, %struct.xfs_trans* %258)
  %260 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %261 = call i32 @xfs_trans_commit(%struct.xfs_trans* %260)
  store i32 %261, i32* %6, align 4
  %262 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %263 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %264 = call i32 @xfs_iunlock(%struct.xfs_inode* %262, i32 %263)
  %265 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %266 = call i32 @xfs_irele(%struct.xfs_inode* %265)
  %267 = load i32, i32* %6, align 4
  store i32 %267, i32* %3, align 4
  br label %284

268:                                              ; preds = %228, %203, %159
  %269 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %270 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %271 = call i32 @xfs_defer_move(%struct.xfs_trans* %269, %struct.xfs_trans* %270)
  %272 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %273 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %272)
  %274 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %275 = icmp ne %struct.xfs_inode* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %268
  %277 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %278 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %279 = call i32 @xfs_iunlock(%struct.xfs_inode* %277, i32 %278)
  %280 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %281 = call i32 @xfs_irele(%struct.xfs_inode* %280)
  br label %282

282:                                              ; preds = %276, %268
  %283 = load i32, i32* %6, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %282, %252, %141, %121, %38
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xfs_bui_release(%struct.xfs_bui_log_item*) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_INO_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_8__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_EXTENTADD_SPACE_RES(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_defer_move(%struct.xfs_trans*, %struct.xfs_trans*) #1

declare dso_local %struct.xfs_bud_log_item* @xfs_trans_get_bud(%struct.xfs_trans*, %struct.xfs_bui_log_item*) #1

declare dso_local i32 @xfs_iget(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i32, %struct.xfs_inode**) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iflags_set(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_finish_bmap_update(%struct.xfs_trans*, %struct.xfs_bud_log_item*, i32, %struct.xfs_inode*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @xfs_bmap_unmap_extent(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_irele(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
