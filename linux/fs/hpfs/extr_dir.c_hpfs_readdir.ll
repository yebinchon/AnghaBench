; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dir.c_hpfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dir.c_hpfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i64, i32 }
%struct.hpfs_inode_info = type { i64, i64 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32*, i32, i32, i64, i64 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"dir_fnode\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dir_dnode\00", align 1
@EIOERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"not a directory, fnode %08lx\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"corrupted inode: i_dno == %08x, fnode -> dnode == %08x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"hpfs_readdir\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pos==%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"hpfs_readdir: bad ^A^A entry; pos = %08lx\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"hpfs_readdir: bad \\377 entry; pos = %08lx\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @hpfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.hpfs_inode_info*, align 8
  %7 = alloca %struct.quad_buffer_head, align 4
  %8 = alloca %struct.hpfs_dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.fnode*, align 8
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = call %struct.inode* @file_inode(%struct.file* %18)
  store %struct.inode* %19, %struct.inode** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %20)
  store %struct.hpfs_inode_info* %21, %struct.hpfs_inode_info** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @hpfs_lock(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_6__* @hpfs_sb(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @hpfs_chk_sectors(i32 %36, i64 %39, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EFSERROR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  br label %414

45:                                               ; preds = %33
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %50 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @hpfs_chk_sectors(i32 %48, i64 %51, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EFSERROR, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %414

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_6__* @hpfs_sb(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %128

66:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.fnode* @hpfs_map_fnode(i32 %69, i64 %72, %struct.buffer_head** %15)
  store %struct.fnode* %73, %struct.fnode** %16, align 8
  %74 = icmp ne %struct.fnode* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @EIOERROR, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  br label %414

78:                                               ; preds = %66
  %79 = load %struct.fnode*, %struct.fnode** %16, align 8
  %80 = call i32 @fnode_is_dir(%struct.fnode* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  store i32 1, i32* %17, align 4
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %82, %78
  %91 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %92 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.fnode*, %struct.fnode** %16, align 8
  %95 = getelementptr inbounds %struct.fnode, %struct.fnode* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = icmp ne i64 %93, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %90
  store i32 1, i32* %17, align 4
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %108 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fnode*, %struct.fnode** %16, align 8
  %111 = getelementptr inbounds %struct.fnode, %struct.fnode* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @le32_to_cpu(i32 %116)
  %118 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %106, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %109, i64 %117)
  br label %119

119:                                              ; preds = %103, %90
  %120 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EFSERROR, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %414

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %58
  %129 = load %struct.inode*, %struct.inode** %5, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.TYPE_6__* @hpfs_sb(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  %135 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %136 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 12
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %141 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %140, i32 0, i32 0
  store i32 13, i32* %141, align 4
  br label %414

142:                                              ; preds = %128
  %143 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %144 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @ENOENT, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %14, align 4
  br label %414

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %412
  br label %152

152:                                              ; preds = %355, %151
  %153 = load %struct.inode*, %struct.inode** %5, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call %struct.TYPE_6__* @hpfs_sb(i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %152
  %161 = load %struct.inode*, %struct.inode** %5, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %165 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @hpfs_stop_cycles(i32 %163, i32 %166, i32* %12, i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* @EFSERROR, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %14, align 4
  br label %414

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %152
  %174 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %175 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 12
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %414

179:                                              ; preds = %173
  %180 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %181 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %194, label %184

184:                                              ; preds = %179
  %185 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %186 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %191 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 5
  br i1 %193, label %194, label %199

194:                                              ; preds = %189, %184, %179
  %195 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %196 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @pr_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %414

199:                                              ; preds = %189
  %200 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %201 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load %struct.file*, %struct.file** %3, align 8
  %206 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %207 = call i32 @dir_emit_dot(%struct.file* %205, %struct.dir_context* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  br label %414

210:                                              ; preds = %204
  %211 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %212 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %211, i32 0, i32 0
  store i32 11, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %199
  %214 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %215 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 11
  br i1 %217, label %218, label %230

218:                                              ; preds = %213
  %219 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %220 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %221 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* @DT_DIR, align 4
  %224 = call i32 (%struct.dir_context*, ...) @dir_emit(%struct.dir_context* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2, i64 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %218
  br label %414

227:                                              ; preds = %218
  %228 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %229 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %228, i32 0, i32 0
  store i32 1, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %213
  %231 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %232 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %259

235:                                              ; preds = %230
  %236 = load %struct.inode*, %struct.inode** %5, align 8
  %237 = load %struct.file*, %struct.file** %3, align 8
  %238 = getelementptr inbounds %struct.file, %struct.file* %237, i32 0, i32 0
  %239 = call i32 @hpfs_add_pos(%struct.inode* %236, i32* %238)
  store i32 %239, i32* %14, align 4
  %240 = load i32, i32* %14, align 4
  %241 = icmp slt i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i64 @unlikely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br label %414

246:                                              ; preds = %235
  %247 = load %struct.inode*, %struct.inode** %5, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %251 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @hpfs_de_as_down_as_possible(i32 %249, i64 %252)
  %254 = trunc i64 %253 to i32
  %255 = shl i32 %254, 4
  %256 = add nsw i32 %255, 1
  %257 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %258 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %246, %230
  %260 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %261 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %10, align 4
  %263 = load %struct.inode*, %struct.inode** %5, align 8
  %264 = call %struct.hpfs_dirent* @map_pos_dirent(%struct.inode* %263, i32* %10, %struct.quad_buffer_head* %7)
  store %struct.hpfs_dirent* %264, %struct.hpfs_dirent** %8, align 8
  %265 = icmp ne %struct.hpfs_dirent* %264, null
  br i1 %265, label %272, label %266

266:                                              ; preds = %259
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %269 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @EIOERROR, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %14, align 4
  br label %414

272:                                              ; preds = %259
  %273 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %274 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %279 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %360

282:                                              ; preds = %277, %272
  %283 = load %struct.inode*, %struct.inode** %5, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call %struct.TYPE_6__* @hpfs_sb(i32 %285)
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %355

290:                                              ; preds = %282
  %291 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %292 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %328

295:                                              ; preds = %290
  %296 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %297 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %328, label %300

300:                                              ; preds = %295
  %301 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %302 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 2
  br i1 %304, label %319, label %305

305:                                              ; preds = %300
  %306 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %307 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 1
  br i1 %311, label %319, label %312

312:                                              ; preds = %305
  %313 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %314 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 1
  br i1 %318, label %319, label %328

319:                                              ; preds = %312, %305, %300
  %320 = load %struct.inode*, %struct.inode** %5, align 8
  %321 = getelementptr inbounds %struct.inode, %struct.inode* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %324 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %322, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %326)
  br label %328

328:                                              ; preds = %319, %312, %295, %290
  %329 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %330 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %354

333:                                              ; preds = %328
  %334 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %335 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, 1
  br i1 %337, label %345, label %338

338:                                              ; preds = %333
  %339 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %340 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 255
  br i1 %344, label %345, label %354

345:                                              ; preds = %338, %333
  %346 = load %struct.inode*, %struct.inode** %5, align 8
  %347 = getelementptr inbounds %struct.inode, %struct.inode* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %350 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  %353 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %348, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %352)
  br label %354

354:                                              ; preds = %345, %338, %328
  br label %355

355:                                              ; preds = %354, %282
  %356 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  %357 = load i32, i32* %10, align 4
  %358 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %359 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  br label %152

360:                                              ; preds = %277
  %361 = load %struct.inode*, %struct.inode** %5, align 8
  %362 = getelementptr inbounds %struct.inode, %struct.inode* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %365 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %368 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %372 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = call i8* @hpfs_translate_name(i32 %363, i32* %366, i32 %369, i32 %370, i32 %373)
  store i8* %374, i8** %11, align 8
  %375 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %376 = load i8*, i8** %11, align 8
  %377 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %378 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %381 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = call i64 @le32_to_cpu(i32 %382)
  %384 = load i32, i32* @DT_UNKNOWN, align 4
  %385 = call i32 (%struct.dir_context*, ...) @dir_emit(%struct.dir_context* %375, i8* %376, i32 %379, i64 %383, i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %399, label %387

387:                                              ; preds = %360
  %388 = load i8*, i8** %11, align 8
  %389 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %390 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  %392 = bitcast i32* %391 to i8*
  %393 = icmp ne i8* %388, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %387
  %395 = load i8*, i8** %11, align 8
  %396 = call i32 @kfree(i8* %395)
  br label %397

397:                                              ; preds = %394, %387
  %398 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %414

399:                                              ; preds = %360
  %400 = load i32, i32* %10, align 4
  %401 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %402 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %401, i32 0, i32 0
  store i32 %400, i32* %402, align 4
  %403 = load i8*, i8** %11, align 8
  %404 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %405 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = bitcast i32* %406 to i8*
  %408 = icmp ne i8* %403, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %399
  %410 = load i8*, i8** %11, align 8
  %411 = call i32 @kfree(i8* %410)
  br label %412

412:                                              ; preds = %409, %399
  %413 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %151

414:                                              ; preds = %397, %266, %245, %226, %209, %194, %178, %169, %147, %139, %124, %75, %54, %42
  %415 = load %struct.inode*, %struct.inode** %5, align 8
  %416 = getelementptr inbounds %struct.inode, %struct.inode* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @hpfs_unlock(i32 %417)
  %419 = load i32, i32* %14, align 4
  ret i32 %419
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.TYPE_6__* @hpfs_sb(i32) #1

declare dso_local i64 @hpfs_chk_sectors(i32, i64, i32, i8*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i64, %struct.buffer_head**) #1

declare dso_local i32 @fnode_is_dir(%struct.fnode*) #1

declare dso_local i32 @hpfs_error(i32, i8*, i64, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, ...) #1

declare dso_local i32 @hpfs_add_pos(%struct.inode*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hpfs_de_as_down_as_possible(i32, i64) #1

declare dso_local %struct.hpfs_dirent* @map_pos_dirent(%struct.inode*, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i8* @hpfs_translate_name(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
