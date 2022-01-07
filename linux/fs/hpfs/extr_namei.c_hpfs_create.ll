; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32*, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i8*, i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hpfs_file_iops = common dso_local global i32 0, align 4
@hpfs_file_ops = common dso_local global i32 0, align 4
@hpfs_aops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hpfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.fnode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hpfs_dirent, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @hpfs_chk_name(i8* %27, i32* %11)
  store i32 %28, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %18, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ]
  store i32 %41, i32* %5, align 4
  br label %271

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hpfs_lock(i32 %45)
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %18, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.fnode* @hpfs_alloc_fnode(i32 %51, i32 %55, i32* %15, %struct.buffer_head** %13)
  store %struct.fnode* %56, %struct.fnode** %14, align 8
  %57 = load %struct.fnode*, %struct.fnode** %14, align 8
  %58 = icmp ne %struct.fnode* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %42
  br label %265

60:                                               ; preds = %42
  %61 = call i32 @memset(%struct.hpfs_dirent* %17, i32 0, i32 48)
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 146
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %65, %60
  %68 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 6
  store i8* %77, i8** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @local_get_seconds(i32 %81)
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 4
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 3
  store i8* %83, i8** %86, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.inode* @new_inode(i32 %89)
  store %struct.inode* %90, %struct.inode** %12, align 8
  %91 = load %struct.inode*, %struct.inode** %12, align 8
  %92 = icmp ne %struct.inode* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %67
  br label %257

94:                                               ; preds = %67
  %95 = load %struct.inode*, %struct.inode** %12, align 8
  %96 = call i32 @hpfs_init_inode(%struct.inode* %95)
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.inode*, %struct.inode** %12, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @S_IFREG, align 4
  %101 = load %struct.inode*, %struct.inode** %12, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.inode*, %struct.inode** %12, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, -74
  store i32 %108, i32* %106, align 8
  %109 = load %struct.inode*, %struct.inode** %12, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 12
  store i32* @hpfs_file_iops, i32** %110, align 8
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 11
  store i32* @hpfs_file_ops, i32** %112, align 8
  %113 = load %struct.inode*, %struct.inode** %12, align 8
  %114 = call i32 @set_nlink(%struct.inode* %113, i32 1)
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %12, align 8
  %119 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @le32_to_cpu(i8* %125)
  %127 = call i32 @local_to_gmt(i32 %123, i32 %126)
  %128 = load %struct.inode*, %struct.inode** %12, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 8
  %131 = load %struct.inode*, %struct.inode** %12, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i32 %127, i32* %133, align 8
  %134 = load %struct.inode*, %struct.inode** %12, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 10
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %127, i32* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %12, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 10
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.inode*, %struct.inode** %12, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.inode*, %struct.inode** %12, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.inode*, %struct.inode** %12, align 8
  %147 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %94
  %153 = load %struct.inode*, %struct.inode** %12, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, -147
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %152, %94
  %158 = load %struct.inode*, %struct.inode** %12, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.inode*, %struct.inode** %12, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 7
  store i64 0, i64* %161, align 8
  %162 = load %struct.inode*, %struct.inode** %12, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32* @hpfs_aops, i32** %164, align 8
  %165 = load %struct.inode*, %struct.inode** %12, align 8
  %166 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %165)
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @hpfs_add_dirent(%struct.inode* %168, i8* %169, i32 %170, %struct.hpfs_dirent* %17)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %175

174:                                              ; preds = %157
  br label %254

175:                                              ; preds = %157
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @EEXIST, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %18, align 4
  br label %254

181:                                              ; preds = %175
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.fnode*, %struct.fnode** %14, align 8
  %184 = getelementptr inbounds %struct.fnode, %struct.fnode* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.fnode*, %struct.fnode** %14, align 8
  %186 = getelementptr inbounds %struct.fnode, %struct.fnode* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = icmp ugt i32 %189, 15
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %194

192:                                              ; preds = %181
  %193 = load i32, i32* %11, align 4
  br label %194

194:                                              ; preds = %192, %191
  %195 = phi i32 [ 15, %191 ], [ %193, %192 ]
  %196 = call i32 @memcpy(i32 %187, i8* %188, i32 %195)
  %197 = load %struct.inode*, %struct.inode** %6, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @cpu_to_le32(i32 %199)
  %201 = load %struct.fnode*, %struct.fnode** %14, align 8
  %202 = getelementptr inbounds %struct.fnode, %struct.fnode* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %204 = call i32 @mark_buffer_dirty(%struct.buffer_head* %203)
  %205 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %206 = call i32 @brelse(%struct.buffer_head* %205)
  %207 = load %struct.inode*, %struct.inode** %12, align 8
  %208 = call i32 @insert_inode_hash(%struct.inode* %207)
  %209 = load %struct.inode*, %struct.inode** %12, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (...) @current_fsuid()
  %213 = call i32 @uid_eq(i32 %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %194
  %216 = load %struct.inode*, %struct.inode** %12, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (...) @current_fsgid()
  %220 = call i32 @gid_eq(i32 %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.inode*, %struct.inode** %12, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @S_IFREG, align 4
  %228 = or i32 %226, %227
  %229 = icmp ne i32 %225, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %222, %215, %194
  %231 = call i32 (...) @current_fsuid()
  %232 = load %struct.inode*, %struct.inode** %12, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  %234 = call i32 (...) @current_fsgid()
  %235 = load %struct.inode*, %struct.inode** %12, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @S_IFREG, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.inode*, %struct.inode** %12, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.inode*, %struct.inode** %12, align 8
  %243 = call i32 @hpfs_write_inode_nolock(%struct.inode* %242)
  br label %244

244:                                              ; preds = %230, %222
  %245 = load %struct.inode*, %struct.inode** %6, align 8
  %246 = call i32 @hpfs_update_directory_times(%struct.inode* %245)
  %247 = load %struct.dentry*, %struct.dentry** %7, align 8
  %248 = load %struct.inode*, %struct.inode** %12, align 8
  %249 = call i32 @d_instantiate(%struct.dentry* %247, %struct.inode* %248)
  %250 = load %struct.inode*, %struct.inode** %6, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @hpfs_unlock(i32 %252)
  store i32 0, i32* %5, align 4
  br label %271

254:                                              ; preds = %178, %174
  %255 = load %struct.inode*, %struct.inode** %12, align 8
  %256 = call i32 @iput(%struct.inode* %255)
  br label %257

257:                                              ; preds = %254, %93
  %258 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %259 = call i32 @brelse(%struct.buffer_head* %258)
  %260 = load %struct.inode*, %struct.inode** %6, align 8
  %261 = getelementptr inbounds %struct.inode, %struct.inode* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @hpfs_free_sectors(i32 %262, i32 %263, i32 1)
  br label %265

265:                                              ; preds = %257, %59
  %266 = load %struct.inode*, %struct.inode** %6, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @hpfs_unlock(i32 %268)
  %270 = load i32, i32* %18, align 4
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %265, %244, %40
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i32*, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_12__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @local_get_seconds(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @hpfs_update_directory_times(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
