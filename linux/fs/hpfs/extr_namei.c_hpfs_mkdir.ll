; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.fnode = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, i32, i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.dnode = type { i32, i8* }
%struct.TYPE_16__ = type { i32, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@hpfs_dir_iops = common dso_local global i32 0, align 4
@hpfs_dir_ops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@FNODE_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @hpfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca %struct.fnode*, align 8
  %14 = alloca %struct.dnode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hpfs_dirent, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @hpfs_chk_name(i8* %29, i32* %9)
  store i32 %30, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %3
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %20, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  store i32 %43, i32* %4, align 4
  br label %354

44:                                               ; preds = %3
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hpfs_lock(i32 %47)
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %20, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.fnode* @hpfs_alloc_fnode(i32 %53, i32 %57, i32* %16, %struct.buffer_head** %11)
  store %struct.fnode* %58, %struct.fnode** %13, align 8
  %59 = load %struct.fnode*, %struct.fnode** %13, align 8
  %60 = icmp ne %struct.fnode* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %44
  br label %348

62:                                               ; preds = %44
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call %struct.dnode* @hpfs_alloc_dnode(i32 %65, i32 %66, i32* %17, %struct.quad_buffer_head* %10)
  store %struct.dnode* %67, %struct.dnode** %14, align 8
  %68 = load %struct.dnode*, %struct.dnode** %14, align 8
  %69 = icmp ne %struct.dnode* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %340

71:                                               ; preds = %62
  %72 = call i32 @memset(%struct.hpfs_dirent* %19, i32 0, i32 48)
  %73 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 146
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %71
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 4
  store i8* %88, i8** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @local_get_seconds(i32 %92)
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 5
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 7
  store i8* %94, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.inode* @new_inode(i32 %100)
  store %struct.inode* %101, %struct.inode** %15, align 8
  %102 = load %struct.inode*, %struct.inode** %15, align 8
  %103 = icmp ne %struct.inode* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %79
  br label %333

105:                                              ; preds = %79
  %106 = load %struct.inode*, %struct.inode** %15, align 8
  %107 = call i32 @hpfs_init_inode(%struct.inode* %106)
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.inode*, %struct.inode** %15, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.inode*, %struct.inode** %15, align 8
  %115 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.inode*, %struct.inode** %15, align 8
  %119 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 7
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @le32_to_cpu(i8* %125)
  %127 = call i32 @local_to_gmt(i32 %123, i32 %126)
  %128 = load %struct.inode*, %struct.inode** %15, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 8
  %131 = load %struct.inode*, %struct.inode** %15, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 10
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store i32 %127, i32* %133, align 8
  %134 = load %struct.inode*, %struct.inode** %15, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 11
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i32 %127, i32* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %15, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 11
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.inode*, %struct.inode** %15, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 10
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.inode*, %struct.inode** %15, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.inode*, %struct.inode** %15, align 8
  %147 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* @S_IFDIR, align 4
  %150 = load %struct.inode*, %struct.inode** %15, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.inode*, %struct.inode** %15, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 8
  store i32* @hpfs_dir_iops, i32** %155, align 8
  %156 = load %struct.inode*, %struct.inode** %15, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 7
  store i32* @hpfs_dir_ops, i32** %157, align 8
  %158 = load %struct.inode*, %struct.inode** %15, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 2
  store i32 4, i32* %159, align 8
  %160 = load %struct.inode*, %struct.inode** %15, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 3
  store i32 2048, i32* %161, align 4
  %162 = load %struct.inode*, %struct.inode** %15, align 8
  %163 = call i32 @set_nlink(%struct.inode* %162, i32 2)
  %164 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %105
  %168 = load %struct.inode*, %struct.inode** %15, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, -147
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %167, %105
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @hpfs_add_dirent(%struct.inode* %173, i8* %174, i32 %175, %struct.hpfs_dirent* %19)
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %18, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %330

180:                                              ; preds = %172
  %181 = load i32, i32* %18, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* @EEXIST, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %20, align 4
  br label %330

186:                                              ; preds = %180
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.fnode*, %struct.fnode** %13, align 8
  %189 = getelementptr inbounds %struct.fnode, %struct.fnode* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.fnode*, %struct.fnode** %13, align 8
  %191 = getelementptr inbounds %struct.fnode, %struct.fnode* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = icmp ugt i32 %194, 15
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %199

197:                                              ; preds = %186
  %198 = load i32, i32* %9, align 4
  br label %199

199:                                              ; preds = %197, %196
  %200 = phi i32 [ 15, %196 ], [ %198, %197 ]
  %201 = call i32 @memcpy(i32 %192, i8* %193, i32 %200)
  %202 = load %struct.inode*, %struct.inode** %5, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = load %struct.fnode*, %struct.fnode** %13, align 8
  %207 = getelementptr inbounds %struct.fnode, %struct.fnode* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* @FNODE_dir, align 4
  %209 = load %struct.fnode*, %struct.fnode** %13, align 8
  %210 = getelementptr inbounds %struct.fnode, %struct.fnode* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.fnode*, %struct.fnode** %13, align 8
  %214 = getelementptr inbounds %struct.fnode, %struct.fnode* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 7, i32* %215, align 8
  %216 = load %struct.fnode*, %struct.fnode** %13, align 8
  %217 = getelementptr inbounds %struct.fnode, %struct.fnode* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = call i32 @cpu_to_le16(i32 20)
  %220 = load %struct.fnode*, %struct.fnode** %13, align 8
  %221 = getelementptr inbounds %struct.fnode, %struct.fnode* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* %17, align 4
  %224 = call i8* @cpu_to_le32(i32 %223)
  %225 = load %struct.fnode*, %struct.fnode** %13, align 8
  %226 = getelementptr inbounds %struct.fnode, %struct.fnode* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  store i8* %224, i8** %230, align 8
  %231 = call i8* @cpu_to_le32(i32 -1)
  %232 = load %struct.fnode*, %struct.fnode** %13, align 8
  %233 = getelementptr inbounds %struct.fnode, %struct.fnode* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  store i8* %231, i8** %237, align 8
  %238 = load %struct.dnode*, %struct.dnode** %14, align 8
  %239 = getelementptr inbounds %struct.dnode, %struct.dnode* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  %240 = load i32, i32* %16, align 4
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %struct.dnode*, %struct.dnode** %14, align 8
  %243 = getelementptr inbounds %struct.dnode, %struct.dnode* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  %244 = load %struct.inode*, %struct.inode** %5, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.dnode*, %struct.dnode** %14, align 8
  %248 = call %struct.hpfs_dirent* @hpfs_add_de(i32 %246, %struct.dnode* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 0)
  store %struct.hpfs_dirent* %248, %struct.hpfs_dirent** %12, align 8
  %249 = load %struct.inode*, %struct.inode** %5, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @local_get_seconds(i32 %251)
  %253 = call i8* @cpu_to_le32(i32 %252)
  %254 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %255 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %254, i32 0, i32 5
  store i8* %253, i8** %255, align 8
  %256 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %257 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %256, i32 0, i32 6
  store i8* %253, i8** %257, align 8
  %258 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %259 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %258, i32 0, i32 7
  store i8* %253, i8** %259, align 8
  %260 = load i32, i32* %7, align 4
  %261 = and i32 %260, 146
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %199
  %264 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %265 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  br label %266

266:                                              ; preds = %263, %199
  %267 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %268 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  %269 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %270 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %269, i32 0, i32 3
  store i32 1, i32* %270, align 4
  %271 = load i32, i32* %16, align 4
  %272 = call i8* @cpu_to_le32(i32 %271)
  %273 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %274 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %273, i32 0, i32 4
  store i8* %272, i8** %274, align 8
  %275 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %276 = call i32 @mark_buffer_dirty(%struct.buffer_head* %275)
  %277 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %278 = call i32 @brelse(%struct.buffer_head* %277)
  %279 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %10)
  %280 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  %281 = load %struct.inode*, %struct.inode** %5, align 8
  %282 = call i32 @inc_nlink(%struct.inode* %281)
  %283 = load %struct.inode*, %struct.inode** %15, align 8
  %284 = call i32 @insert_inode_hash(%struct.inode* %283)
  %285 = load %struct.inode*, %struct.inode** %15, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (...) @current_fsuid()
  %289 = call i32 @uid_eq(i32 %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %266
  %292 = load %struct.inode*, %struct.inode** %15, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (...) @current_fsgid()
  %296 = call i32 @gid_eq(i32 %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %291
  %299 = load %struct.inode*, %struct.inode** %15, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @S_IFDIR, align 4
  %304 = or i32 %302, %303
  %305 = icmp ne i32 %301, %304
  br i1 %305, label %306, label %320

306:                                              ; preds = %298, %291, %266
  %307 = call i32 (...) @current_fsuid()
  %308 = load %struct.inode*, %struct.inode** %15, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 6
  store i32 %307, i32* %309, align 8
  %310 = call i32 (...) @current_fsgid()
  %311 = load %struct.inode*, %struct.inode** %15, align 8
  %312 = getelementptr inbounds %struct.inode, %struct.inode* %311, i32 0, i32 5
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @S_IFDIR, align 4
  %315 = or i32 %313, %314
  %316 = load %struct.inode*, %struct.inode** %15, align 8
  %317 = getelementptr inbounds %struct.inode, %struct.inode* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  %318 = load %struct.inode*, %struct.inode** %15, align 8
  %319 = call i32 @hpfs_write_inode_nolock(%struct.inode* %318)
  br label %320

320:                                              ; preds = %306, %298
  %321 = load %struct.inode*, %struct.inode** %5, align 8
  %322 = call i32 @hpfs_update_directory_times(%struct.inode* %321)
  %323 = load %struct.dentry*, %struct.dentry** %6, align 8
  %324 = load %struct.inode*, %struct.inode** %15, align 8
  %325 = call i32 @d_instantiate(%struct.dentry* %323, %struct.inode* %324)
  %326 = load %struct.inode*, %struct.inode** %5, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @hpfs_unlock(i32 %328)
  store i32 0, i32* %4, align 4
  br label %354

330:                                              ; preds = %183, %179
  %331 = load %struct.inode*, %struct.inode** %15, align 8
  %332 = call i32 @iput(%struct.inode* %331)
  br label %333

333:                                              ; preds = %330, %104
  %334 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  %335 = load %struct.inode*, %struct.inode** %5, align 8
  %336 = getelementptr inbounds %struct.inode, %struct.inode* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %17, align 4
  %339 = call i32 @hpfs_free_dnode(i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %333, %70
  %341 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %342 = call i32 @brelse(%struct.buffer_head* %341)
  %343 = load %struct.inode*, %struct.inode** %5, align 8
  %344 = getelementptr inbounds %struct.inode, %struct.inode* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = call i32 @hpfs_free_sectors(i32 %345, i32 %346, i32 1)
  br label %348

348:                                              ; preds = %340, %61
  %349 = load %struct.inode*, %struct.inode** %5, align 8
  %350 = getelementptr inbounds %struct.inode, %struct.inode* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @hpfs_unlock(i32 %351)
  %353 = load i32, i32* %20, align 4
  store i32 %353, i32* %4, align 4
  br label %354

354:                                              ; preds = %348, %320, %42
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i32*, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_16__* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.dnode* @hpfs_alloc_dnode(i32, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @local_get_seconds(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.hpfs_dirent* @hpfs_add_de(i32, %struct.dnode*, i8*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

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

declare dso_local i32 @hpfs_free_dnode(i32, i32) #1

declare dso_local i32 @hpfs_free_sectors(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
