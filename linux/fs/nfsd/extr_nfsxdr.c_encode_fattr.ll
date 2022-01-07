; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_encode_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_encode_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.kstat = type { i32, i64, %struct.TYPE_6__, %struct.timespec64, %struct.TYPE_5__, i64, i32, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.timespec64 = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.user_namespace = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@nfs_ftypes = common dso_local global i32* null, align 8
@NFS_MAXPATHLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*)* @encode_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_fattr(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2, %struct.kstat* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.kstat*, align 8
  %9 = alloca %struct.user_namespace*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  store %struct.kstat* %3, %struct.kstat** %8, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = call %struct.user_namespace* @nfsd_user_namespace(%struct.svc_rqst* %14)
  store %struct.user_namespace* %15, %struct.user_namespace** %9, align 8
  %16 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %17 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %16, i32 0, i32 1
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %10, align 8
  %19 = load %struct.kstat*, %struct.kstat** %8, align 8
  %20 = getelementptr inbounds %struct.kstat, %struct.kstat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @S_IFMT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** @nfs_ftypes, align 8
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 12
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %34 = load %struct.kstat*, %struct.kstat** %8, align 8
  %35 = getelementptr inbounds %struct.kstat, %struct.kstat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @htonl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %41 = load %struct.kstat*, %struct.kstat** %8, align 8
  %42 = getelementptr inbounds %struct.kstat, %struct.kstat* %41, i32 0, i32 12
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @htonl(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %50 = load %struct.kstat*, %struct.kstat** %8, align 8
  %51 = getelementptr inbounds %struct.kstat, %struct.kstat* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @from_kuid_munged(%struct.user_namespace* %49, i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = call i8* @htonl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %60 = load %struct.kstat*, %struct.kstat** %8, align 8
  %61 = getelementptr inbounds %struct.kstat, %struct.kstat* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @from_kgid_munged(%struct.user_namespace* %59, i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i8* @htonl(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @S_ISLNK(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %4
  %73 = load %struct.kstat*, %struct.kstat** %8, align 8
  %74 = getelementptr inbounds %struct.kstat, %struct.kstat* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NFS_MAXPATHLEN, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i64, i64* @NFS_MAXPATHLEN, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i8* @htonl(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  br label %94

85:                                               ; preds = %72, %4
  %86 = load %struct.kstat*, %struct.kstat** %8, align 8
  %87 = getelementptr inbounds %struct.kstat, %struct.kstat* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i8* @htonl(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %94

94:                                               ; preds = %85, %78
  %95 = load %struct.kstat*, %struct.kstat** %8, align 8
  %96 = getelementptr inbounds %struct.kstat, %struct.kstat* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @htonl(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @S_ISCHR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @S_ISBLK(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106, %94
  %111 = load %struct.kstat*, %struct.kstat** %8, align 8
  %112 = getelementptr inbounds %struct.kstat, %struct.kstat* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @new_encode_dev(i32 %113)
  %115 = call i8* @htonl(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  br label %124

119:                                              ; preds = %106
  %120 = call i8* @htonl(i32 -1)
  %121 = ptrtoint i8* %120 to i32
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  br label %124

124:                                              ; preds = %119, %110
  %125 = load %struct.kstat*, %struct.kstat** %8, align 8
  %126 = getelementptr inbounds %struct.kstat, %struct.kstat* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i8* @htonl(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  %133 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %134 = call i32 @fsid_source(%struct.svc_fh* %133)
  switch i32 %134, label %135 [
    i32 130, label %136
    i32 129, label %145
    i32 128, label %156
  ]

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %124, %135
  %137 = load %struct.kstat*, %struct.kstat** %8, align 8
  %138 = getelementptr inbounds %struct.kstat, %struct.kstat* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @new_encode_dev(i32 %139)
  %141 = call i8* @htonl(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %6, align 8
  store i32 %142, i32* %143, align 4
  br label %200

145:                                              ; preds = %124
  %146 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %147 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i8* @htonl(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %6, align 8
  store i32 %153, i32* %154, align 4
  br label %200

156:                                              ; preds = %124
  %157 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %158 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %13, align 4
  %165 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %166 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %13, align 4
  %174 = xor i32 %173, %172
  store i32 %174, i32* %13, align 4
  %175 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %176 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32*
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %13, align 4
  %184 = xor i32 %183, %182
  store i32 %184, i32* %13, align 4
  %185 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %186 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i32*
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %13, align 4
  %194 = xor i32 %193, %192
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i8* @htonl(i32 %195)
  %197 = ptrtoint i8* %196 to i32
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %6, align 8
  store i32 %197, i32* %198, align 4
  br label %200

200:                                              ; preds = %156, %145, %136
  %201 = load %struct.kstat*, %struct.kstat** %8, align 8
  %202 = getelementptr inbounds %struct.kstat, %struct.kstat* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i8* @htonl(i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %6, align 8
  store i32 %206, i32* %207, align 4
  %209 = load %struct.kstat*, %struct.kstat** %8, align 8
  %210 = getelementptr inbounds %struct.kstat, %struct.kstat* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i8* @htonl(i32 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %6, align 8
  store i32 %215, i32* %216, align 4
  %218 = load %struct.kstat*, %struct.kstat** %8, align 8
  %219 = getelementptr inbounds %struct.kstat, %struct.kstat* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %200
  %224 = load %struct.kstat*, %struct.kstat** %8, align 8
  %225 = getelementptr inbounds %struct.kstat, %struct.kstat* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sdiv i32 %227, 1000
  br label %230

229:                                              ; preds = %200
  br label %230

230:                                              ; preds = %229, %223
  %231 = phi i32 [ %228, %223 ], [ 0, %229 ]
  %232 = call i8* @htonl(i32 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = load i32*, i32** %6, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %6, align 8
  store i32 %233, i32* %234, align 4
  %236 = load %struct.kstat*, %struct.kstat** %8, align 8
  %237 = getelementptr inbounds %struct.kstat, %struct.kstat* %236, i32 0, i32 3
  %238 = bitcast %struct.timespec64* %12 to i8*
  %239 = bitcast %struct.timespec64* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 16, i1 false)
  %240 = load %struct.dentry*, %struct.dentry** %10, align 8
  %241 = call i32 @d_inode(%struct.dentry* %240)
  %242 = call i32 @lease_get_mtime(i32 %241, %struct.timespec64* %12)
  %243 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i8* @htonl(i32 %245)
  %247 = ptrtoint i8* %246 to i32
  %248 = load i32*, i32** %6, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %6, align 8
  store i32 %247, i32* %248, align 4
  %250 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %230
  %254 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sdiv i32 %255, 1000
  br label %258

257:                                              ; preds = %230
  br label %258

258:                                              ; preds = %257, %253
  %259 = phi i32 [ %256, %253 ], [ 0, %257 ]
  %260 = call i8* @htonl(i32 %259)
  %261 = ptrtoint i8* %260 to i32
  %262 = load i32*, i32** %6, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %6, align 8
  store i32 %261, i32* %262, align 4
  %264 = load %struct.kstat*, %struct.kstat** %8, align 8
  %265 = getelementptr inbounds %struct.kstat, %struct.kstat* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i8* @htonl(i32 %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load i32*, i32** %6, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %6, align 8
  store i32 %270, i32* %271, align 4
  %273 = load %struct.kstat*, %struct.kstat** %8, align 8
  %274 = getelementptr inbounds %struct.kstat, %struct.kstat* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %258
  %279 = load %struct.kstat*, %struct.kstat** %8, align 8
  %280 = getelementptr inbounds %struct.kstat, %struct.kstat* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sdiv i32 %282, 1000
  br label %285

284:                                              ; preds = %258
  br label %285

285:                                              ; preds = %284, %278
  %286 = phi i32 [ %283, %278 ], [ 0, %284 ]
  %287 = call i8* @htonl(i32 %286)
  %288 = ptrtoint i8* %287 to i32
  %289 = load i32*, i32** %6, align 8
  %290 = getelementptr inbounds i32, i32* %289, i32 1
  store i32* %290, i32** %6, align 8
  store i32 %288, i32* %289, align 4
  %291 = load i32*, i32** %6, align 8
  ret i32* %291
}

declare dso_local %struct.user_namespace* @nfsd_user_namespace(%struct.svc_rqst*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i64 @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @fsid_source(%struct.svc_fh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lease_get_mtime(i32, %struct.timespec64*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
