; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32* }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"lookup succeeded but map dirent failed\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"hpfs_rename: could not find dirent\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"hpfs_rename: dirent already exists!\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"lookup succeeded but map dirent failed at #2\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"hpfs_rename: could not remove dirent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @hpfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.quad_buffer_head, align 4
  %19 = alloca %struct.quad_buffer_head, align 4
  %20 = alloca %struct.hpfs_dirent*, align 8
  %21 = alloca %struct.hpfs_dirent*, align 8
  %22 = alloca %struct.hpfs_dirent, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.buffer_head*, align 8
  %26 = alloca %struct.fnode*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.dentry*, %struct.dentry** %10, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %15, align 4
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = call %struct.inode* @d_inode(%struct.dentry* %45)
  store %struct.inode* %46, %struct.inode** %16, align 8
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = call %struct.inode* @d_inode(%struct.dentry* %47)
  store %struct.inode* %48, %struct.inode** %17, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @RENAME_NOREPLACE, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %310

57:                                               ; preds = %5
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @hpfs_chk_name(i8* %58, i32* %15)
  store i32 %59, i32* %27, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %27, align 4
  store i32 %62, i32* %6, align 4
  br label %310

63:                                               ; preds = %57
  store i32 0, i32* %27, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @hpfs_adjust_length(i8* %64, i32* %13)
  %66 = load %struct.inode*, %struct.inode** %16, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @hpfs_lock(i32 %68)
  %70 = load %struct.inode*, %struct.inode** %17, align 8
  %71 = icmp ne %struct.inode* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %17, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @S_ISDIR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %27, align 4
  br label %296

81:                                               ; preds = %72, %63
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %82, i32 %86, i8* %87, i32 %88, i32* %23, %struct.quad_buffer_head* %18)
  store %struct.hpfs_dirent* %89, %struct.hpfs_dirent** %20, align 8
  %90 = icmp ne %struct.hpfs_dirent* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %81
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hpfs_error(i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %27, align 4
  br label %296

98:                                               ; preds = %81
  %99 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %100 = call i32 @copy_de(%struct.hpfs_dirent* %22, %struct.hpfs_dirent* %99)
  %101 = load i8*, i8** %14, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 46
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %22, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %17, align 8
  %109 = icmp ne %struct.inode* %108, null
  br i1 %109, label %110, label %149

110:                                              ; preds = %98
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = load i32, i32* %23, align 4
  %113 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %114 = call i32 @hpfs_remove_dirent(%struct.inode* %111, i32 %112, %struct.hpfs_dirent* %113, %struct.quad_buffer_head* %18, i32 1)
  store i32 %114, i32* %28, align 4
  %115 = icmp ne i32 %114, 2
  br i1 %115, label %116, label %146

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %117, i32 %121, i8* %122, i32 %123, i32* null, %struct.quad_buffer_head* %19)
  store %struct.hpfs_dirent* %124, %struct.hpfs_dirent** %21, align 8
  %125 = icmp ne %struct.hpfs_dirent* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %116
  %127 = load %struct.inode*, %struct.inode** %17, align 8
  %128 = call i32 @clear_nlink(%struct.inode* %127)
  %129 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %21, align 8
  %130 = call i32 @copy_de(%struct.hpfs_dirent* %129, %struct.hpfs_dirent* %22)
  %131 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %21, align 8
  %132 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @memcpy(i32* %133, i8* %134, i32 %135)
  %137 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %19)
  %138 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %19)
  br label %230

139:                                              ; preds = %116
  %140 = load %struct.inode*, %struct.inode** %9, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @hpfs_error(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @EFSERROR, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %27, align 4
  br label %296

146:                                              ; preds = %110
  %147 = load i32, i32* @ENOSPC, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %27, align 4
  br label %296

149:                                              ; preds = %98
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = load %struct.inode*, %struct.inode** %7, align 8
  %152 = icmp eq %struct.inode* %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %18)
  br label %155

155:                                              ; preds = %153, %149
  %156 = load %struct.inode*, %struct.inode** %9, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @hpfs_add_dirent(%struct.inode* %156, i8* %157, i32 %158, %struct.hpfs_dirent* %22)
  store i32 %159, i32* %24, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %155
  %162 = load i32, i32* %24, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.inode*, %struct.inode** %9, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @hpfs_error(i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i32, i32* %24, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @ENOSPC, align 4
  %174 = sub nsw i32 0, %173
  br label %178

175:                                              ; preds = %169
  %176 = load i32, i32* @EFSERROR, align 4
  %177 = sub nsw i32 0, %176
  br label %178

178:                                              ; preds = %175, %172
  %179 = phi i32 [ %174, %172 ], [ %177, %175 ]
  store i32 %179, i32* %27, align 4
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = load %struct.inode*, %struct.inode** %7, align 8
  %182 = icmp ne %struct.inode* %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %18)
  br label %185

185:                                              ; preds = %183, %178
  br label %296

186:                                              ; preds = %155
  %187 = load %struct.inode*, %struct.inode** %9, align 8
  %188 = load %struct.inode*, %struct.inode** %7, align 8
  %189 = icmp eq %struct.inode* %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %186
  %191 = load %struct.inode*, %struct.inode** %7, align 8
  %192 = load %struct.inode*, %struct.inode** %7, align 8
  %193 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %192)
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i8*, i8** %12, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %191, i32 %195, i8* %196, i32 %197, i32* %23, %struct.quad_buffer_head* %18)
  store %struct.hpfs_dirent* %198, %struct.hpfs_dirent** %20, align 8
  %199 = icmp ne %struct.hpfs_dirent* %198, null
  br i1 %199, label %207, label %200

