; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd_file = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.inode = type { i64, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@NFSD_FILE_HASH_BITS = common dso_local global i32 0, align 4
@nfserr_jukebox = common dso_local global i64 0, align 8
@nfsd_file_hashtbl = common dso_local global %struct.TYPE_2__* null, align 8
@NFSD_FILE_PENDING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@NFSD_FILE_HASHED = common dso_local global i32 0, align 4
@nfsd_file_cache_hits = common dso_local global i32 0, align 4
@NFSD_MAY_NOT_BREAK_LEASE = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_FILE_BREAK_READ = common dso_local global i32 0, align 4
@NFSD_FILE_BREAK_WRITE = common dso_local global i32 0, align 4
@nfsd_file_lru = common dso_local global i32 0, align 4
@nfsd_filecache_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_file_acquire(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, %struct.nfsd_file** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsd_file**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nfsd_file*, align 8
  %13 = alloca %struct.nfsd_file*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nfsd_file** %3, %struct.nfsd_file*** %9, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %19 = call %struct.net* @SVC_NET(%struct.svc_rqst* %18)
  store %struct.net* %19, %struct.net** %11, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %21 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %22 = load i32, i32* @S_IFREG, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @fh_verify(%struct.svc_rqst* %20, %struct.svc_fh* %21, i32 %22, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @nfs_ok, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %5, align 8
  br label %294

32:                                               ; preds = %4
  %33 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %34 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.inode* @d_inode(i32 %35)
  store %struct.inode* %36, %struct.inode** %14, align 8
  %37 = load %struct.inode*, %struct.inode** %14, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NFSD_FILE_HASH_BITS, align 4
  %41 = call i64 @hash_long(i32 %39, i32 %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %106, %32
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.inode*, %struct.inode** %14, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.net*, %struct.net** %11, align 8
  %49 = call %struct.nfsd_file* @nfsd_file_find_locked(%struct.inode* %45, i32 %46, i32 %47, %struct.net* %48)
  store %struct.nfsd_file* %49, %struct.nfsd_file** %12, align 8
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %52 = icmp ne %struct.nfsd_file* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %95

54:                                               ; preds = %43
  %55 = load %struct.inode*, %struct.inode** %14, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.net*, %struct.net** %11, align 8
  %59 = call %struct.nfsd_file* @nfsd_file_alloc(%struct.inode* %55, i32 %56, i32 %57, %struct.net* %58)
  store %struct.nfsd_file* %59, %struct.nfsd_file** %13, align 8
  %60 = load %struct.nfsd_file*, %struct.nfsd_file** %13, align 8
  %61 = icmp ne %struct.nfsd_file* %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* @nfserr_jukebox, align 8
  %68 = call i32 @trace_nfsd_file_acquire(%struct.svc_rqst* %63, i32 %64, %struct.inode* %65, i32 %66, %struct.nfsd_file* null, i64 %67)
  %69 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %69, i64* %5, align 8
  br label %294

70:                                               ; preds = %54
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.inode*, %struct.inode** %14, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.net*, %struct.net** %11, align 8
  %81 = call %struct.nfsd_file* @nfsd_file_find_locked(%struct.inode* %77, i32 %78, i32 %79, %struct.net* %80)
  store %struct.nfsd_file* %81, %struct.nfsd_file** %12, align 8
  %82 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %83 = icmp eq %struct.nfsd_file* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %180

85:                                               ; preds = %70
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.nfsd_file*, %struct.nfsd_file** %13, align 8
  %93 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %92, i32 0, i32 6
  %94 = call i32 @nfsd_file_slab_free(i32* %93)
  br label %95

95:                                               ; preds = %85, %53
  %96 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %97 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %96, i32 0, i32 0
  %98 = load i32, i32* @NFSD_FILE_PENDING, align 4
  %99 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %100 = call i32 @wait_on_bit(i32* %97, i32 %98, i32 %99)
  %101 = load i32, i32* @NFSD_FILE_HASHED, align 4
  %102 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %103 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %102, i32 0, i32 0
  %104 = call i64 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %95
  %107 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %108 = call i32 @nfsd_file_put_noref(%struct.nfsd_file* %107)
  br label %43

109:                                              ; preds = %95
  %110 = load i32, i32* @nfsd_file_cache_hits, align 4
  %111 = call i32 @this_cpu_inc(i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @NFSD_MAY_NOT_BREAK_LEASE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %160, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* @NFSD_FILE_BREAK_READ, align 4
  %121 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %122 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %121, i32 0, i32 0
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %116
  %126 = load i32, i32* @NFSD_FILE_BREAK_WRITE, align 4
  %127 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %128 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %127, i32 0, i32 0
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %125
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %131, %116
  %135 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %136 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @file_inode(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @nfsd_open_break_lease(i32 %138, i32 %139)
  %141 = call i64 @nfserrno(i32 %140)
  store i64 %141, i64* %10, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @nfs_ok, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %134
  %146 = load i32, i32* @NFSD_FILE_BREAK_READ, align 4
  %147 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %148 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %147, i32 0, i32 0
  %149 = call i32 @clear_bit(i32 %146, i32* %148)
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load i32, i32* @NFSD_FILE_BREAK_WRITE, align 4
  %154 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %155 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %154, i32 0, i32 0
  %156 = call i32 @clear_bit(i32 %153, i32* %155)
  br label %157

157:                                              ; preds = %152, %145
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %131, %125
  br label %160

160:                                              ; preds = %159, %109
  br label %161

161:                                              ; preds = %284, %160
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @nfs_ok, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %167 = load %struct.nfsd_file**, %struct.nfsd_file*** %9, align 8
  store %struct.nfsd_file* %166, %struct.nfsd_file** %167, align 8
  br label %171

168:                                              ; preds = %161
  %169 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %170 = call i32 @nfsd_file_put(%struct.nfsd_file* %169)
  store %struct.nfsd_file* null, %struct.nfsd_file** %12, align 8
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.inode*, %struct.inode** %14, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @trace_nfsd_file_acquire(%struct.svc_rqst* %172, i32 %173, %struct.inode* %174, i32 %175, %struct.nfsd_file* %176, i64 %177)
  %179 = load i64, i64* %10, align 8
  store i64 %179, i64* %5, align 8
  br label %294

180:                                              ; preds = %84
  %181 = load %struct.nfsd_file*, %struct.nfsd_file** %13, align 8
  store %struct.nfsd_file* %181, %struct.nfsd_file** %12, align 8
  %182 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %183 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %182, i32 0, i32 5
  %184 = call i32 @atomic_inc(i32* %183)
  %185 = load i32, i32* @NFSD_FILE_HASHED, align 4
  %186 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %187 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %186, i32 0, i32 0
  %188 = call i32 @__set_bit(i32 %185, i32* %187)
  %189 = load i32, i32* @NFSD_FILE_PENDING, align 4
  %190 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %191 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %190, i32 0, i32 0
  %192 = call i32 @__set_bit(i32 %189, i32* %191)
  %193 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %194 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %193, i32 0, i32 4
  %195 = call i32 @list_lru_add(i32* @nfsd_file_lru, i32* %194)
  %196 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %197 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %196, i32 0, i32 3
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %199 = load i32, i32* %15, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 3
  %203 = call i32 @hlist_add_head_rcu(i32* %197, i32* %202)
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %205 = load i32, i32* %15, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %212 = load i32, i32* %15, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %218 = load i32, i32* %15, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @max(i32 %216, i32 %222)
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %225 = load i32, i32* %15, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  store i32 %223, i32* %228, align 4
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %230 = load i32, i32* %15, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = call i32 @spin_unlock(i32* %233)
  %235 = call i32 @atomic_long_inc(i32* @nfsd_filecache_count)
  %236 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %237 = call i64 @nfsd_file_mark_find_or_create(%struct.nfsd_file* %236)
  %238 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %239 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %238, i32 0, i32 2
  store i64 %237, i64* %239, align 8
  %240 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %241 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %180
  %245 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %246 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %247 = load i32, i32* @S_IFREG, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %250 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %249, i32 0, i32 1
  %251 = call i64 @nfsd_open_verified(%struct.svc_rqst* %245, %struct.svc_fh* %246, i32 %247, i32 %248, i32* %250)
  store i64 %251, i64* %10, align 8
  br label %254

252:                                              ; preds = %180
  %253 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %253, i64* %10, align 8
  br label %254

254:                                              ; preds = %252, %244
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* @nfs_ok, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %263, label %258

258:                                              ; preds = %254
  %259 = load %struct.inode*, %struct.inode** %14, align 8
  %260 = getelementptr inbounds %struct.inode, %struct.inode* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %284

263:                                              ; preds = %258, %254
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %265 = load i32, i32* %15, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = call i32 @spin_lock(i32* %268)
  %270 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %271 = call i32 @nfsd_file_unhash(%struct.nfsd_file* %270)
  store i32 %271, i32* %17, align 4
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd_file_hashtbl, align 8
  %273 = load i32, i32* %15, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = call i32 @spin_unlock(i32* %276)
  %278 = load i32, i32* %17, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %263
  %281 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %282 = call i32 @nfsd_file_put_noref(%struct.nfsd_file* %281)
  br label %283

283:                                              ; preds = %280, %263
  br label %284

284:                                              ; preds = %283, %258
  %285 = load i32, i32* @NFSD_FILE_PENDING, align 4
  %286 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %287 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %286, i32 0, i32 0
  %288 = call i32 @clear_bit_unlock(i32 %285, i32* %287)
  %289 = call i32 (...) @smp_mb__after_atomic()
  %290 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %291 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %290, i32 0, i32 0
  %292 = load i32, i32* @NFSD_FILE_PENDING, align 4
  %293 = call i32 @wake_up_bit(i32* %291, i32 %292)
  br label %161

294:                                              ; preds = %171, %62, %30
  %295 = load i64, i64* %5, align 8
  ret i64 %295
}

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @hash_long(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfsd_file* @nfsd_file_find_locked(%struct.inode*, i32, i32, %struct.net*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nfsd_file* @nfsd_file_alloc(%struct.inode*, i32, i32, %struct.net*) #1

declare dso_local i32 @trace_nfsd_file_acquire(%struct.svc_rqst*, i32, %struct.inode*, i32, %struct.nfsd_file*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd_file_slab_free(i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfsd_file_put_noref(%struct.nfsd_file*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @nfsd_open_break_lease(i32, i32) #1

declare dso_local i32 @file_inode(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @list_lru_add(i32*, i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i64 @nfsd_file_mark_find_or_create(%struct.nfsd_file*) #1

declare dso_local i64 @nfsd_open_verified(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, i32*) #1

declare dso_local i32 @nfsd_file_unhash(%struct.nfsd_file*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
