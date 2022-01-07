; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_dir.c_hfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_dir.c_hfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hfs_readdir_data* }
%struct.hfs_readdir_data = type { i32, i32, %struct.file* }
%struct.dir_context = type { i64 }
%struct.inode = type { i64, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%union.hfs_cat_rec = type { i64 }
%struct.hfs_find_data = type { i32, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@HFS_MAX_NAMELEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HFS_CDR_THD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"bad catalog folder thread\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"walked past end of dir\0A\00", align 1
@HFS_CDR_DIR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"small dir entry\0A\00", align 1
@HFS_CDR_FIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"small file entry\0A\00", align 1
@DT_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"bad catalog entry type %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @hfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.hfs_cat_rec, align 8
  %13 = alloca %struct.hfs_find_data, align 8
  %14 = alloca %struct.hfs_readdir_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %7, align 8
  %22 = load i32, i32* @HFS_MAX_NAMELEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %27 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %298

34:                                               ; preds = %2
  %35 = load %struct.super_block*, %struct.super_block** %7, align 8
  %36 = call %struct.TYPE_13__* @HFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hfs_find_init(i32 %38, %struct.hfs_find_data* %13)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %298

44:                                               ; preds = %34
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @hfs_cat_build_key(%struct.super_block* %45, i32 %47, i64 %50, i32* null)
  %52 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %295

56:                                               ; preds = %44
  %57 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %58 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.file*, %struct.file** %4, align 8
  %63 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %64 = call i32 @dir_emit_dot(%struct.file* %62, %struct.dir_context* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %295

67:                                               ; preds = %61
  %68 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %69 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %68, i32 0, i32 0
  store i64 1, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %56
  %71 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %72 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %116

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = icmp ugt i64 %78, 8
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %75
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %295

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @hfs_bnode_read(i32 %89, %union.hfs_cat_rec* %12, i32 %91, i32 %93)
  %95 = bitcast %union.hfs_cat_rec* %12 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HFS_CDR_THD, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %295

103:                                              ; preds = %87
  %104 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %105 = bitcast %union.hfs_cat_rec* %12 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @be32_to_cpu(i32 %107)
  %109 = load i32, i32* @DT_DIR, align 4
  %110 = call i32 @dir_emit(%struct.dir_context* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i64 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %103
  br label %295

113:                                              ; preds = %103
  %114 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %115 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %114, i32 0, i32 0
  store i64 2, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %70
  %117 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %118 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %295

125:                                              ; preds = %116
  %126 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %127 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, 1
  %130 = trunc i64 %129 to i32
  %131 = call i32 @hfs_brec_goto(%struct.hfs_find_data* %13, i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %295

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %252, %135
  %137 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @be32_to_cpu(i32 %141)
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %9, align 4
  br label %295

151:                                              ; preds = %136
  %152 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = icmp ugt i64 %154, 8
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %151
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %9, align 4
  br label %295

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @hfs_bnode_read(i32 %165, %union.hfs_cat_rec* %12, i32 %167, i32 %169)
  %171 = bitcast %union.hfs_cat_rec* %12 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %15, align 8
  %173 = load %struct.super_block*, %struct.super_block** %7, align 8
  %174 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = call i32 @hfs_mac2asc(%struct.super_block* %173, i8* %25, i32* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* @HFS_CDR_DIR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %163
  %183 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = icmp ult i64 %185, 4
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @EIO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %9, align 4
  br label %295

191:                                              ; preds = %182
  %192 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %193 = load i32, i32* %8, align 4
  %194 = bitcast %union.hfs_cat_rec* %12 to %struct.TYPE_9__*
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @be32_to_cpu(i32 %196)
  %198 = load i32, i32* @DT_DIR, align 4
  %199 = call i32 @dir_emit(%struct.dir_context* %192, i8* %25, i32 %193, i64 %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %191
  br label %253

202:                                              ; preds = %191
  br label %234

203:                                              ; preds = %163
  %204 = load i64, i64* %15, align 8
  %205 = load i64, i64* @HFS_CDR_FIL, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = icmp ult i64 %210, 4
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %214 = load i32, i32* @EIO, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %9, align 4
  br label %295

216:                                              ; preds = %207
  %217 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %218 = load i32, i32* %8, align 4
  %219 = bitcast %union.hfs_cat_rec* %12 to %struct.TYPE_10__*
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @be32_to_cpu(i32 %221)
  %223 = load i32, i32* @DT_REG, align 4
  %224 = call i32 @dir_emit(%struct.dir_context* %217, i8* %25, i32 %218, i64 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %216
  br label %253

227:                                              ; preds = %216
  br label %233

228:                                              ; preds = %203
  %229 = load i64, i64* %15, align 8
  %230 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %229)
  %231 = load i32, i32* @EIO, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %9, align 4
  br label %295

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %202
  %235 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %236 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %236, align 8
  %239 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %240 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.inode*, %struct.inode** %6, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp sge i64 %241, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %234
  br label %295

247:                                              ; preds = %234
  %248 = call i32 @hfs_brec_goto(%struct.hfs_find_data* %13, i32 1)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %295

252:                                              ; preds = %247
  br label %136

253:                                              ; preds = %226, %201
  %254 = load %struct.file*, %struct.file** %4, align 8
  %255 = getelementptr inbounds %struct.file, %struct.file* %254, i32 0, i32 0
  %256 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %255, align 8
  store %struct.hfs_readdir_data* %256, %struct.hfs_readdir_data** %14, align 8
  %257 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %14, align 8
  %258 = icmp ne %struct.hfs_readdir_data* %257, null
  br i1 %258, label %288, label %259

259:                                              ; preds = %253
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call %struct.hfs_readdir_data* @kmalloc(i32 16, i32 %260)
  store %struct.hfs_readdir_data* %261, %struct.hfs_readdir_data** %14, align 8
  %262 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %14, align 8
  %263 = icmp ne %struct.hfs_readdir_data* %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %259
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %9, align 4
  br label %295

267:                                              ; preds = %259
  %268 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %14, align 8
  %269 = load %struct.file*, %struct.file** %4, align 8
  %270 = getelementptr inbounds %struct.file, %struct.file* %269, i32 0, i32 0
  store %struct.hfs_readdir_data* %268, %struct.hfs_readdir_data** %270, align 8
  %271 = load %struct.file*, %struct.file** %4, align 8
  %272 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %14, align 8
  %273 = getelementptr inbounds %struct.hfs_readdir_data, %struct.hfs_readdir_data* %272, i32 0, i32 2
  store %struct.file* %271, %struct.file** %273, align 8
  %274 = load %struct.inode*, %struct.inode** %6, align 8
  %275 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %274)
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  %277 = call i32 @spin_lock(i32* %276)
  %278 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %14, align 8
  %279 = getelementptr inbounds %struct.hfs_readdir_data, %struct.hfs_readdir_data* %278, i32 0, i32 1
  %280 = load %struct.inode*, %struct.inode** %6, align 8
  %281 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %280)
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = call i32 @list_add(i32* %279, i32* %282)
  %284 = load %struct.inode*, %struct.inode** %6, align 8
  %285 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %284)
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = call i32 @spin_unlock(i32* %286)
  br label %288

288:                                              ; preds = %267, %253
  %289 = load %struct.hfs_readdir_data*, %struct.hfs_readdir_data** %14, align 8
  %290 = getelementptr inbounds %struct.hfs_readdir_data, %struct.hfs_readdir_data* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = call i32 @memcpy(i32* %290, %struct.TYPE_12__* %293, i32 4)
  br label %295

295:                                              ; preds = %288, %264, %251, %246, %228, %212, %187, %160, %147, %134, %124, %112, %99, %84, %66, %55
  %296 = call i32 @hfs_find_exit(%struct.hfs_find_data* %13)
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %298

298:                                              ; preds = %295, %42, %33
  %299 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_13__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_cat_build_key(%struct.super_block*, i32, i64, i32*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @hfs_bnode_read(i32, %union.hfs_cat_rec*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i64, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @hfs_brec_goto(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_mac2asc(%struct.super_block*, i8*, i32*) #1

declare dso_local %struct.hfs_readdir_data* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_14__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