200:                                              ; preds = %190
  %201 = load %struct.inode*, %struct.inode** %16, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @hpfs_error(i32 %203, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %205 = load i32, i32* @ENOENT, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %27, align 4
  br label %296

207:                                              ; preds = %190
  br label %208

208:                                              ; preds = %207, %186
  %209 = load %struct.inode*, %struct.inode** %7, align 8
  %210 = load i32, i32* %23, align 4
  %211 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %212 = call i32 @hpfs_remove_dirent(%struct.inode* %209, i32 %210, %struct.hpfs_dirent* %211, %struct.quad_buffer_head* %18, i32 0)
  store i32 %212, i32* %24, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %208
  %215 = load %struct.inode*, %struct.inode** %16, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @hpfs_error(i32 %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i32, i32* %24, align 4
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load i32, i32* @ENOSPC, align 4
  %223 = sub nsw i32 0, %222
  br label %227

224:                                              ; preds = %214
  %225 = load i32, i32* @EFSERROR, align 4
  %226 = sub nsw i32 0, %225
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi i32 [ %223, %221 ], [ %226, %224 ]
  store i32 %228, i32* %27, align 4
  br label %296

229:                                              ; preds = %208
  br label %230

230:                                              ; preds = %229, %126
  %231 = load %struct.inode*, %struct.inode** %9, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.inode*, %struct.inode** %16, align 8
  %235 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %234)
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  %237 = load %struct.inode*, %struct.inode** %16, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @S_ISDIR(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %230
  %243 = load %struct.inode*, %struct.inode** %9, align 8
  %244 = call i32 @inc_nlink(%struct.inode* %243)
  %245 = load %struct.inode*, %struct.inode** %7, align 8
  %246 = call i32 @drop_nlink(%struct.inode* %245)
  br label %247

247:                                              ; preds = %242, %230
  %248 = load %struct.inode*, %struct.inode** %16, align 8
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.inode*, %struct.inode** %16, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call %struct.fnode* @hpfs_map_fnode(i32 %250, i32 %253, %struct.buffer_head** %25)
  store %struct.fnode* %254, %struct.fnode** %26, align 8
  %255 = icmp ne %struct.fnode* %254, null
  br i1 %255, label %256, label %295

256:                                              ; preds = %247
  %257 = load %struct.inode*, %struct.inode** %9, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @cpu_to_le32(i32 %259)
  %261 = load %struct.fnode*, %struct.fnode** %26, align 8
  %262 = getelementptr inbounds %struct.fnode, %struct.fnode* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  %263 = load i32, i32* %15, align 4
  %264 = load %struct.fnode*, %struct.fnode** %26, align 8
  %265 = getelementptr inbounds %struct.fnode, %struct.fnode* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.fnode*, %struct.fnode** %26, align 8
  %267 = getelementptr inbounds %struct.fnode, %struct.fnode* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i8*, i8** %14, align 8
  %270 = load i32, i32* %15, align 4
  %271 = icmp ugt i32 %270, 15
  br i1 %271, label %272, label %273

272:                                              ; preds = %256
  br label %275

273:                                              ; preds = %256
  %274 = load i32, i32* %15, align 4
  br label %275

275:                                              ; preds = %273, %272
  %276 = phi i32 [ 15, %272 ], [ %274, %273 ]
  %277 = call i32 @memcpy(i32* %268, i8* %269, i32 %276)
  %278 = load i32, i32* %15, align 4
  %279 = icmp ult i32 %278, 15
  br i1 %279, label %280, label %290

280:                                              ; preds = %275
  %281 = load %struct.fnode*, %struct.fnode** %26, align 8
  %282 = getelementptr inbounds %struct.fnode, %struct.fnode* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %15, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %15, align 4
  %288 = sub i32 15, %287
  %289 = call i32 @memset(i32* %286, i32 0, i32 %288)
  br label %290

290:                                              ; preds = %280, %275
  %291 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %292 = call i32 @mark_buffer_dirty(%struct.buffer_head* %291)
  %293 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %294 = call i32 @brelse(%struct.buffer_head* %293)
  br label %295

295:                                              ; preds = %290, %247
  br label %296

296:                                              ; preds = %295, %227, %200, %185, %146, %139, %91, %78
  %297 = load i32, i32* %27, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %296
  %300 = load %struct.inode*, %struct.inode** %7, align 8
  %301 = call i32 @hpfs_update_directory_times(%struct.inode* %300)
  %302 = load %struct.inode*, %struct.inode** %9, align 8
  %303 = call i32 @hpfs_update_directory_times(%struct.inode* %302)
  br label %304

304:                                              ; preds = %299, %296
  %305 = load %struct.inode*, %struct.inode** %16, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @hpfs_unlock(i32 %307)
  %309 = load i32, i32* %27, align 4
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %304, %61, %54
  %311 = load i32, i32* %6, align 4
  ret i32 %311
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local %struct.TYPE_4__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @copy_de(%struct.hpfs_dirent*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_remove_dirent(%struct.inode*, i32, %struct.hpfs_dirent*, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_update_directory_times(%struct.inode*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
