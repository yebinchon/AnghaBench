; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_path_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_path_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.fs_struct* }
%struct.fs_struct = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.dentry*, i32* }
%struct.dentry = type { %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.nameidata = type { i32, i64, %struct.TYPE_8__, %struct.inode*, i8*, i8*, %struct.TYPE_8__, i8*, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.fd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@LAST_ROOT = common dso_local global i32 0, align 4
@LOOKUP_JUMPED = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LOOKUP_ROOT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@mount_lock = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_9__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nameidata*, i32)* @path_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @path_init(%struct.nameidata* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fs_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fd, align 8
  %12 = alloca %struct.dentry*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @LOOKUP_RCU, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LOOKUP_RCU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @rcu_read_lock()
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* @LAST_ROOT, align 4
  %35 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @LOOKUP_JUMPED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LOOKUP_PARENT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @LOOKUP_ROOT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %111

50:                                               ; preds = %33
  %51 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.dentry*, %struct.dentry** %53, align 8
  store %struct.dentry* %54, %struct.dentry** %7, align 8
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load %struct.inode*, %struct.inode** %56, align 8
  store %struct.inode* %57, %struct.inode** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = call i32 @d_can_lookup(%struct.dentry* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOTDIR, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i8* @ERR_PTR(i32 %72)
  store i8* %73, i8** %3, align 8
  br label %294

74:                                               ; preds = %62, %50
  %75 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %75, i32 0, i32 2
  %77 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %78 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %77, i32 0, i32 6
  %79 = bitcast %struct.TYPE_8__* %76 to i8*
  %80 = bitcast %struct.TYPE_8__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %82, i32 0, i32 3
  store %struct.inode* %81, %struct.inode** %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @LOOKUP_RCU, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %74
  %89 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %90 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.dentry*, %struct.dentry** %91, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 1
  %94 = call i8* @__read_seqcount_begin(i32* %93)
  %95 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %96 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %98 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %101 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = call i8* @read_seqbegin(i32* @mount_lock)
  %103 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %104 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  br label %109

105:                                              ; preds = %74
  %106 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %106, i32 0, i32 2
  %108 = call i32 @path_get(%struct.TYPE_8__* %107)
  br label %109

109:                                              ; preds = %105, %88
  %110 = load i8*, i8** %6, align 8
  store i8* %110, i8** %3, align 8
  br label %294

111:                                              ; preds = %33
  %112 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %113 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %116 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %119 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %120, align 8
  %121 = call i8* @read_seqbegin(i32* @mount_lock)
  %122 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %123 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 47
  br i1 %127, label %128, label %144

128:                                              ; preds = %111
  %129 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %130 = call i32 @set_root(%struct.nameidata* %129)
  %131 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %132 = call i32 @nd_jump_root(%struct.nameidata* %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i64 @likely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i8*, i8** %6, align 8
  store i8* %139, i8** %3, align 8
  br label %294

140:                                              ; preds = %128
  %141 = load i32, i32* @ECHILD, align 4
  %142 = sub nsw i32 0, %141
  %143 = call i8* @ERR_PTR(i32 %142)
  store i8* %143, i8** %3, align 8
  br label %294

144:                                              ; preds = %111
  %145 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %146 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AT_FDCWD, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %210

150:                                              ; preds = %144
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @LOOKUP_RCU, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %150
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load %struct.fs_struct*, %struct.fs_struct** %157, align 8
  store %struct.fs_struct* %158, %struct.fs_struct** %9, align 8
  br label %159

159:                                              ; preds = %186, %155
  %160 = load %struct.fs_struct*, %struct.fs_struct** %9, align 8
  %161 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %160, i32 0, i32 1
  %162 = call i8* @read_seqcount_begin(i32* %161)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %165 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %164, i32 0, i32 2
  %166 = load %struct.fs_struct*, %struct.fs_struct** %9, align 8
  %167 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %166, i32 0, i32 0
  %168 = bitcast %struct.TYPE_8__* %165 to i8*
  %169 = bitcast %struct.TYPE_8__* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  %170 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %171 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load %struct.dentry*, %struct.dentry** %172, align 8
  %174 = getelementptr inbounds %struct.dentry, %struct.dentry* %173, i32 0, i32 0
  %175 = load %struct.inode*, %struct.inode** %174, align 8
  %176 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %177 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %176, i32 0, i32 3
  store %struct.inode* %175, %struct.inode** %177, align 8
  %178 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %179 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.dentry*, %struct.dentry** %180, align 8
  %182 = getelementptr inbounds %struct.dentry, %struct.dentry* %181, i32 0, i32 1
  %183 = call i8* @__read_seqcount_begin(i32* %182)
  %184 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %185 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %159
  %187 = load %struct.fs_struct*, %struct.fs_struct** %9, align 8
  %188 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %187, i32 0, i32 1
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @read_seqcount_retry(i32* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %159, label %192

192:                                              ; preds = %186
  br label %208

193:                                              ; preds = %150
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.fs_struct*, %struct.fs_struct** %195, align 8
  %197 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %198 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %197, i32 0, i32 2
  %199 = call i32 @get_fs_pwd(%struct.fs_struct* %196, %struct.TYPE_8__* %198)
  %200 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %201 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load %struct.dentry*, %struct.dentry** %202, align 8
  %204 = getelementptr inbounds %struct.dentry, %struct.dentry* %203, i32 0, i32 0
  %205 = load %struct.inode*, %struct.inode** %204, align 8
  %206 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %207 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %206, i32 0, i32 3
  store %struct.inode* %205, %struct.inode** %207, align 8
  br label %208

208:                                              ; preds = %193, %192
  %209 = load i8*, i8** %6, align 8
  store i8* %209, i8** %3, align 8
  br label %294

210:                                              ; preds = %144
  %211 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %212 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call %struct.TYPE_7__* @fdget_raw(i64 %213)
  %215 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %215, align 8
  %216 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = icmp ne %struct.TYPE_7__* %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %210
  %220 = load i32, i32* @EBADF, align 4
  %221 = sub nsw i32 0, %220
  %222 = call i8* @ERR_PTR(i32 %221)
  store i8* %222, i8** %3, align 8
  br label %294

223:                                              ; preds = %210
  %224 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load %struct.dentry*, %struct.dentry** %227, align 8
  store %struct.dentry* %228, %struct.dentry** %12, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %223
  %234 = load %struct.dentry*, %struct.dentry** %12, align 8
  %235 = call i32 @d_can_lookup(%struct.dentry* %234)
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i64 @unlikely(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = call i32 @fdput(%struct.TYPE_7__* %243)
  %245 = load i32, i32* @ENOTDIR, align 4
  %246 = sub nsw i32 0, %245
  %247 = call i8* @ERR_PTR(i32 %246)
  store i8* %247, i8** %3, align 8
  br label %294

248:                                              ; preds = %233, %223
  %249 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %250 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = bitcast %struct.TYPE_8__* %250 to i8*
  %255 = bitcast %struct.TYPE_8__* %253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 16, i1 false)
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @LOOKUP_RCU, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %248
  %261 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %262 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load %struct.dentry*, %struct.dentry** %263, align 8
  %265 = getelementptr inbounds %struct.dentry, %struct.dentry* %264, i32 0, i32 0
  %266 = load %struct.inode*, %struct.inode** %265, align 8
  %267 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %268 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %267, i32 0, i32 3
  store %struct.inode* %266, %struct.inode** %268, align 8
  %269 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %270 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load %struct.dentry*, %struct.dentry** %271, align 8
  %273 = getelementptr inbounds %struct.dentry, %struct.dentry* %272, i32 0, i32 1
  %274 = call i8* @read_seqcount_begin(i32* %273)
  %275 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %276 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %275, i32 0, i32 4
  store i8* %274, i8** %276, align 8
  br label %289

277:                                              ; preds = %248
  %278 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %279 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %278, i32 0, i32 2
  %280 = call i32 @path_get(%struct.TYPE_8__* %279)
  %281 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %282 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load %struct.dentry*, %struct.dentry** %283, align 8
  %285 = getelementptr inbounds %struct.dentry, %struct.dentry* %284, i32 0, i32 0
  %286 = load %struct.inode*, %struct.inode** %285, align 8
  %287 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %288 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %287, i32 0, i32 3
  store %struct.inode* %286, %struct.inode** %288, align 8
  br label %289

289:                                              ; preds = %277, %260
  %290 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = call i32 @fdput(%struct.TYPE_7__* %291)
  %293 = load i8*, i8** %6, align 8
  store i8* %293, i8** %3, align 8
  br label %294

294:                                              ; preds = %289, %241, %219, %208, %140, %138, %109, %70
  %295 = load i8*, i8** %3, align 8
  ret i8* %295
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_can_lookup(%struct.dentry*) #1

declare dso_local i8* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @__read_seqcount_begin(i32*) #1

declare dso_local i8* @read_seqbegin(i32*) #1

declare dso_local i32 @path_get(%struct.TYPE_8__*) #1

declare dso_local i32 @set_root(%struct.nameidata*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nd_jump_root(%struct.nameidata*) #1

declare dso_local i8* @read_seqcount_begin(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @get_fs_pwd(%struct.fs_struct*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @fdget_raw(i64) #1

declare dso_local i32 @fdput(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
