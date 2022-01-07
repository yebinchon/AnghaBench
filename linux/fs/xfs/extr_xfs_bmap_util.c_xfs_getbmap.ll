; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_getbmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_getbmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_4__, i32, %struct.xfs_mount* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.xfs_mount = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.getbmapx = type { i32, i32, i32, i64 }
%struct.kgetbmap = type { i32 }
%struct.xfs_ifork = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }
%struct.xfs_iext_cursor = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BMV_IF_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BMV_IF_COWFORK = common dso_local global i32 0, align 4
@BMV_IF_ATTRFORK = common dso_local global i32 0, align 4
@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@BMV_IF_DELALLOC = common dso_local global i32 0, align 4
@XFS_DIFLAG_PREALLOC = common dso_local global i32 0, align 4
@XFS_DIFLAG_APPEND = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@BMV_OF_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_getbmap(%struct.xfs_inode* %0, %struct.getbmapx* %1, %struct.kgetbmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.getbmapx*, align 8
  %7 = alloca %struct.kgetbmap*, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.xfs_ifork*, align 8
  %18 = alloca %struct.xfs_bmbt_irec, align 8
  %19 = alloca %struct.xfs_bmbt_irec, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.xfs_iext_cursor, align 4
  %22 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.getbmapx* %1, %struct.getbmapx** %6, align 8
  store %struct.kgetbmap* %2, %struct.kgetbmap** %7, align 8
  %23 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %23, i32 0, i32 2
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %24, align 8
  store %struct.xfs_mount* %25, %struct.xfs_mount** %8, align 8
  %26 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %27 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %30 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BMV_IF_VALID, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %378

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BMV_IF_COWFORK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %378

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @BMV_IF_ATTRFORK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @BMV_IF_COWFORK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %378

60:                                               ; preds = %52, %47
  %61 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %62 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %378

68:                                               ; preds = %60
  %69 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %70 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %72 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %378

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @BMV_IF_ATTRFORK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 133, i32* %10, align 4
  br label %90

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @BMV_IF_COWFORK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 132, i32* %10, align 4
  br label %89

88:                                               ; preds = %82
  store i32 131, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %81
  %91 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %91, i32 %92)
  store %struct.xfs_ifork* %93, %struct.xfs_ifork** %17, align 8
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %95 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %96 = call i32 @xfs_ilock(%struct.xfs_inode* %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  switch i32 %97, label %182 [
    i32 133, label %98
    i32 132, label %106
    i32 131, label %128
  ]

98:                                               ; preds = %90
  %99 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %100 = call i32 @XFS_IFORK_Q(%struct.xfs_inode* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %373

103:                                              ; preds = %98
  store i64 4294967296, i64* %14, align 8
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %105 = call i32 @xfs_ilock_attr_map_shared(%struct.xfs_inode* %104)
  store i32 %105, i32* %11, align 4
  br label %182

106:                                              ; preds = %90
  %107 = load %struct.xfs_ifork*, %struct.xfs_ifork** %17, align 8
  %108 = icmp ne %struct.xfs_ifork* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %373

110:                                              ; preds = %106
  %111 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %112 = call i32 @xfs_get_cowextsz_hint(%struct.xfs_inode* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %116 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %14, align 8
  br label %123

120:                                              ; preds = %110
  %121 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %122 = call i64 @XFS_ISIZE(%struct.xfs_inode* %121)
  store i64 %122, i64* %14, align 8
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  store i32 %124, i32* %11, align 4
  %125 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @xfs_ilock(%struct.xfs_inode* %125, i32 %126)
  br label %182

128:                                              ; preds = %90
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @BMV_IF_DELALLOC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %156, label %133

133:                                              ; preds = %128
  %134 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %135 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %140 = call i64 @XFS_ISIZE(%struct.xfs_inode* %139)
  %141 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %142 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %140, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %138, %133
  %147 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %148 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %147)
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @filemap_write_and_wait(i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %373

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %138, %128
  %157 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %158 = call i32 @xfs_get_extsz_hint(%struct.xfs_inode* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %162 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @XFS_DIFLAG_PREALLOC, align 4
  %166 = load i32, i32* @XFS_DIFLAG_APPEND, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %160, %156
  %171 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %172 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %14, align 8
  br label %179

176:                                              ; preds = %160
  %177 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %178 = call i64 @XFS_ISIZE(%struct.xfs_inode* %177)
  store i64 %178, i64* %14, align 8
  br label %179

179:                                              ; preds = %176, %170
  %180 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %181 = call i32 @xfs_ilock_data_map_shared(%struct.xfs_inode* %180)
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %90, %179, %123, %103
  %183 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @XFS_IFORK_FORMAT(%struct.xfs_inode* %183, i32 %184)
  switch i32 %185, label %188 [
    i32 129, label %186
    i32 130, label %186
    i32 128, label %187
  ]

186:                                              ; preds = %182, %182
  br label %191

187:                                              ; preds = %182
  br label %369

188:                                              ; preds = %182
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %12, align 4
  br label %369

191:                                              ; preds = %186
  %192 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %193 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %210

196:                                              ; preds = %191
  %197 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %198 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %199 = load i64, i64* %14, align 8
  %200 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %198, i64 %199)
  %201 = call i64 @XFS_FSB_TO_BB(%struct.xfs_mount* %197, i64 %200)
  store i64 %201, i64* %14, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %204 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = call i32 @max(i64 0, i64 %206)
  %208 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %209 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %196, %191
  %211 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %212 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %215 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %213, %217
  store i64 %218, i64* %13, align 8
  %219 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %220 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %221 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @XFS_BB_TO_FSBT(%struct.xfs_mount* %219, i64 %222)
  store i64 %223, i64* %15, align 8
  store i64 %223, i64* %16, align 8
  %224 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %225 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %226 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %224, i64 %228)
  store i64 %229, i64* %20, align 8
  %230 = load %struct.xfs_ifork*, %struct.xfs_ifork** %17, align 8
  %231 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @XFS_IFEXTENTS, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %210
  %237 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @xfs_iread_extents(i32* null, %struct.xfs_inode* %237, i32 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %369

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %210
  %245 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %246 = load %struct.xfs_ifork*, %struct.xfs_ifork** %17, align 8
  %247 = load i64, i64* %15, align 8
  %248 = call i32 @xfs_iext_lookup_extent(%struct.xfs_inode* %245, %struct.xfs_ifork* %246, i64 %247, %struct.xfs_iext_cursor* %21, %struct.xfs_bmbt_irec* %18)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %267, label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @BMV_IF_DELALLOC, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %250
  %256 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %257 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %258 = load %struct.kgetbmap*, %struct.kgetbmap** %7, align 8
  %259 = load i64, i64* %13, align 8
  %260 = load i64, i64* %15, align 8
  %261 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %262 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %263 = call i64 @XFS_ISIZE(%struct.xfs_inode* %262)
  %264 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %261, i64 %263)
  %265 = call i32 @xfs_getbmap_report_hole(%struct.xfs_inode* %256, %struct.getbmapx* %257, %struct.kgetbmap* %258, i64 %259, i64 %260, i64 %264)
  br label %266

266:                                              ; preds = %255, %250
  br label %369

267:                                              ; preds = %244
  br label %268

268:                                              ; preds = %367, %267
  %269 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %270 = call i64 @xfs_getbmap_full(%struct.getbmapx* %269)
  %271 = icmp ne i64 %270, 0
  %272 = xor i1 %271, true
  br i1 %272, label %273, label %368

273:                                              ; preds = %268
  %274 = load i64, i64* %16, align 8
  %275 = load i64, i64* %20, align 8
  %276 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %18, i64 %274, i64 %275)
  %277 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %15, align 8
  %280 = icmp sgt i64 %278, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %273
  %282 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %283 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %284 = load %struct.kgetbmap*, %struct.kgetbmap** %7, align 8
  %285 = load i64, i64* %13, align 8
  %286 = load i64, i64* %15, align 8
  %287 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @xfs_getbmap_report_hole(%struct.xfs_inode* %282, %struct.getbmapx* %283, %struct.kgetbmap* %284, i64 %285, i64 %286, i64 %288)
  %290 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %291 = call i64 @xfs_getbmap_full(%struct.getbmapx* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %281
  br label %368

294:                                              ; preds = %281
  br label %295

295:                                              ; preds = %294, %273
  %296 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %18, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %297, %299
  store i64 %300, i64* %15, align 8
  %301 = bitcast %struct.xfs_bmbt_irec* %19 to i8*
  %302 = bitcast %struct.xfs_bmbt_irec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 %302, i64 16, i1 false)
  br label %303

303:                                              ; preds = %317, %295
  %304 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %305 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %306 = load %struct.kgetbmap*, %struct.kgetbmap** %7, align 8
  %307 = load i64, i64* %13, align 8
  %308 = call i32 @xfs_getbmap_report_one(%struct.xfs_inode* %304, %struct.getbmapx* %305, %struct.kgetbmap* %306, i64 %307, %struct.xfs_bmbt_irec* %19)
  store i32 %308, i32* %12, align 4
  %309 = load i32, i32* %12, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %303
  %312 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %313 = call i64 @xfs_getbmap_full(%struct.getbmapx* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %303
  br label %369

316:                                              ; preds = %311
  br label %317

317:                                              ; preds = %316
  %318 = load i64, i64* %15, align 8
  %319 = call i64 @xfs_getbmap_next_rec(%struct.xfs_bmbt_irec* %19, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %303, label %321

321:                                              ; preds = %317
  %322 = load %struct.xfs_ifork*, %struct.xfs_ifork** %17, align 8
  %323 = call i32 @xfs_iext_next_extent(%struct.xfs_ifork* %322, %struct.xfs_iext_cursor* %21, %struct.xfs_bmbt_irec* %18)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %360, label %325

325:                                              ; preds = %321
  %326 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %327 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %328 = call i64 @XFS_ISIZE(%struct.xfs_inode* %327)
  %329 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %326, i64 %328)
  store i64 %329, i64* %22, align 8
  %330 = load i32, i32* @BMV_OF_LAST, align 4
  %331 = load %struct.kgetbmap*, %struct.kgetbmap** %7, align 8
  %332 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %333 = getelementptr inbounds %struct.getbmapx, %struct.getbmapx* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.kgetbmap, %struct.kgetbmap* %331, i64 %336
  %338 = getelementptr inbounds %struct.kgetbmap, %struct.kgetbmap* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %339, %330
  store i32 %340, i32* %338, align 4
  %341 = load i32, i32* %10, align 4
  %342 = icmp ne i32 %341, 133
  br i1 %342, label %343, label %359

343:                                              ; preds = %325
  %344 = load i64, i64* %15, align 8
  %345 = load i64, i64* %22, align 8
  %346 = icmp slt i64 %344, %345
  br i1 %346, label %347, label %359

347:                                              ; preds = %343
  %348 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %349 = call i64 @xfs_getbmap_full(%struct.getbmapx* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %347
  %352 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %353 = load %struct.getbmapx*, %struct.getbmapx** %6, align 8
  %354 = load %struct.kgetbmap*, %struct.kgetbmap** %7, align 8
  %355 = load i64, i64* %13, align 8
  %356 = load i64, i64* %15, align 8
  %357 = load i64, i64* %22, align 8
  %358 = call i32 @xfs_getbmap_report_hole(%struct.xfs_inode* %352, %struct.getbmapx* %353, %struct.kgetbmap* %354, i64 %355, i64 %356, i64 %357)
  br label %359

359:                                              ; preds = %351, %347, %343, %325
  br label %368

360:                                              ; preds = %321
  %361 = load i64, i64* %15, align 8
  %362 = load i64, i64* %16, align 8
  %363 = load i64, i64* %20, align 8
  %364 = add nsw i64 %362, %363
  %365 = icmp sge i64 %361, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %360
  br label %368

367:                                              ; preds = %360
  br label %268

368:                                              ; preds = %366, %359, %293, %268
  br label %369

369:                                              ; preds = %368, %315, %266, %242, %188, %187
  %370 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %371 = load i32, i32* %11, align 4
  %372 = call i32 @xfs_iunlock(%struct.xfs_inode* %370, i32 %371)
  br label %373

373:                                              ; preds = %369, %154, %109, %102
  %374 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %375 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %376 = call i32 @xfs_iunlock(%struct.xfs_inode* %374, i32 %375)
  %377 = load i32, i32* %12, align 4
  store i32 %377, i32* %4, align 4
  br label %378

378:                                              ; preds = %373, %75, %65, %57, %44, %36
  %379 = load i32, i32* %4, align 4
  ret i32 %379
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock_attr_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_get_cowextsz_hint(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local %struct.TYPE_6__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_get_extsz_hint(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock_data_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @XFS_IFORK_FORMAT(%struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_FSB_TO_BB(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i64 @XFS_BB_TO_FSBT(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_iread_extents(i32*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iext_lookup_extent(%struct.xfs_inode*, %struct.xfs_ifork*, i64, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_getbmap_report_hole(%struct.xfs_inode*, %struct.getbmapx*, %struct.kgetbmap*, i64, i64, i64) #1

declare dso_local i64 @xfs_getbmap_full(%struct.getbmapx*) #1

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfs_getbmap_report_one(%struct.xfs_inode*, %struct.getbmapx*, %struct.kgetbmap*, i64, %struct.xfs_bmbt_irec*) #1

declare dso_local i64 @xfs_getbmap_next_rec(%struct.xfs_bmbt_irec*, i64) #1

declare dso_local i32 @xfs_iext_next_extent(%struct.xfs_ifork*, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
