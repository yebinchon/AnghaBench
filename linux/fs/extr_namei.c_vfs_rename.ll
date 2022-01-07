; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* }
%struct.dentry = type { i32, %struct.inode* }
%struct.name_snapshot = type { i32 }

@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4
@FS_RENAME_DOES_D_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, %struct.inode** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.name_snapshot, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.dentry* %3, %struct.dentry** %11, align 8
  store %struct.inode** %4, %struct.inode*** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = call i32 @d_is_dir(%struct.dentry* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.dentry*, %struct.dentry** %9, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %16, align 8
  %26 = load %struct.dentry*, %struct.dentry** %11, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %19, align 4
  %34 = load %struct.inode*, %struct.inode** %16, align 8
  %35 = load %struct.inode*, %struct.inode** %17, align 8
  %36 = icmp eq %struct.inode* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %353

38:                                               ; preds = %6
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @may_delete(%struct.inode* %39, %struct.dentry* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %353

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %17, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = load %struct.dentry*, %struct.dentry** %11, align 8
  %53 = call i32 @may_create(%struct.inode* %51, %struct.dentry* %52)
  store i32 %53, i32* %14, align 4
  br label %72

54:                                               ; preds = %47
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = call i32 @d_is_dir(%struct.dentry* %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @RENAME_EXCHANGE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = load %struct.dentry*, %struct.dentry** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @may_delete(%struct.inode* %62, %struct.dentry* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  br label %71

66:                                               ; preds = %54
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = load %struct.dentry*, %struct.dentry** %11, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @may_delete(%struct.inode* %67, %struct.dentry* %68, i32 %69)
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  br label %353

77:                                               ; preds = %72
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %353

87:                                               ; preds = %77
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = icmp ne %struct.inode* %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.inode*, %struct.inode** %16, align 8
  %96 = load i32, i32* @MAY_WRITE, align 4
  %97 = call i32 @inode_permission(%struct.inode* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %7, align 4
  br label %353

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @RENAME_EXCHANGE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.inode*, %struct.inode** %17, align 8
  %113 = load i32, i32* @MAY_WRITE, align 4
  %114 = call i32 @inode_permission(%struct.inode* %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %353

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %108, %103
  br label %121

121:                                              ; preds = %120, %87
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = load %struct.dentry*, %struct.dentry** %9, align 8
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = load %struct.dentry*, %struct.dentry** %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @security_inode_rename(%struct.inode* %122, %struct.dentry* %123, %struct.inode* %124, %struct.dentry* %125, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %7, align 4
  br label %353

132:                                              ; preds = %121
  %133 = load %struct.dentry*, %struct.dentry** %9, align 8
  %134 = call i32 @take_dentry_name_snapshot(%struct.name_snapshot* %20, %struct.dentry* %133)
  %135 = load %struct.dentry*, %struct.dentry** %11, align 8
  %136 = call i32 @dget(%struct.dentry* %135)
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @RENAME_EXCHANGE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139, %132
  %145 = load %struct.inode*, %struct.inode** %16, align 8
  %146 = load %struct.inode*, %struct.inode** %17, align 8
  %147 = call i32 @lock_two_nondirectories(%struct.inode* %145, %struct.inode* %146)
  br label %155

148:                                              ; preds = %139
  %149 = load %struct.inode*, %struct.inode** %17, align 8
  %150 = icmp ne %struct.inode* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.inode*, %struct.inode** %17, align 8
  %153 = call i32 @inode_lock(%struct.inode* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %144
  %156 = load i32, i32* @EBUSY, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %14, align 4
  %158 = load %struct.dentry*, %struct.dentry** %9, align 8
  %159 = call i64 @is_local_mountpoint(%struct.dentry* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load %struct.dentry*, %struct.dentry** %11, align 8
  %163 = call i64 @is_local_mountpoint(%struct.dentry* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %155
  br label %297

166:                                              ; preds = %161
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %207

169:                                              ; preds = %166
  %170 = load %struct.inode*, %struct.inode** %10, align 8
  %171 = load %struct.inode*, %struct.inode** %8, align 8
  %172 = icmp ne %struct.inode* %170, %171
  br i1 %172, label %173, label %207

173:                                              ; preds = %169
  %174 = load i32, i32* @EMLINK, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %173
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178
  %182 = load %struct.inode*, %struct.inode** %10, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %19, align 4
  %186 = icmp uge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %297

188:                                              ; preds = %181, %178, %173
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @RENAME_EXCHANGE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %188
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load %struct.inode*, %struct.inode** %8, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %19, align 4
  %204 = icmp uge i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %297

206:                                              ; preds = %199, %196, %193, %188
  br label %207

207:                                              ; preds = %206, %169, %166
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = load %struct.inode*, %struct.inode** %16, align 8
  %212 = load %struct.inode**, %struct.inode*** %12, align 8
  %213 = call i32 @try_break_deleg(%struct.inode* %211, %struct.inode** %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %297

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %207
  %219 = load %struct.inode*, %struct.inode** %17, align 8
  %220 = icmp ne %struct.inode* %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %218
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %221
  %225 = load %struct.inode*, %struct.inode** %17, align 8
  %226 = load %struct.inode**, %struct.inode*** %12, align 8
  %227 = call i32 @try_break_deleg(%struct.inode* %225, %struct.inode** %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %297

231:                                              ; preds = %224
  br label %232

232:                                              ; preds = %231, %221, %218
  %233 = load %struct.inode*, %struct.inode** %8, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 3
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)** %236, align 8
  %238 = load %struct.inode*, %struct.inode** %8, align 8
  %239 = load %struct.dentry*, %struct.dentry** %9, align 8
  %240 = load %struct.inode*, %struct.inode** %10, align 8
  %241 = load %struct.dentry*, %struct.dentry** %11, align 8
  %242 = load i32, i32* %13, align 4
  %243 = call i32 %237(%struct.inode* %238, %struct.dentry* %239, %struct.inode* %240, %struct.dentry* %241, i32 %242)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %232
  br label %297

247:                                              ; preds = %232
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @RENAME_EXCHANGE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %271, label %252

252:                                              ; preds = %247
  %253 = load %struct.inode*, %struct.inode** %17, align 8
  %254 = icmp ne %struct.inode* %253, null
  br i1 %254, label %255, label %271

255:                                              ; preds = %252
  %256 = load i32, i32* %15, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load %struct.dentry*, %struct.dentry** %11, align 8
  %260 = call i32 @shrink_dcache_parent(%struct.dentry* %259)
  %261 = load i32, i32* @S_DEAD, align 4
  %262 = load %struct.inode*, %struct.inode** %17, align 8
  %263 = getelementptr inbounds %struct.inode, %struct.inode* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %258, %255
  %267 = load %struct.dentry*, %struct.dentry** %11, align 8
  %268 = call i32 @dont_mount(%struct.dentry* %267)
  %269 = load %struct.dentry*, %struct.dentry** %11, align 8
  %270 = call i32 @detach_mounts(%struct.dentry* %269)
  br label %271

271:                                              ; preds = %266, %252, %247
  %272 = load %struct.inode*, %struct.inode** %8, align 8
  %273 = getelementptr inbounds %struct.inode, %struct.inode* %272, i32 0, i32 1
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @FS_RENAME_DOES_D_MOVE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %296, label %282

282:                                              ; preds = %271
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @RENAME_EXCHANGE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %282
  %288 = load %struct.dentry*, %struct.dentry** %9, align 8
  %289 = load %struct.dentry*, %struct.dentry** %11, align 8
  %290 = call i32 @d_move(%struct.dentry* %288, %struct.dentry* %289)
  br label %295

291:                                              ; preds = %282
  %292 = load %struct.dentry*, %struct.dentry** %9, align 8
  %293 = load %struct.dentry*, %struct.dentry** %11, align 8
  %294 = call i32 @d_exchange(%struct.dentry* %292, %struct.dentry* %293)
  br label %295

295:                                              ; preds = %291, %287
  br label %296

296:                                              ; preds = %295, %271
  br label %297

297:                                              ; preds = %296, %246, %230, %216, %205, %187, %165
  %298 = load i32, i32* %15, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* @RENAME_EXCHANGE, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %300, %297
  %306 = load %struct.inode*, %struct.inode** %16, align 8
  %307 = load %struct.inode*, %struct.inode** %17, align 8
  %308 = call i32 @unlock_two_nondirectories(%struct.inode* %306, %struct.inode* %307)
  br label %316

309:                                              ; preds = %300
  %310 = load %struct.inode*, %struct.inode** %17, align 8
  %311 = icmp ne %struct.inode* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load %struct.inode*, %struct.inode** %17, align 8
  %314 = call i32 @inode_unlock(%struct.inode* %313)
  br label %315

315:                                              ; preds = %312, %309
  br label %316

316:                                              ; preds = %315, %305
  %317 = load %struct.dentry*, %struct.dentry** %11, align 8
  %318 = call i32 @dput(%struct.dentry* %317)
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %350, label %321

321:                                              ; preds = %316
  %322 = load %struct.inode*, %struct.inode** %8, align 8
  %323 = load %struct.inode*, %struct.inode** %10, align 8
  %324 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %20, i32 0, i32 0
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* @RENAME_EXCHANGE, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %321
  %331 = load %struct.inode*, %struct.inode** %17, align 8
  br label %333

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332, %330
  %334 = phi %struct.inode* [ %331, %330 ], [ null, %332 ]
  %335 = load %struct.dentry*, %struct.dentry** %9, align 8
  %336 = call i32 @fsnotify_move(%struct.inode* %322, %struct.inode* %323, i32* %324, i32 %325, %struct.inode* %334, %struct.dentry* %335)
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* @RENAME_EXCHANGE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %333
  %342 = load %struct.inode*, %struct.inode** %10, align 8
  %343 = load %struct.inode*, %struct.inode** %8, align 8
  %344 = load %struct.dentry*, %struct.dentry** %9, align 8
  %345 = getelementptr inbounds %struct.dentry, %struct.dentry* %344, i32 0, i32 0
  %346 = load i32, i32* %18, align 4
  %347 = load %struct.dentry*, %struct.dentry** %11, align 8
  %348 = call i32 @fsnotify_move(%struct.inode* %342, %struct.inode* %343, i32* %345, i32 %346, %struct.inode* null, %struct.dentry* %347)
  br label %349

349:                                              ; preds = %341, %333
  br label %350

350:                                              ; preds = %349, %316
  %351 = call i32 @release_dentry_name_snapshot(%struct.name_snapshot* %20)
  %352 = load i32, i32* %14, align 4
  store i32 %352, i32* %7, align 4
  br label %353

353:                                              ; preds = %350, %130, %117, %100, %84, %75, %45, %37
  %354 = load i32, i32* %7, align 4
  ret i32 %354
}

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @may_delete(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @security_inode_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @take_dentry_name_snapshot(%struct.name_snapshot*, %struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @lock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @is_local_mountpoint(%struct.dentry*) #1

declare dso_local i32 @try_break_deleg(%struct.inode*, %struct.inode**) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @detach_mounts(%struct.dentry*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @d_exchange(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fsnotify_move(%struct.inode*, %struct.inode*, i32*, i32, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @release_dentry_name_snapshot(%struct.name_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
