; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.super_block*, %struct.TYPE_6__*, i32*, i32 }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.dentry = type { i32 }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.metapage = type { i32 }
%struct.tblock = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"jfs_symlink: dip:0x%p name:%s\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@COMMIT_CREATE = common dso_local global i32 0, align 4
@IDATASIZE = common dso_local global i32 0, align 4
@jfs_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@INLINEEA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"jfs_symlink: fast symlink added  ssize:%d name:%s \00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"jfs_symlink: allocate extent ip:0x%p\00", align 1
@jfs_symlink_inode_operations = common dso_local global i32 0, align 4
@jfs_aops = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@COMMIT_PWMAP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"jfs_symlink: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @jfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.component_name, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btstack, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.metapage*, align 8
  %19 = alloca %struct.super_block*, align 8
  %20 = alloca %struct.tblock*, align 8
  %21 = alloca [2 x %struct.inode*], align 16
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = call %struct.inode* @d_inode(%struct.dentry* %23)
  store %struct.inode* %24, %struct.inode** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %25, i8* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @dquot_initialize(%struct.inode* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %303

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @get_UCSname(%struct.component_name* %10, %struct.dentry* %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %303

41:                                               ; preds = %33
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load i32, i32* @S_IFLNK, align 4
  %44 = or i32 %43, 511
  %45 = call %struct.inode* @ialloc(%struct.inode* %42, i32 %44)
  store %struct.inode* %45, %struct.inode** %13, align 8
  %46 = load %struct.inode*, %struct.inode** %13, align 8
  %47 = call i64 @IS_ERR(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.inode*, %struct.inode** %13, align 8
  %51 = call i32 @PTR_ERR(%struct.inode* %50)
  store i32 %51, i32* %7, align 4
  br label %301

52:                                               ; preds = %41
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 5
  %55 = load %struct.super_block*, %struct.super_block** %54, align 8
  %56 = call i32 @txBegin(%struct.super_block* %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %61 = call i32 @mutex_lock_nested(i32* %59, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %13, align 8
  %63 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %66 = call i32 @mutex_lock_nested(i32* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.inode*, %struct.inode** %13, align 8
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = call i32 @jfs_init_security(i32 %67, %struct.inode* %68, %struct.inode* %69, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %276

76:                                               ; preds = %52
  %77 = load i32, i32* %8, align 4
  %78 = call %struct.tblock* @tid_to_tblock(i32 %77)
  store %struct.tblock* %78, %struct.tblock** %20, align 8
  %79 = load i32, i32* @COMMIT_CREATE, align 4
  %80 = load %struct.tblock*, %struct.tblock** %20, align 8
  %81 = getelementptr inbounds %struct.tblock, %struct.tblock* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.inode*, %struct.inode** %13, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tblock*, %struct.tblock** %20, align 8
  %88 = getelementptr inbounds %struct.tblock, %struct.tblock* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tblock*, %struct.tblock** %20, align 8
  %94 = getelementptr inbounds %struct.tblock, %struct.tblock* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, 511
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.inode*, %struct.inode** %13, align 8
  %102 = call i32 @xtInitRoot(i32 %100, %struct.inode* %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @IDATASIZE, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %76
  %107 = load %struct.inode*, %struct.inode** %13, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 7
  store i32* @jfs_fast_symlink_inode_operations, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %13, align 8
  %110 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.inode*, %struct.inode** %13, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.inode*, %struct.inode** %13, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @memcpy(i32 %117, i8* %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.inode*, %struct.inode** %13, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp ugt i64 %126, 4
  br i1 %127, label %128, label %136

128:                                              ; preds = %106
  %129 = load i32, i32* @INLINEEA, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.inode*, %struct.inode** %13, align 8
  %132 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %131)
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %130
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %128, %106
  %137 = load i32, i32* %11, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %137, i8* %138)
  br label %231

140:                                              ; preds = %76
  %141 = load %struct.inode*, %struct.inode** %13, align 8
  %142 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %13, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 7
  store i32* @jfs_symlink_inode_operations, i32** %144, align 8
  %145 = load %struct.inode*, %struct.inode** %13, align 8
  %146 = call i32 @inode_nohighmem(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %13, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 6
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32* @jfs_aops, i32** %150, align 8
  %151 = load %struct.inode*, %struct.inode** %13, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 5
  %153 = load %struct.super_block*, %struct.super_block** %152, align 8
  store %struct.super_block* %153, %struct.super_block** %19, align 8
  %154 = load %struct.super_block*, %struct.super_block** %19, align 8
  %155 = call %struct.TYPE_7__* @JFS_SBI(%struct.super_block* %154)
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %15, align 4
  %163 = xor i32 %162, -1
  %164 = and i32 %161, %163
  store i32 %164, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.super_block*, %struct.super_block** %19, align 8
  %167 = call %struct.TYPE_7__* @JFS_SBI(%struct.super_block* %166)
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %165, %169
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.inode*, %struct.inode** %13, align 8
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @xtInsert(i32 %171, %struct.inode* %172, i32 0, i32 0, i32 %173, i32* %17, i32 0)
  store i32 %174, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %140
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @txAbort(i32 %177, i32 0)
  br label %276

179:                                              ; preds = %140
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load %struct.inode*, %struct.inode** %13, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %206, %179
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %230

187:                                              ; preds = %184
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @PSIZE, align 4
  %190 = call i32 @min(i32 %188, i32 %189)
  store i32 %190, i32* %22, align 4
  %191 = load %struct.inode*, %struct.inode** %13, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* @PSIZE, align 4
  %194 = call %struct.metapage* @get_metapage(%struct.inode* %191, i32 %192, i32 %193, i32 1)
  store %struct.metapage* %194, %struct.metapage** %18, align 8
  %195 = load %struct.metapage*, %struct.metapage** %18, align 8
  %196 = icmp eq %struct.metapage* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %187
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.inode*, %struct.inode** %13, align 8
  %200 = load i32, i32* @COMMIT_PWMAP, align 4
  %201 = call i32 @xtTruncate(i32 %198, %struct.inode* %199, i32 0, i32 %200)
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @txAbort(i32 %204, i32 0)
  br label %276

206:                                              ; preds = %187
  %207 = load %struct.metapage*, %struct.metapage** %18, align 8
  %208 = getelementptr inbounds %struct.metapage, %struct.metapage* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %22, align 4
  %212 = call i32 @memcpy(i32 %209, i8* %210, i32 %211)
  %213 = load %struct.metapage*, %struct.metapage** %18, align 8
  %214 = call i32 @flush_metapage(%struct.metapage* %213)
  %215 = load i32, i32* %22, align 4
  %216 = load i32, i32* %11, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %22, align 4
  %219 = load i8*, i8** %6, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %6, align 8
  %222 = load %struct.super_block*, %struct.super_block** %19, align 8
  %223 = call %struct.TYPE_7__* @JFS_SBI(%struct.super_block* %222)
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %17, align 4
  br label %184

230:                                              ; preds = %184
  br label %231

231:                                              ; preds = %230, %136
  %232 = load %struct.inode*, %struct.inode** %4, align 8
  %233 = load i32, i32* @JFS_CREATE, align 4
  %234 = call i32 @dtSearch(%struct.inode* %232, %struct.component_name* %10, i32* %9, %struct.btstack* %12, i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  %238 = load %struct.inode*, %struct.inode** %13, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.inode*, %struct.inode** %4, align 8
  %243 = call i32 @dtInsert(i32 %241, %struct.inode* %242, %struct.component_name* %10, i32* %9, %struct.btstack* %12)
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %237, %231
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = load i32, i32* %14, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.inode*, %struct.inode** %13, align 8
  %253 = load i32, i32* @COMMIT_PWMAP, align 4
  %254 = call i32 @xtTruncate(i32 %251, %struct.inode* %252, i32 0, i32 %253)
  br label %255

255:                                              ; preds = %250, %247
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @txAbort(i32 %256, i32 0)
  br label %276

258:                                              ; preds = %244
  %259 = load %struct.inode*, %struct.inode** %13, align 8
  %260 = call i32 @mark_inode_dirty(%struct.inode* %259)
  %261 = load %struct.inode*, %struct.inode** %4, align 8
  %262 = call i32 @current_time(%struct.inode* %261)
  %263 = load %struct.inode*, %struct.inode** %4, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.inode*, %struct.inode** %4, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 3
  store i32 %262, i32* %266, align 4
  %267 = load %struct.inode*, %struct.inode** %4, align 8
  %268 = call i32 @mark_inode_dirty(%struct.inode* %267)
  %269 = load %struct.inode*, %struct.inode** %4, align 8
  %270 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %21, i64 0, i64 0
  store %struct.inode* %269, %struct.inode** %270, align 16
  %271 = load %struct.inode*, %struct.inode** %13, align 8
  %272 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %21, i64 0, i64 1
  store %struct.inode* %271, %struct.inode** %272, align 8
  %273 = load i32, i32* %8, align 4
  %274 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %21, i64 0, i64 0
  %275 = call i32 @txCommit(i32 %273, i32 2, %struct.inode** %274, i32 0)
  store i32 %275, i32* %7, align 4
  br label %276

276:                                              ; preds = %258, %255, %197, %176, %75
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @txEnd(i32 %277)
  %279 = load %struct.inode*, %struct.inode** %13, align 8
  %280 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %279)
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = call i32 @mutex_unlock(i32* %281)
  %283 = load %struct.inode*, %struct.inode** %4, align 8
  %284 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %283)
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = call i32 @mutex_unlock(i32* %285)
  %287 = load i32, i32* %7, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %276
  %290 = load %struct.inode*, %struct.inode** %13, align 8
  %291 = call i32 @free_ea_wmap(%struct.inode* %290)
  %292 = load %struct.inode*, %struct.inode** %13, align 8
  %293 = call i32 @clear_nlink(%struct.inode* %292)
  %294 = load %struct.inode*, %struct.inode** %13, align 8
  %295 = call i32 @discard_new_inode(%struct.inode* %294)
  br label %300

296:                                              ; preds = %276
  %297 = load %struct.dentry*, %struct.dentry** %5, align 8
  %298 = load %struct.inode*, %struct.inode** %13, align 8
  %299 = call i32 @d_instantiate_new(%struct.dentry* %297, %struct.inode* %298)
  br label %300

300:                                              ; preds = %296, %289
  br label %301

301:                                              ; preds = %300, %49
  %302 = call i32 @free_UCSname(%struct.component_name* %10)
  br label %303

303:                                              ; preds = %301, %40, %32
  %304 = load i32, i32* %7, align 4
  %305 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* %7, align 4
  ret i32 %306
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @txBegin(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*, i32*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @xtInitRoot(i32, %struct.inode*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local %struct.TYPE_7__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @xtInsert(i32, %struct.inode*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @xtTruncate(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @flush_metapage(%struct.metapage*) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_ea_wmap(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
