; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c___f2fs_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c___f2fs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.f2fs_xattr_entry = type { i32, i64, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@F2FS_NAME_LEN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inode (%lu) has corrupted xattr\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@FI_ACL_MODE = common dso_local global i32 0, align 4
@F2FS_XATTR_INDEX_ENCRYPTION = common dso_local global i32 0, align 4
@F2FS_XATTR_NAME_ENCRYPTION_CONTEXT = common dso_local global i32 0, align 4
@SBI_NEED_CP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64, %struct.page*, i32)* @__f2fs_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_setxattr(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.page* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.f2fs_xattr_entry*, align 8
  %17 = alloca %struct.f2fs_xattr_entry*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.f2fs_xattr_entry*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.page* %5, %struct.page** %14, align 8
  store i32 %6, i32* %15, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %20, align 4
  store i32 0, i32* %25, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %7
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %310

39:                                               ; preds = %7
  %40 = load i8*, i8** %12, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 0, i64* %13, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @strlen(i8* %44)
  store i64 %45, i64* %23, align 8
  %46 = load i64, i64* %23, align 8
  %47 = load i64, i64* @F2FS_NAME_LEN, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ERANGE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %310

52:                                               ; preds = %43
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = call i64 @MAX_VALUE_LEN(%struct.inode* %54)
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @E2BIG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %310

60:                                               ; preds = %52
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = call i32 @read_all_xattrs(%struct.inode* %61, %struct.page* %62, i8** %18)
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %25, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %25, align 4
  store i32 %67, i32* %8, align 4
  br label %310

68:                                               ; preds = %60
  %69 = load i8*, i8** %18, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = call i32 @XATTR_SIZE(i32 %70, %struct.inode* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %69, i64 %73
  store i8* %74, i8** %19, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i64, i64* %23, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call %struct.f2fs_xattr_entry* @__find_xattr(i8* %75, i8* %76, i32 %77, i64 %78, i8* %79)
  store %struct.f2fs_xattr_entry* %80, %struct.f2fs_xattr_entry** %16, align 8
  %81 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %82 = icmp ne %struct.f2fs_xattr_entry* %81, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %68
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @F2FS_I_SB(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @f2fs_err(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @F2FS_I_SB(%struct.inode* %90)
  %92 = load i32, i32* @SBI_NEED_FSCK, align 4
  %93 = call i32 @set_sbi_flag(i32 %91, i32 %92)
  %94 = load i32, i32* @EFSCORRUPTED, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %25, align 4
  br label %306

96:                                               ; preds = %68
  %97 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %98 = call i64 @IS_XATTR_LAST_ENTRY(%struct.f2fs_xattr_entry* %97)
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @XATTR_CREATE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EEXIST, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %25, align 4
  br label %306

112:                                              ; preds = %104
  %113 = load i8*, i8** %12, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i64 @f2fs_xattr_value_same(%struct.f2fs_xattr_entry* %116, i8* %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %306

122:                                              ; preds = %115, %112
  br label %132

123:                                              ; preds = %96
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @XATTR_REPLACE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @ENODATA, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %25, align 4
  br label %306

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %122
  %133 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  store %struct.f2fs_xattr_entry* %133, %struct.f2fs_xattr_entry** %17, align 8
  br label %134

134:                                              ; preds = %139, %132
  %135 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %136 = call i64 @IS_XATTR_LAST_ENTRY(%struct.f2fs_xattr_entry* %135)
  %137 = icmp ne i64 %136, 0
  %138 = xor i1 %137, true
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %141 = call %struct.f2fs_xattr_entry* @XATTR_NEXT_ENTRY(%struct.f2fs_xattr_entry* %140)
  store %struct.f2fs_xattr_entry* %141, %struct.f2fs_xattr_entry** %17, align 8
  br label %134

142:                                              ; preds = %134
  %143 = load i64, i64* %23, align 8
  %144 = add i64 32, %143
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @XATTR_ALIGN(i32 %147)
  store i32 %148, i32* %22, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %181

151:                                              ; preds = %142
  %152 = load %struct.inode*, %struct.inode** %9, align 8
  %153 = call i32 @MIN_OFFSET(%struct.inode* %152)
  %154 = sext i32 %153 to i64
  %155 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %156 = bitcast %struct.f2fs_xattr_entry* %155 to i8*
  %157 = load i8*, i8** %18, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sub nsw i64 %154, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %21, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %151
  %166 = load i32, i32* %26, align 4
  %167 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %168 = call i32 @ENTRY_SIZE(%struct.f2fs_xattr_entry* %167)
  %169 = add nsw i32 %166, %168
  store i32 %169, i32* %26, align 4
  br label %170

170:                                              ; preds = %165, %151
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %22, align 4
  %173 = icmp slt i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* @E2BIG, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %25, align 4
  br label %306

180:                                              ; preds = %170
  br label %181

181:                                              ; preds = %180, %142
  %182 = load i32, i32* %21, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %210

184:                                              ; preds = %181
  %185 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %186 = call %struct.f2fs_xattr_entry* @XATTR_NEXT_ENTRY(%struct.f2fs_xattr_entry* %185)
  store %struct.f2fs_xattr_entry* %186, %struct.f2fs_xattr_entry** %27, align 8
  %187 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %188 = call i32 @ENTRY_SIZE(%struct.f2fs_xattr_entry* %187)
  store i32 %188, i32* %28, align 4
  %189 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %16, align 8
  %190 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %27, align 8
  %191 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %192 = bitcast %struct.f2fs_xattr_entry* %191 to i8*
  %193 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %27, align 8
  %194 = bitcast %struct.f2fs_xattr_entry* %193 to i8*
  %195 = ptrtoint i8* %192 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memmove(%struct.f2fs_xattr_entry* %189, %struct.f2fs_xattr_entry* %190, i32 %198)
  %200 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %201 = bitcast %struct.f2fs_xattr_entry* %200 to i8*
  %202 = load i32, i32* %28, align 4
  %203 = sext i32 %202 to i64
  %204 = sub i64 0, %203
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  %206 = bitcast i8* %205 to %struct.f2fs_xattr_entry*
  store %struct.f2fs_xattr_entry* %206, %struct.f2fs_xattr_entry** %17, align 8
  %207 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %208 = load i32, i32* %28, align 4
  %209 = call i32 @memset(%struct.f2fs_xattr_entry* %207, i32 0, i32 %208)
  br label %210

210:                                              ; preds = %184, %181
  %211 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %212 = bitcast %struct.f2fs_xattr_entry* %211 to i8*
  %213 = load i8*, i8** %18, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %24, align 4
  %218 = load i8*, i8** %12, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %249

220:                                              ; preds = %210
  %221 = load i32, i32* %10, align 4
  %222 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %223 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i64, i64* %23, align 8
  %225 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %226 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %228 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load i8*, i8** %11, align 8
  %231 = load i64, i64* %23, align 8
  %232 = call i32 @memcpy(i8* %229, i8* %230, i64 %231)
  %233 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %234 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = load i64, i64* %23, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %29, align 8
  %238 = load i8*, i8** %29, align 8
  %239 = load i8*, i8** %12, align 8
  %240 = load i64, i64* %13, align 8
  %241 = call i32 @memcpy(i8* %238, i8* %239, i64 %240)
  %242 = load i64, i64* %13, align 8
  %243 = call i32 @cpu_to_le16(i64 %242)
  %244 = load %struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry** %17, align 8
  %245 = getelementptr inbounds %struct.f2fs_xattr_entry, %struct.f2fs_xattr_entry* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  %246 = load i32, i32* %22, align 4
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %24, align 4
  br label %249

249:                                              ; preds = %220, %210
  %250 = load %struct.inode*, %struct.inode** %9, align 8
  %251 = load i32, i32* %24, align 4
  %252 = load i8*, i8** %18, align 8
  %253 = load %struct.page*, %struct.page** %14, align 8
  %254 = call i32 @write_all_xattrs(%struct.inode* %250, i32 %251, i8* %252, %struct.page* %253)
  store i32 %254, i32* %25, align 4
  %255 = load i32, i32* %25, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %249
  br label %306

258:                                              ; preds = %249
  %259 = load %struct.inode*, %struct.inode** %9, align 8
  %260 = load i32, i32* @FI_ACL_MODE, align 4
  %261 = call i64 @is_inode_flag_set(%struct.inode* %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load %struct.inode*, %struct.inode** %9, align 8
  %265 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %264)
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.inode*, %struct.inode** %9, align 8
  %269 = getelementptr inbounds %struct.inode, %struct.inode* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 4
  %270 = load %struct.inode*, %struct.inode** %9, align 8
  %271 = call i32 @current_time(%struct.inode* %270)
  %272 = load %struct.inode*, %struct.inode** %9, align 8
  %273 = getelementptr inbounds %struct.inode, %struct.inode* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.inode*, %struct.inode** %9, align 8
  %275 = load i32, i32* @FI_ACL_MODE, align 4
  %276 = call i32 @clear_inode_flag(%struct.inode* %274, i32 %275)
  br label %277

277:                                              ; preds = %263, %258
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @F2FS_XATTR_INDEX_ENCRYPTION, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = load i8*, i8** %11, align 8
  %283 = load i32, i32* @F2FS_XATTR_NAME_ENCRYPTION_CONTEXT, align 4
  %284 = call i32 @strcmp(i8* %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %281
  %287 = load %struct.inode*, %struct.inode** %9, align 8
  %288 = call i32 @f2fs_set_encrypted_inode(%struct.inode* %287)
  br label %289

289:                                              ; preds = %286, %281, %277
  %290 = load %struct.inode*, %struct.inode** %9, align 8
  %291 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %290, i32 1)
  %292 = load i32, i32* %25, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %305, label %294

294:                                              ; preds = %289
  %295 = load %struct.inode*, %struct.inode** %9, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @S_ISDIR(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = load %struct.inode*, %struct.inode** %9, align 8
  %302 = call i32 @F2FS_I_SB(%struct.inode* %301)
  %303 = load i32, i32* @SBI_NEED_CP, align 4
  %304 = call i32 @set_sbi_flag(i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %300, %294, %289
  br label %306

306:                                              ; preds = %305, %257, %177, %128, %121, %109, %83
  %307 = load i8*, i8** %18, align 8
  %308 = call i32 @kvfree(i8* %307)
  %309 = load i32, i32* %25, align 4
  store i32 %309, i32* %8, align 4
  br label %310

310:                                              ; preds = %306, %66, %57, %49, %36
  %311 = load i32, i32* %8, align 4
  ret i32 %311
}

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MAX_VALUE_LEN(%struct.inode*) #1

declare dso_local i32 @read_all_xattrs(%struct.inode*, %struct.page*, i8**) #1

declare dso_local i32 @XATTR_SIZE(i32, %struct.inode*) #1

declare dso_local %struct.f2fs_xattr_entry* @__find_xattr(i8*, i8*, i32, i64, i8*) #1

declare dso_local i32 @f2fs_err(i32, i8*, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @set_sbi_flag(i32, i32) #1

declare dso_local i64 @IS_XATTR_LAST_ENTRY(%struct.f2fs_xattr_entry*) #1

declare dso_local i64 @f2fs_xattr_value_same(%struct.f2fs_xattr_entry*, i8*, i64) #1

declare dso_local %struct.f2fs_xattr_entry* @XATTR_NEXT_ENTRY(%struct.f2fs_xattr_entry*) #1

declare dso_local i32 @XATTR_ALIGN(i32) #1

declare dso_local i32 @MIN_OFFSET(%struct.inode*) #1

declare dso_local i32 @ENTRY_SIZE(%struct.f2fs_xattr_entry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memmove(%struct.f2fs_xattr_entry*, %struct.f2fs_xattr_entry*, i32) #1

declare dso_local i32 @memset(%struct.f2fs_xattr_entry*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @write_all_xattrs(%struct.inode*, i32, i8*, %struct.page*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @f2fs_set_encrypted_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
