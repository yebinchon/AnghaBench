; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.xfs_dinode = type { i64, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i64, i32, i32, i32 }

@XFS_DINODE_MAGIC = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@XFS_DINODE_CRC_OFF = common dso_local global i32 0, align 4
@XFS_DIR3_FT_UNKNOWN = common dso_local global i64 0, align 8
@XFS_DIFLAG_REALTIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_DEV = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DIFLAG2_REFLINK = common dso_local global i64 0, align 8
@XFS_DIFLAG2_COWEXTSIZE = common dso_local global i64 0, align 8
@XFS_DIFLAG2_DAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_dinode_verify(%struct.xfs_mount* %0, i64 %1, %struct.xfs_dinode* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_dinode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xfs_dinode* %2, %struct.xfs_dinode** %7, align 8
  %13 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %14 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @XFS_DINODE_MAGIC, align 4
  %17 = call i64 @cpu_to_be16(i32 %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** @__this_address, align 8
  store i32* %20, i32** %4, align 8
  br label %307

21:                                               ; preds = %3
  %22 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %23 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 0
  %29 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_3__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** @__this_address, align 8
  store i32* %32, i32** %4, align 8
  br label %307

33:                                               ; preds = %26
  %34 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %35 = bitcast %struct.xfs_dinode* %34 to i8*
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @XFS_DINODE_CRC_OFF, align 4
  %41 = call i32 @xfs_verify_cksum(i8* %35, i64 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i32*, i32** @__this_address, align 8
  store i32* %44, i32** %4, align 8
  br label %307

45:                                               ; preds = %33
  %46 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @be64_to_cpu(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** @__this_address, align 8
  store i32* %53, i32** %4, align 8
  br label %307

54:                                               ; preds = %45
  %55 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %56 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %55, i32 0, i32 13
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @uuid_equal(i32* %56, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** @__this_address, align 8
  store i32* %63, i32** %4, align 8
  br label %307

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %67 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @be64_to_cpu(i32 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = and i64 %70, -9223372036854775808
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32*, i32** @__this_address, align 8
  store i32* %74, i32** %4, align 8
  br label %307

75:                                               ; preds = %65
  %76 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %77 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %76, i32 0, i32 11
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @be16_to_cpu(i64 %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @xfs_mode_to_ftype(i32 %84)
  %86 = load i64, i64* @XFS_DIR3_FT_UNKNOWN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32*, i32** @__this_address, align 8
  store i32* %89, i32** %4, align 8
  br label %307

90:                                               ; preds = %83, %75
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @S_ISLNK(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @S_ISDIR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94, %90
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32*, i32** @__this_address, align 8
  store i32* %102, i32** %4, align 8
  br label %307

103:                                              ; preds = %98, %94
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %108 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @be32_to_cpu(i32 %109)
  %111 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %112 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @be16_to_cpu(i64 %113)
  %115 = add nsw i64 %110, %114
  %116 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %117 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @be64_to_cpu(i32 %118)
  %120 = icmp sgt i64 %115, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load i32*, i32** @__this_address, align 8
  store i32* %122, i32** %4, align 8
  br label %307

123:                                              ; preds = %106, %103
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %128 = call i64 @XFS_DFORK_BOFF(%struct.xfs_dinode* %127)
  %129 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %130 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %128, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32*, i32** @__this_address, align 8
  store i32* %135, i32** %4, align 8
  br label %307

136:                                              ; preds = %126, %123
  %137 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %138 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @be16_to_cpu(i64 %139)
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %136
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @XFS_DIFLAG_REALTIME, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %151 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = load i32*, i32** @__this_address, align 8
  store i32* %155, i32** %4, align 8
  br label %307

156:                                              ; preds = %149, %144, %136
  %157 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %158 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %159 = call i32* @xfs_dinode_verify_forkoff(%struct.xfs_dinode* %157, %struct.xfs_mount* %158)
  store i32* %159, i32** %8, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32*, i32** %8, align 8
  store i32* %163, i32** %4, align 8
  br label %307

164:                                              ; preds = %156
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @S_IFMT, align 4
  %167 = and i32 %165, %166
  switch i32 %167, label %188 [
    i32 132, label %168
    i32 134, label %168
    i32 135, label %168
    i32 129, label %168
    i32 130, label %177
    i32 131, label %177
    i32 133, label %177
    i32 0, label %187
  ]

168:                                              ; preds = %164, %164, %164, %164
  %169 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %170 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XFS_DINODE_FMT_DEV, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32*, i32** @__this_address, align 8
  store i32* %175, i32** %4, align 8
  br label %307

176:                                              ; preds = %168
  br label %190

177:                                              ; preds = %164, %164, %164
  %178 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %179 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %180 = load i32, i32* @XFS_DATA_FORK, align 4
  %181 = call i32* @xfs_dinode_verify_fork(%struct.xfs_dinode* %178, %struct.xfs_mount* %179, i32 %180)
  store i32* %181, i32** %8, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32*, i32** %8, align 8
  store i32* %185, i32** %4, align 8
  br label %307

186:                                              ; preds = %177
  br label %190

187:                                              ; preds = %164
  br label %190

188:                                              ; preds = %164
  %189 = load i32*, i32** @__this_address, align 8
  store i32* %189, i32** %4, align 8
  br label %307

190:                                              ; preds = %187, %186, %176
  %191 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %192 = call i64 @XFS_DFORK_Q(%struct.xfs_dinode* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %196 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %197 = load i32, i32* @XFS_ATTR_FORK, align 4
  %198 = call i32* @xfs_dinode_verify_fork(%struct.xfs_dinode* %195, %struct.xfs_mount* %196, i32 %197)
  store i32* %198, i32** %8, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = load i32*, i32** %8, align 8
  store i32* %202, i32** %4, align 8
  br label %307

203:                                              ; preds = %194
  br label %219

204:                                              ; preds = %190
  %205 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %206 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %209 [
    i32 0, label %208
    i32 128, label %208
  ]

208:                                              ; preds = %204, %204
  br label %211

209:                                              ; preds = %204
  %210 = load i32*, i32** @__this_address, align 8
  store i32* %210, i32** %4, align 8
  br label %307

211:                                              ; preds = %208
  %212 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %213 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32*, i32** @__this_address, align 8
  store i32* %217, i32** %4, align 8
  br label %307

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %203
  %220 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %221 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %222 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @be32_to_cpu(i32 %223)
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = call i32* @xfs_inode_validate_extsize(%struct.xfs_mount* %220, i64 %224, i32 %225, i32 %226)
  store i32* %227, i32** %8, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %232

230:                                              ; preds = %219
  %231 = load i32*, i32** %8, align 8
  store i32* %231, i32** %4, align 8
  br label %307

232:                                              ; preds = %219
  %233 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %234 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %235, 3
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  store i32* null, i32** %4, align 8
  br label %307

238:                                              ; preds = %232
  %239 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %240 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @be64_to_cpu(i32 %241)
  store i64 %242, i64* %11, align 8
  %243 = load i64, i64* %11, align 8
  %244 = load i64, i64* @XFS_DIFLAG2_REFLINK, align 8
  %245 = load i64, i64* @XFS_DIFLAG2_COWEXTSIZE, align 8
  %246 = or i64 %244, %245
  %247 = and i64 %243, %246
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %238
  %250 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %251 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %250, i32 0, i32 0
  %252 = call i32 @xfs_sb_version_hasreflink(%struct.TYPE_3__* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %249
  %255 = load i32*, i32** @__this_address, align 8
  store i32* %255, i32** %4, align 8
  br label %307

256:                                              ; preds = %249, %238
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* @XFS_DIFLAG2_REFLINK, align 8
  %259 = and i64 %257, %258
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @S_IFMT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 130
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32*, i32** @__this_address, align 8
  store i32* %267, i32** %4, align 8
  br label %307

268:                                              ; preds = %261, %256
  %269 = load i64, i64* %11, align 8
  %270 = load i64, i64* @XFS_DIFLAG2_REFLINK, align 8
  %271 = and i64 %269, %270
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @XFS_DIFLAG_REALTIME, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32*, i32** @__this_address, align 8
  store i32* %279, i32** %4, align 8
  br label %307

280:                                              ; preds = %273, %268
  %281 = load i64, i64* %11, align 8
  %282 = load i64, i64* @XFS_DIFLAG2_REFLINK, align 8
  %283 = and i64 %281, %282
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* @XFS_DIFLAG2_DAX, align 8
  %288 = and i64 %286, %287
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = load i32*, i32** @__this_address, align 8
  store i32* %291, i32** %4, align 8
  br label %307

292:                                              ; preds = %285, %280
  %293 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %294 = load %struct.xfs_dinode*, %struct.xfs_dinode** %7, align 8
  %295 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = call i64 @be32_to_cpu(i32 %296)
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* %10, align 4
  %300 = load i64, i64* %11, align 8
  %301 = call i32* @xfs_inode_validate_cowextsize(%struct.xfs_mount* %293, i64 %297, i32 %298, i32 %299, i64 %300)
  store i32* %301, i32** %8, align 8
  %302 = load i32*, i32** %8, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %292
  %305 = load i32*, i32** %8, align 8
  store i32* %305, i32** %4, align 8
  br label %307

306:                                              ; preds = %292
  store i32* null, i32** %4, align 8
  br label %307

307:                                              ; preds = %306, %304, %290, %278, %266, %254, %237, %230, %216, %209, %201, %188, %184, %174, %162, %154, %134, %121, %101, %88, %73, %62, %52, %43, %31, %19
  %308 = load i32*, i32** %4, align 8
  ret i32* %308
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_3__*) #1

declare dso_local i32 @xfs_verify_cksum(i8*, i64, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i64 @xfs_mode_to_ftype(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @XFS_DFORK_BOFF(%struct.xfs_dinode*) #1

declare dso_local i32* @xfs_dinode_verify_forkoff(%struct.xfs_dinode*, %struct.xfs_mount*) #1

declare dso_local i32* @xfs_dinode_verify_fork(%struct.xfs_dinode*, %struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_DFORK_Q(%struct.xfs_dinode*) #1

declare dso_local i32* @xfs_inode_validate_extsize(%struct.xfs_mount*, i64, i32, i32) #1

declare dso_local i32 @xfs_sb_version_hasreflink(%struct.TYPE_3__*) #1

declare dso_local i32* @xfs_inode_validate_cowextsize(%struct.xfs_mount*, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
