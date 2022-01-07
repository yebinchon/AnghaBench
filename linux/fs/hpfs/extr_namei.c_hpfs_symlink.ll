; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_12__, i32*, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i8*, i32 }
%struct.hpfs_dirent = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@hpfs_symlink_aops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @hpfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.fnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hpfs_dirent, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @hpfs_chk_name(i8* %25, i32* %9)
  store i32 %26, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %16, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %4, align 4
  br label %241

40:                                               ; preds = %3
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hpfs_lock(i32 %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_13__* @hpfs_sb(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hpfs_unlock(i32 %55)
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %241

59:                                               ; preds = %40
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.fnode* @hpfs_alloc_fnode(i32 %64, i32 %68, i32* %12, %struct.buffer_head** %10)
  store %struct.fnode* %69, %struct.fnode** %11, align 8
  %70 = load %struct.fnode*, %struct.fnode** %11, align 8
  %71 = icmp ne %struct.fnode* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %235

73:                                               ; preds = %59
  %74 = call i32 @memset(%struct.hpfs_dirent* %14, i32 0, i32 40)
  %75 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 5
  store i8* %84, i8** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @local_get_seconds(i32 %88)
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.inode* @new_inode(i32 %96)
  store %struct.inode* %97, %struct.inode** %15, align 8
  %98 = load %struct.inode*, %struct.inode** %15, align 8
  %99 = icmp ne %struct.inode* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %73
  br label %227

101:                                              ; preds = %73
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.inode*, %struct.inode** %15, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.inode*, %struct.inode** %15, align 8
  %106 = call i32 @hpfs_init_inode(%struct.inode* %105)
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.inode*, %struct.inode** %15, align 8
  %111 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %110)
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @le32_to_cpu(i8* %117)
  %119 = call i32 @local_to_gmt(i32 %115, i32 %118)
  %120 = load %struct.inode*, %struct.inode** %15, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 8
  %123 = load %struct.inode*, %struct.inode** %15, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 %119, i32* %125, align 8
  %126 = load %struct.inode*, %struct.inode** %15, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  store i32 %119, i32* %128, align 8
  %129 = load %struct.inode*, %struct.inode** %15, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load %struct.inode*, %struct.inode** %15, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.inode*, %struct.inode** %15, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.inode*, %struct.inode** %15, align 8
  %139 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %138)
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @S_IFLNK, align 4
  %142 = or i32 %141, 511
  %143 = load %struct.inode*, %struct.inode** %15, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = call i32 (...) @current_fsuid()
  %146 = load %struct.inode*, %struct.inode** %15, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  %148 = call i32 (...) @current_fsgid()
  %149 = load %struct.inode*, %struct.inode** %15, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load %struct.inode*, %struct.inode** %15, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load %struct.inode*, %struct.inode** %15, align 8
  %154 = call i32 @set_nlink(%struct.inode* %153, i32 1)
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = load %struct.inode*, %struct.inode** %15, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load %struct.inode*, %struct.inode** %15, align 8
  %160 = call i32 @inode_nohighmem(%struct.inode* %159)
  %161 = load %struct.inode*, %struct.inode** %15, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 5
  store i32* @page_symlink_inode_operations, i32** %162, align 8
  %163 = load %struct.inode*, %struct.inode** %15, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i32* @hpfs_symlink_aops, i32** %165, align 8
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @hpfs_add_dirent(%struct.inode* %166, i8* %167, i32 %168, %struct.hpfs_dirent* %14)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %173

172:                                              ; preds = %101
  br label %224

173:                                              ; preds = %101
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* @EEXIST, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %16, align 4
  br label %224

179:                                              ; preds = %173
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.fnode*, %struct.fnode** %11, align 8
  %182 = getelementptr inbounds %struct.fnode, %struct.fnode* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.fnode*, %struct.fnode** %11, align 8
  %184 = getelementptr inbounds %struct.fnode, %struct.fnode* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %9, align 4
  %188 = icmp ugt i32 %187, 15
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %192

190:                                              ; preds = %179
  %191 = load i32, i32* %9, align 4
  br label %192

192:                                              ; preds = %190, %189
  %193 = phi i32 [ 15, %189 ], [ %191, %190 ]
  %194 = call i32 @memcpy(i32 %185, i8* %186, i32 %193)
  %195 = load %struct.inode*, %struct.inode** %5, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @cpu_to_le32(i32 %197)
  %199 = load %struct.fnode*, %struct.fnode** %11, align 8
  %200 = getelementptr inbounds %struct.fnode, %struct.fnode* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load %struct.inode*, %struct.inode** %15, align 8
  %202 = load %struct.fnode*, %struct.fnode** %11, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @strlen(i8* %204)
  %206 = call i32 @hpfs_set_ea(%struct.inode* %201, %struct.fnode* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %203, i32 %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %208 = call i32 @mark_buffer_dirty(%struct.buffer_head* %207)
  %209 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %210 = call i32 @brelse(%struct.buffer_head* %209)
  %211 = load %struct.inode*, %struct.inode** %15, align 8
  %212 = call i32 @insert_inode_hash(%struct.inode* %211)
  %213 = load %struct.inode*, %struct.inode** %15, align 8
  %214 = call i32 @hpfs_write_inode_nolock(%struct.inode* %213)
  %215 = load %struct.inode*, %struct.inode** %5, align 8
  %216 = call i32 @hpfs_update_directory_times(%struct.inode* %215)
  %217 = load %struct.dentry*, %struct.dentry** %6, align 8
  %218 = load %struct.inode*, %struct.inode** %15, align 8
  %219 = call i32 @d_instantiate(%struct.dentry* %217, %struct.inode* %218)
  %220 = load %struct.inode*, %struct.inode** %5, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @hpfs_unlock(i32 %222)
  store i32 0, i32* %4, align 4
  br label %241

224:                                              ; preds = %176, %172
  %225 = load %struct.inode*, %struct.inode** %15, align 8
  %226 = call i32 @iput(%struct.inode* %225)
  br label %227

227:                                              ; preds = %224, %100
  %228 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %229 = call i32 @brelse(%struct.buffer_head* %228)
  %230 = load %struct.inode*, %struct.inode** %5, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @hpfs_free_sectors(i32 %232, i32 %233, i32 1)
  br label %235

235:                                              ; preds = %227, %72
  %236 = load %struct.inode*, %struct.inode** %5, align 8
  %237 = getelementptr inbounds %struct.inode, %struct.inode* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @hpfs_unlock(i32 %238)
  %240 = load i32, i32* %16, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %235, %192, %52, %38
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.TYPE_13__* @hpfs_sb(i32) #1

declare dso_local i32 @hpfs_unlock(i32) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i32*, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_14__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @local_get_seconds(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hpfs_set_ea(%struct.inode*, %struct.fnode*, i8*, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @hpfs_update_directory_times(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
