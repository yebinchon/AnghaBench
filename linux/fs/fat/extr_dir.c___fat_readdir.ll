; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c___fat_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c___fat_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.fat_ioctl_filldir_callback = type { i8*, i32, i8*, i32 }
%struct.msdos_sb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_dir_entry = type { i64*, i32 }

@FAT_MAX_SHORT_SIZE = common dso_local global i32 0, align 4
@MSDOS_ROOT_INO = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i64 0, align 8
@ATTR_EXT = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@PARSE_INVALID = common dso_local global i32 0, align 4
@PARSE_NOT_LONGNAME = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@FAT_MAX_UNI_CHARS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@FAT_MAX_UNI_SIZE = common dso_local global i32 0, align 4
@MSDOS_DOT = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@MSDOS_DOTDOT = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.dir_context*, i32, %struct.fat_ioctl_filldir_callback*)* @__fat_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fat_readdir(%struct.inode* %0, %struct.file* %1, %struct.dir_context* %2, i32 %3, %struct.fat_ioctl_filldir_callback* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.dir_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fat_ioctl_filldir_callback*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.msdos_sb_info*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.msdos_dir_entry*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.dir_context* %2, %struct.dir_context** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.fat_ioctl_filldir_callback* %4, %struct.fat_ioctl_filldir_callback** %10, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %11, align 8
  %36 = load %struct.super_block*, %struct.super_block** %11, align 8
  %37 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %36)
  store %struct.msdos_sb_info* %37, %struct.msdos_sb_info** %12, align 8
  store i32* null, i32** %16, align 8
  %38 = load i32, i32* @FAT_MAX_SHORT_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %17, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %18, align 8
  %42 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %43 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %46 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %47 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %50 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %5
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %60 = call i32 @dir_emit_dots(%struct.file* %58, %struct.dir_context* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %358

63:                                               ; preds = %57
  %64 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %65 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %5
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, 15
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %25, align 4
  br label %358

78:                                               ; preds = %70
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  br label %79

79:                                               ; preds = %331, %78
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i32 @fat_get_entry(%struct.inode* %80, i32* %22, %struct.buffer_head** %13, %struct.msdos_dir_entry** %14)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %335

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %168, %84
  store i8 0, i8* %15, align 1
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %128, label %91

91:                                               ; preds = %88
  %92 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %93 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DELETED_FLAG, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %331

100:                                              ; preds = %91
  %101 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %102 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ATTR_EXT, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %108 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ATTR_VOLUME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %331

114:                                              ; preds = %106, %100
  %115 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %116 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ATTR_EXT, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %122 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = call i64 @IS_FREE(i64* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %331

127:                                              ; preds = %120, %114
  br label %143

128:                                              ; preds = %88, %85
  %129 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %130 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ATTR_VOLUME, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %128
  %136 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %137 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = call i64 @IS_FREE(i64* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %128
  br label %331

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %127
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %223

146:                                              ; preds = %143
  %147 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %148 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @ATTR_EXT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %223

152:                                              ; preds = %146
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = call i32 @fat_parse_long(%struct.inode* %153, i32* %22, %struct.buffer_head** %13, %struct.msdos_dir_entry** %14, i32** %16, i8* %15)
  store i32 %154, i32* %26, align 4
  %155 = load i32, i32* %26, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %158 = load i32, i32* %26, align 4
  store i32 %158, i32* %25, align 4
  br label %335

159:                                              ; preds = %152
  %160 = load i32, i32* %26, align 4
  %161 = load i32, i32* @PARSE_INVALID, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %331

164:                                              ; preds = %159
  %165 = load i32, i32* %26, align 4
  %166 = load i32, i32* @PARSE_NOT_LONGNAME, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %85

169:                                              ; preds = %164
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* @PARSE_EOF, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %335

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load i8, i8* %15, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %180, label %222

180:                                              ; preds = %177
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* @FAT_MAX_UNI_CHARS, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = bitcast i32* %184 to i8*
  store i8* %185, i8** %27, align 8
  %186 = load i32, i32* @PATH_MAX, align 4
  %187 = load i32, i32* @FAT_MAX_UNI_SIZE, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %28, align 4
  %189 = load %struct.super_block*, %struct.super_block** %11, align 8
  %190 = load i32*, i32** %16, align 8
  %191 = load i8*, i8** %27, align 8
  %192 = load i32, i32* %28, align 4
  %193 = call i32 @fat_uni_to_x8(%struct.super_block* %189, i32* %190, i8* %191, i32 %192)
  store i32 %193, i32* %29, align 4
  %194 = load i8*, i8** %27, align 8
  store i8* %194, i8** %20, align 8
  %195 = load i32, i32* %29, align 4
  store i32 %195, i32* %24, align 4
  %196 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %10, align 8
  %197 = icmp ne %struct.fat_ioctl_filldir_callback* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %180
  br label %236

199:                                              ; preds = %180
  %200 = load %struct.super_block*, %struct.super_block** %11, align 8
  %201 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %202 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %203 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @fat_parse_short(%struct.super_block* %200, %struct.msdos_dir_entry* %201, i8* %41, i32 %205)
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %23, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %331

210:                                              ; preds = %199
  %211 = load i8*, i8** %20, align 8
  %212 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %10, align 8
  %213 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* %24, align 4
  %215 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %10, align 8
  %216 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %10, align 8
  %218 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %217, i32 0, i32 2
  store i8* %41, i8** %218, align 8
  %219 = load i32, i32* %23, align 4
  %220 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %10, align 8
  %221 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %24, align 4
  br label %236

222:                                              ; preds = %177
  br label %223

223:                                              ; preds = %222, %146, %143
  %224 = load %struct.super_block*, %struct.super_block** %11, align 8
  %225 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %226 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %227 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @fat_parse_short(%struct.super_block* %224, %struct.msdos_dir_entry* %225, i8* %41, i32 %229)
  store i32 %230, i32* %23, align 4
  %231 = load i32, i32* %23, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  br label %331

234:                                              ; preds = %223
  store i8* %41, i8** %20, align 8
  %235 = load i32, i32* %23, align 4
  store i32 %235, i32* %24, align 4
  br label %236

236:                                              ; preds = %234, %210, %198
  %237 = load i32, i32* %22, align 4
  %238 = sext i32 %237 to i64
  %239 = load i8, i8* %15, align 1
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 16
  %244 = sub i64 %238, %243
  %245 = trunc i64 %244 to i32
  %246 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %247 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %21, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %236
  %251 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %252 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 2
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %257 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %256, i32 0, i32 0
  store i32 2, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %250, %236
  %259 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %260 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %259, i32 0, i32 0
  %261 = load i64*, i64** %260, align 8
  %262 = load i32, i32* @MSDOS_DOT, align 4
  %263 = load i32, i32* @MSDOS_NAME, align 4
  %264 = call i32 @memcmp(i64* %261, i32 %262, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %258
  %267 = load %struct.file*, %struct.file** %7, align 8
  %268 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %269 = call i32 @dir_emit_dot(%struct.file* %267, %struct.dir_context* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %266
  br label %349

272:                                              ; preds = %266
  br label %330

273:                                              ; preds = %258
  %274 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %275 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %274, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* @MSDOS_DOTDOT, align 4
  %278 = load i32, i32* @MSDOS_NAME, align 4
  %279 = call i32 @memcmp(i64* %276, i32 %277, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %273
  %282 = load %struct.file*, %struct.file** %7, align 8
  %283 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %284 = call i32 @dir_emit_dotdot(%struct.file* %282, %struct.dir_context* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %281
  br label %349

287:                                              ; preds = %281
  br label %329

288:                                              ; preds = %273
  %289 = load %struct.super_block*, %struct.super_block** %11, align 8
  %290 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %291 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %292 = call i32 @fat_make_i_pos(%struct.super_block* %289, %struct.buffer_head* %290, %struct.msdos_dir_entry* %291)
  store i32 %292, i32* %31, align 4
  %293 = load %struct.super_block*, %struct.super_block** %11, align 8
  %294 = load i32, i32* %31, align 4
  %295 = call %struct.inode* @fat_iget(%struct.super_block* %293, i32 %294)
  store %struct.inode* %295, %struct.inode** %32, align 8
  %296 = load %struct.inode*, %struct.inode** %32, align 8
  %297 = icmp ne %struct.inode* %296, null
  br i1 %297, label %298, label %304

298:                                              ; preds = %288
  %299 = load %struct.inode*, %struct.inode** %32, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %30, align 8
  %302 = load %struct.inode*, %struct.inode** %32, align 8
  %303 = call i32 @iput(%struct.inode* %302)
  br label %308

304:                                              ; preds = %288
  %305 = load %struct.super_block*, %struct.super_block** %11, align 8
  %306 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %307 = call i64 @iunique(%struct.super_block* %305, i64 %306)
  store i64 %307, i64* %30, align 8
  br label %308

308:                                              ; preds = %304, %298
  %309 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %310 = load i8*, i8** %20, align 8
  %311 = load i32, i32* %24, align 4
  %312 = load i64, i64* %30, align 8
  %313 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %14, align 8
  %314 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @ATTR_DIR, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %308
  %320 = load i32, i32* @DT_DIR, align 4
  br label %323

321:                                              ; preds = %308
  %322 = load i32, i32* @DT_REG, align 4
  br label %323

323:                                              ; preds = %321, %319
  %324 = phi i32 [ %320, %319 ], [ %322, %321 ]
  %325 = call i32 @dir_emit(%struct.dir_context* %309, i8* %310, i32 %311, i64 %312, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %323
  br label %349

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %328, %287
  br label %330

330:                                              ; preds = %329, %272
  br label %331

331:                                              ; preds = %330, %233, %209, %163, %141, %126, %113, %99
  store i32 0, i32* %21, align 4
  %332 = load i32, i32* %22, align 4
  %333 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %334 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %333, i32 0, i32 0
  store i32 %332, i32* %334, align 4
  br label %79

335:                                              ; preds = %173, %157, %83
  %336 = load i32, i32* %21, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = load i32, i32* %22, align 4
  %340 = icmp slt i32 %339, 2
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %343 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %342, i32 0, i32 0
  store i32 2, i32* %343, align 4
  br label %348

344:                                              ; preds = %338, %335
  %345 = load i32, i32* %22, align 4
  %346 = load %struct.dir_context*, %struct.dir_context** %8, align 8
  %347 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %344, %341
  br label %349

349:                                              ; preds = %348, %327, %286, %271
  %350 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %351 = call i32 @brelse(%struct.buffer_head* %350)
  %352 = load i32*, i32** %16, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load i32*, i32** %16, align 8
  %356 = call i32 @__putname(i32* %355)
  br label %357

357:                                              ; preds = %354, %349
  br label %358

358:                                              ; preds = %357, %75, %62
  %359 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %12, align 8
  %360 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %359, i32 0, i32 0
  %361 = call i32 @mutex_unlock(i32* %360)
  %362 = load i32, i32* %25, align 4
  %363 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %363)
  ret i32 %362
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @fat_get_entry(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i64 @IS_FREE(i64*) #1

declare dso_local i32 @fat_parse_long(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**, i32**, i8*) #1

declare dso_local i32 @fat_uni_to_x8(%struct.super_block*, i32*, i8*, i32) #1

declare dso_local i32 @fat_parse_short(%struct.super_block*, %struct.msdos_dir_entry*, i8*, i32) #1

declare dso_local i32 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @dir_emit_dotdot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

declare dso_local %struct.inode* @fat_iget(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @iunique(%struct.super_block*, i64) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @__putname(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
