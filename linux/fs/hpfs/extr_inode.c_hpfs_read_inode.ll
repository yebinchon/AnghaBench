; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.TYPE_7__, i32*, i32*, %struct.super_block*, i8* }
%struct.TYPE_7__ = type { i32* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hpfs_inode_info = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GID\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@hpfs_symlink_aops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"MODE\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DEV\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@hpfs_dir_iops = common dso_local global i32 0, align 4
@hpfs_dir_ops = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hpfs_file_iops = common dso_local global i32 0, align 4
@hpfs_file_ops = common dso_local global i32 0, align 4
@hpfs_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_read_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.fnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hpfs_inode_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 6
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %17)
  store %struct.hpfs_inode_info* %18, %struct.hpfs_inode_info** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %19, i8* %22, %struct.buffer_head** %3)
  store %struct.fnode* %23, %struct.fnode** %4, align 8
  %24 = icmp ne %struct.fnode* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @make_bad_inode(%struct.inode* %26)
  br label %311

28:                                               ; preds = %1
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 6
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  %32 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %196

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 6
  %39 = load %struct.super_block*, %struct.super_block** %38, align 8
  %40 = load %struct.fnode*, %struct.fnode** %4, align 8
  %41 = call i8* @hpfs_get_ea(%struct.super_block* %39, %struct.fnode* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i8* %41, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = call i32 @i_uid_write(%struct.inode* %47, i32 %51)
  %53 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %54 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @kfree(i8* %56)
  br label %58

58:                                               ; preds = %55, %36
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 6
  %61 = load %struct.super_block*, %struct.super_block** %60, align 8
  %62 = load %struct.fnode*, %struct.fnode** %4, align 8
  %63 = call i8* @hpfs_get_ea(%struct.super_block* %61, %struct.fnode* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i8* %63, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = call i32 @i_gid_write(%struct.inode* %69, i32 %73)
  %75 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %76 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @kfree(i8* %78)
  br label %80

80:                                               ; preds = %77, %58
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 6
  %83 = load %struct.super_block*, %struct.super_block** %82, align 8
  %84 = load %struct.fnode*, %struct.fnode** %4, align 8
  %85 = call i8* @hpfs_get_ea(%struct.super_block* %83, %struct.fnode* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i8* %85, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %110

87:                                               ; preds = %80
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load i32, i32* @S_IFLNK, align 4
  %91 = or i32 %90, 511
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 5
  store i32* @page_symlink_inode_operations, i32** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %2, align 8
  %97 = call i32 @inode_nohighmem(%struct.inode* %96)
  %98 = load %struct.inode*, %struct.inode** %2, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32* @hpfs_symlink_aops, i32** %100, align 8
  %101 = load %struct.inode*, %struct.inode** %2, align 8
  %102 = call i32 @set_nlink(%struct.inode* %101, i32 1)
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.inode*, %struct.inode** %2, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.inode*, %struct.inode** %2, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  br label %311

110:                                              ; preds = %80
  %111 = load %struct.inode*, %struct.inode** %2, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 6
  %113 = load %struct.super_block*, %struct.super_block** %112, align 8
  %114 = load %struct.fnode*, %struct.fnode** %4, align 8
  %115 = call i8* @hpfs_get_ea(%struct.super_block* %113, %struct.fnode* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  store i8* %115, i8** %7, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %195

117:                                              ; preds = %110
  store i32 0, i32* %9, align 4
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load i8*, i8** %7, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le16_to_cpu(i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %130 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %124, %117
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @kfree(i8* %132)
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.inode*, %struct.inode** %2, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i64 @S_ISBLK(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @S_ISCHR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %140, %131
  %145 = load %struct.inode*, %struct.inode** %2, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 6
  %147 = load %struct.super_block*, %struct.super_block** %146, align 8
  %148 = load %struct.fnode*, %struct.fnode** %4, align 8
  %149 = call i8* @hpfs_get_ea(%struct.super_block* %147, %struct.fnode* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  store i8* %149, i8** %7, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i8*, i8** %7, align 8
  %156 = bitcast i8* %155 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @le32_to_cpu(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @kfree(i8* %161)
  br label %163

163:                                              ; preds = %160, %144
  br label %164

164:                                              ; preds = %163, %140
  %165 = load i32, i32* %10, align 4
  %166 = call i64 @S_ISBLK(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %180, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @S_ISCHR(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %10, align 4
  %174 = call i64 @S_ISFIFO(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %10, align 4
  %178 = call i64 @S_ISSOCK(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %176, %172, %168, %164
  %181 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %182 = call i32 @brelse(%struct.buffer_head* %181)
  %183 = load %struct.inode*, %struct.inode** %2, align 8
  %184 = call i32 @set_nlink(%struct.inode* %183, i32 1)
  %185 = load %struct.inode*, %struct.inode** %2, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = load %struct.inode*, %struct.inode** %2, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 2
  store i32 1, i32* %188, align 8
  %189 = load %struct.inode*, %struct.inode** %2, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @new_decode_dev(i32 %191)
  %193 = call i32 @init_special_inode(%struct.inode* %189, i32 %190, i32 %192)
  br label %311

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %110
  br label %196

196:                                              ; preds = %195, %28
  %197 = load %struct.fnode*, %struct.fnode** %4, align 8
  %198 = call i64 @fnode_is_dir(%struct.fnode* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %262

200:                                              ; preds = %196
  %201 = load i32, i32* @S_IFDIR, align 4
  %202 = load %struct.inode*, %struct.inode** %2, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.inode*, %struct.inode** %2, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 5
  store i32* @hpfs_dir_iops, i32** %207, align 8
  %208 = load %struct.inode*, %struct.inode** %2, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 4
  store i32* @hpfs_dir_ops, i32** %209, align 8
  %210 = load %struct.fnode*, %struct.fnode** %4, align 8
  %211 = getelementptr inbounds %struct.fnode, %struct.fnode* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i8* @le32_to_cpu(i32 %212)
  %214 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %215 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %214, i32 0, i32 5
  store i8* %213, i8** %215, align 8
  %216 = load %struct.fnode*, %struct.fnode** %4, align 8
  %217 = getelementptr inbounds %struct.fnode, %struct.fnode* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @le32_to_cpu(i32 %222)
  %224 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %225 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %224, i32 0, i32 4
  store i8* %223, i8** %225, align 8
  %226 = load %struct.super_block*, %struct.super_block** %5, align 8
  %227 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %226)
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sge i32 %229, 2
  br i1 %230, label %231, label %242

231:                                              ; preds = %200
  %232 = load %struct.super_block*, %struct.super_block** %5, align 8
  %233 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %234 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %233, i32 0, i32 5
  %235 = load i8*, i8** %234, align 8
  %236 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %232, i8* %235, %struct.buffer_head** %13)
  %237 = icmp ne %struct.fnode* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %240 = call i32 @brelse(%struct.buffer_head* %239)
  br label %241

241:                                              ; preds = %238, %231
  br label %242

242:                                              ; preds = %241, %200
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %243 = load %struct.inode*, %struct.inode** %2, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 6
  %245 = load %struct.super_block*, %struct.super_block** %244, align 8
  %246 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %247 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @hpfs_count_dnodes(%struct.super_block* %245, i8* %248, i32* %11, i32* %12, i32* null)
  %250 = load i32, i32* %11, align 4
  %251 = mul nsw i32 4, %250
  %252 = load %struct.inode*, %struct.inode** %2, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %11, align 4
  %255 = mul nsw i32 2048, %254
  %256 = load %struct.inode*, %struct.inode** %2, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load %struct.inode*, %struct.inode** %2, align 8
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 2, %259
  %261 = call i32 @set_nlink(%struct.inode* %258, i32 %260)
  br label %308

262:                                              ; preds = %196
  %263 = load i32, i32* @S_IFREG, align 4
  %264 = load %struct.inode*, %struct.inode** %2, align 8
  %265 = getelementptr inbounds %struct.inode, %struct.inode* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %269 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %262
  %273 = load %struct.inode*, %struct.inode** %2, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, -74
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %272, %262
  %278 = load %struct.inode*, %struct.inode** %2, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 5
  store i32* @hpfs_file_iops, i32** %279, align 8
  %280 = load %struct.inode*, %struct.inode** %2, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 4
  store i32* @hpfs_file_ops, i32** %281, align 8
  %282 = load %struct.inode*, %struct.inode** %2, align 8
  %283 = call i32 @set_nlink(%struct.inode* %282, i32 1)
  %284 = load %struct.fnode*, %struct.fnode** %4, align 8
  %285 = getelementptr inbounds %struct.fnode, %struct.fnode* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i8* @le32_to_cpu(i32 %286)
  %288 = ptrtoint i8* %287 to i32
  %289 = load %struct.inode*, %struct.inode** %2, align 8
  %290 = getelementptr inbounds %struct.inode, %struct.inode* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load %struct.inode*, %struct.inode** %2, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 511
  %295 = ashr i32 %294, 9
  %296 = add nsw i32 %295, 1
  %297 = load %struct.inode*, %struct.inode** %2, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 8
  %299 = load %struct.inode*, %struct.inode** %2, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  store i32* @hpfs_aops, i32** %301, align 8
  %302 = load %struct.inode*, %struct.inode** %2, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.inode*, %struct.inode** %2, align 8
  %306 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %305)
  %307 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %306, i32 0, i32 3
  store i32 %304, i32* %307, align 4
  br label %308

308:                                              ; preds = %277, %242
  %309 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %310 = call i32 @brelse(%struct.buffer_head* %309)
  br label %311

311:                                              ; preds = %308, %180, %87, %25
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i8*, %struct.buffer_head**) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i8* @hpfs_get_ea(%struct.super_block*, %struct.fnode*, i8*, i32*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i64 @fnode_is_dir(%struct.fnode*) #1

declare dso_local i32 @hpfs_count_dnodes(%struct.super_block*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
