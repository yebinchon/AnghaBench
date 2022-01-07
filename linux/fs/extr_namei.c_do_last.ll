; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_do_last.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_do_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i64, i64, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.dentry* }
%struct.dentry = type { i64 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.file = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.dentry* }
%struct.open_flags = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.TYPE_9__ = type { i32 }

@O_TRUNC = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@AUDIT_INODE_PARENT = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FMODE_OPENED = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.file*, %struct.open_flags*)* @do_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_last(%struct.nameidata* %0, %struct.file* %1, %struct.open_flags* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.open_flags*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.path, align 8
  %16 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.open_flags* %2, %struct.open_flags** %7, align 8
  %17 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %8, align 8
  %21 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %22 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @O_TRUNC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %30 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @LOOKUP_PARENT, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %39 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LAST_NORM, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %3
  %51 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %52 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @handle_dots(%struct.nameidata* %51, i64 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %4, align 4
  br label %463

61:                                               ; preds = %50
  br label %321

62:                                               ; preds = %3
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @O_CREAT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %117, label %67

67:                                               ; preds = %62
  %68 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %69 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %81 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %84 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %79, %67
  %88 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %89 = call i32 @lookup_fast(%struct.nameidata* %88, %struct.path* %15, %struct.inode** %14, i32* %13)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i64 @likely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %310

96:                                               ; preds = %87
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %4, align 4
  br label %463

101:                                              ; preds = %96
  %102 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %103 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.dentry*, %struct.dentry** %8, align 8
  %106 = getelementptr inbounds %struct.dentry, %struct.dentry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @BUG_ON(i32 %109)
  %111 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %112 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @LOOKUP_RCU, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @BUG_ON(i32 %115)
  br label %147

117:                                              ; preds = %62
  %118 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %119 = call i32 @complete_walk(%struct.nameidata* %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %4, align 4
  br label %463

124:                                              ; preds = %117
  %125 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %126 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.dentry*, %struct.dentry** %8, align 8
  %129 = load i32, i32* @AUDIT_INODE_PARENT, align 4
  %130 = call i32 @audit_inode(i32 %127, %struct.dentry* %128, i32 %129)
  %131 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %132 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %136 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %124
  %144 = load i32, i32* @EISDIR, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %463

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %101
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @O_CREAT, align 4
  %150 = load i32, i32* @O_TRUNC, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @O_WRONLY, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @O_RDWR, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %148, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %147
  %159 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %160 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @mnt_want_write(i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %158
  store i32 1, i32* %11, align 4
  br label %167

167:                                              ; preds = %166, %158
  br label %168

168:                                              ; preds = %167, %147
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @O_CREAT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.dentry*, %struct.dentry** %8, align 8
  %175 = getelementptr inbounds %struct.dentry, %struct.dentry* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @inode_lock(i64 %176)
  br label %183

178:                                              ; preds = %168
  %179 = load %struct.dentry*, %struct.dentry** %8, align 8
  %180 = getelementptr inbounds %struct.dentry, %struct.dentry* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @inode_lock_shared(i64 %181)
  br label %183

183:                                              ; preds = %178, %173
  %184 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %185 = load %struct.file*, %struct.file** %6, align 8
  %186 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @lookup_open(%struct.nameidata* %184, %struct.path* %15, %struct.file* %185, %struct.open_flags* %186, i32 %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @O_CREAT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load %struct.dentry*, %struct.dentry** %8, align 8
  %195 = getelementptr inbounds %struct.dentry, %struct.dentry* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @inode_unlock(i64 %196)
  br label %203

198:                                              ; preds = %183
  %199 = load %struct.dentry*, %struct.dentry** %8, align 8
  %200 = getelementptr inbounds %struct.dentry, %struct.dentry* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @inode_unlock_shared(i64 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %442

207:                                              ; preds = %203
  %208 = load %struct.file*, %struct.file** %6, align 8
  %209 = getelementptr inbounds %struct.file, %struct.file* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @FMODE_OPENED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %207
  %215 = load %struct.file*, %struct.file** %6, align 8
  %216 = getelementptr inbounds %struct.file, %struct.file* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @FMODE_CREATED, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %214
  %222 = load %struct.file*, %struct.file** %6, align 8
  %223 = call %struct.TYPE_9__* @file_inode(%struct.file* %222)
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @S_ISREG(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %221, %214
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %228, %221
  %230 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %231 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.file*, %struct.file** %6, align 8
  %234 = getelementptr inbounds %struct.file, %struct.file* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load %struct.dentry*, %struct.dentry** %235, align 8
  %237 = call i32 @audit_inode(i32 %232, %struct.dentry* %236, i32 0)
  br label %427

238:                                              ; preds = %207
  %239 = load %struct.file*, %struct.file** %6, align 8
  %240 = getelementptr inbounds %struct.file, %struct.file* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @FMODE_CREATED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %238
  %246 = load i32, i32* @O_TRUNC, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %9, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %250 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %251 = call i32 @path_to_nameidata(%struct.path* %15, %struct.nameidata* %250)
  br label %403

252:                                              ; preds = %238
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %257 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @mnt_drop_write(i32 %259)
  store i32 0, i32* %11, align 4
  br label %261

261:                                              ; preds = %255, %252
  %262 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %263 = call i32 @follow_managed(%struct.path* %15, %struct.nameidata* %262)
  store i32 %263, i32* %16, align 4
  %264 = load i32, i32* %16, align 4
  %265 = icmp slt i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = call i64 @unlikely(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %261
  %270 = load i32, i32* %16, align 4
  store i32 %270, i32* %4, align 4
  br label %463

271:                                              ; preds = %261
  %272 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %273 = load %struct.dentry*, %struct.dentry** %272, align 8
  %274 = call i32 @d_is_negative(%struct.dentry* %273)
  %275 = call i64 @unlikely(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %271
  %278 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %279 = call i32 @path_to_nameidata(%struct.path* %15, %struct.nameidata* %278)
  %280 = load i32, i32* @ENOENT, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %4, align 4
  br label %463

282:                                              ; preds = %271
  %283 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %284 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %287 = load %struct.dentry*, %struct.dentry** %286, align 8
  %288 = call i32 @audit_inode(i32 %285, %struct.dentry* %287, i32 0)
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @O_EXCL, align 4
  %291 = load i32, i32* @O_CREAT, align 4
  %292 = or i32 %290, %291
  %293 = and i32 %289, %292
  %294 = load i32, i32* @O_EXCL, align 4
  %295 = load i32, i32* @O_CREAT, align 4
  %296 = or i32 %294, %295
  %297 = icmp eq i32 %293, %296
  %298 = zext i1 %297 to i32
  %299 = call i64 @unlikely(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %282
  %302 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %303 = call i32 @path_to_nameidata(%struct.path* %15, %struct.nameidata* %302)
  %304 = load i32, i32* @EEXIST, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  br label %463

306:                                              ; preds = %282
  store i32 0, i32* %13, align 4
  %307 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %308 = load %struct.dentry*, %struct.dentry** %307, align 8
  %309 = call %struct.inode* @d_backing_inode(%struct.dentry* %308)
  store %struct.inode* %309, %struct.inode** %14, align 8
  br label %310

310:                                              ; preds = %306, %95
  %311 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %312 = load %struct.inode*, %struct.inode** %14, align 8
  %313 = load i32, i32* %13, align 4
  %314 = call i32 @step_into(%struct.nameidata* %311, %struct.path* %15, i32 0, %struct.inode* %312, i32 %313)
  store i32 %314, i32* %16, align 4
  %315 = load i32, i32* %16, align 4
  %316 = call i64 @unlikely(i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i32, i32* %16, align 4
  store i32 %319, i32* %4, align 4
  br label %463

320:                                              ; preds = %310
  br label %321

321:                                              ; preds = %320, %61
  %322 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %323 = call i32 @complete_walk(%struct.nameidata* %322)
  store i32 %323, i32* %16, align 4
  %324 = load i32, i32* %16, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = load i32, i32* %16, align 4
  store i32 %327, i32* %4, align 4
  br label %463

328:                                              ; preds = %321
  %329 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %330 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %333 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load %struct.dentry*, %struct.dentry** %334, align 8
  %336 = call i32 @audit_inode(i32 %331, %struct.dentry* %335, i32 0)
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @O_CREAT, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %364

341:                                              ; preds = %328
  %342 = load i32, i32* @EISDIR, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %16, align 4
  %344 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %345 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load %struct.dentry*, %struct.dentry** %346, align 8
  %348 = call i64 @d_is_dir(%struct.dentry* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %341
  br label %442

351:                                              ; preds = %341
  %352 = load %struct.dentry*, %struct.dentry** %8, align 8
  %353 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %354 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 1
  %356 = load %struct.dentry*, %struct.dentry** %355, align 8
  %357 = call %struct.inode* @d_backing_inode(%struct.dentry* %356)
  %358 = call i32 @may_create_in_sticky(%struct.dentry* %352, %struct.inode* %357)
  store i32 %358, i32* %16, align 4
  %359 = load i32, i32* %16, align 4
  %360 = call i64 @unlikely(i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %351
  br label %442

363:                                              ; preds = %351
  br label %364

364:                                              ; preds = %363, %328
  %365 = load i32, i32* @ENOTDIR, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %16, align 4
  %367 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %368 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %364
  %374 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %375 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 1
  %377 = load %struct.dentry*, %struct.dentry** %376, align 8
  %378 = call i32 @d_can_lookup(%struct.dentry* %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %373
  br label %442

381:                                              ; preds = %373, %364
  %382 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %383 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 1
  %385 = load %struct.dentry*, %struct.dentry** %384, align 8
  %386 = call i32 @d_is_reg(%struct.dentry* %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %381
  store i32 0, i32* %10, align 4
  br label %389

389:                                              ; preds = %388, %381
  %390 = load i32, i32* %10, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %389
  %393 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %394 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @mnt_want_write(i32 %396)
  store i32 %397, i32* %16, align 4
  %398 = load i32, i32* %16, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %392
  br label %442

401:                                              ; preds = %392
  store i32 1, i32* %11, align 4
  br label %402

402:                                              ; preds = %401, %389
  br label %403

403:                                              ; preds = %402, %245
  %404 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %405 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %404, i32 0, i32 3
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* %9, align 4
  %408 = call i32 @may_open(%struct.TYPE_8__* %405, i32 %406, i32 %407)
  store i32 %408, i32* %16, align 4
  %409 = load i32, i32* %16, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %403
  br label %442

412:                                              ; preds = %403
  %413 = load %struct.file*, %struct.file** %6, align 8
  %414 = getelementptr inbounds %struct.file, %struct.file* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @FMODE_OPENED, align 4
  %417 = and i32 %415, %416
  %418 = call i32 @BUG_ON(i32 %417)
  %419 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %420 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %419, i32 0, i32 3
  %421 = load %struct.file*, %struct.file** %6, align 8
  %422 = call i32 @vfs_open(%struct.TYPE_8__* %420, %struct.file* %421)
  store i32 %422, i32* %16, align 4
  %423 = load i32, i32* %16, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %412
  br label %442

426:                                              ; preds = %412
  br label %427

427:                                              ; preds = %426, %229
  %428 = load %struct.file*, %struct.file** %6, align 8
  %429 = load %struct.open_flags*, %struct.open_flags** %7, align 8
  %430 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @ima_file_check(%struct.file* %428, i32 %431)
  store i32 %432, i32* %16, align 4
  %433 = load i32, i32* %16, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %427
  %436 = load i32, i32* %10, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = load %struct.file*, %struct.file** %6, align 8
  %440 = call i32 @handle_truncate(%struct.file* %439)
  store i32 %440, i32* %16, align 4
  br label %441

441:                                              ; preds = %438, %435, %427
  br label %442

442:                                              ; preds = %441, %425, %411, %400, %380, %362, %350, %206
  %443 = load i32, i32* %16, align 4
  %444 = icmp sgt i32 %443, 0
  %445 = zext i1 %444 to i32
  %446 = call i64 @unlikely(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %442
  %449 = call i32 @WARN_ON(i32 1)
  %450 = load i32, i32* @EINVAL, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %16, align 4
  br label %452

452:                                              ; preds = %448, %442
  %453 = load i32, i32* %11, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %452
  %456 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %457 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @mnt_drop_write(i32 %459)
  br label %461

461:                                              ; preds = %455, %452
  %462 = load i32, i32* %16, align 4
  store i32 %462, i32* %4, align 4
  br label %463

463:                                              ; preds = %461, %326, %318, %301, %277, %269, %143, %122, %99, %59
  %464 = load i32, i32* %4, align 4
  ret i32 %464
}

declare dso_local i32 @handle_dots(%struct.nameidata*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lookup_fast(%struct.nameidata*, %struct.path*, %struct.inode**, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @complete_walk(%struct.nameidata*) #1

declare dso_local i32 @audit_inode(i32, %struct.dentry*, i32) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @inode_lock(i64) #1

declare dso_local i32 @inode_lock_shared(i64) #1

declare dso_local i32 @lookup_open(%struct.nameidata*, %struct.path*, %struct.file*, %struct.open_flags*, i32) #1

declare dso_local i32 @inode_unlock(i64) #1

declare dso_local i32 @inode_unlock_shared(i64) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_9__* @file_inode(%struct.file*) #1

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @mnt_drop_write(i32) #1

declare dso_local i32 @follow_managed(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @d_is_negative(%struct.dentry*) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @step_into(%struct.nameidata*, %struct.path*, i32, %struct.inode*, i32) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @may_create_in_sticky(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_can_lookup(%struct.dentry*) #1

declare dso_local i32 @d_is_reg(%struct.dentry*) #1

declare dso_local i32 @may_open(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vfs_open(%struct.TYPE_8__*, %struct.file*) #1

declare dso_local i32 @ima_file_check(%struct.file*, i32) #1

declare dso_local i32 @handle_truncate(%struct.file*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
