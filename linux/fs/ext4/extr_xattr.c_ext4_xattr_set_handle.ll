; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_set_handle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_set_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.ext4_xattr_info = type { i32, i8*, i8*, i64, i32 }
%struct.ext4_xattr_ibody_find = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.ext4_xattr_block_find = type { %struct.buffer_head*, %struct.TYPE_12__ }
%struct.ext4_inode = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ENODATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_STATE_NEW = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_xattr_set_handle(i32* %0, %struct.inode* %1, i32 %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_xattr_info, align 8
  %17 = alloca %struct.ext4_xattr_ibody_find, align 8
  %18 = alloca %struct.ext4_xattr_block_find, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ext4_inode*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 0
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 1
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 2
  %29 = load i8*, i8** %13, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 3
  %31 = load i64, i64* %14, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %34 = bitcast %struct.TYPE_14__* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  %35 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* @ENODATA, align 4
  %38 = sub nsw i32 0, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %41, align 8
  %42 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* @ENODATA, align 4
  %45 = sub nsw i32 0, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %7
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %359

53:                                               ; preds = %7
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = icmp sgt i32 %55, 255
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %359

60:                                               ; preds = %53
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = call i32 @ext4_write_lock_xattr(%struct.inode* %61, i32* %19)
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @ext4_handle_valid(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call %struct.buffer_head* @ext4_xattr_get_block(%struct.inode* %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %21, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %70 = call i64 @IS_ERR(%struct.buffer_head* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %74 = call i32 @PTR_ERR(%struct.buffer_head* %73)
  store i32 %74, i32* %20, align 4
  br label %348

75:                                               ; preds = %66
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @XATTR_CREATE, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @__ext4_xattr_set_credits(%struct.TYPE_13__* %78, %struct.inode* %79, %struct.buffer_head* %80, i64 %81, i32 %84)
  store i32 %85, i32* %22, align 4
  %86 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %87 = call i32 @brelse(%struct.buffer_head* %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %22, align 4
  %90 = call i32 @ext4_handle_has_enough_credits(i32* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %75
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %20, align 4
  br label %348

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %60
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %100 = call i32 @ext4_reserve_inode_write(i32* %97, %struct.inode* %98, %struct.TYPE_14__* %99)
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %348

104:                                              ; preds = %96
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = load i32, i32* @EXT4_STATE_NEW, align 4
  %107 = call i64 @ext4_test_inode_state(%struct.inode* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %111 = call %struct.ext4_inode* @ext4_raw_inode(%struct.TYPE_14__* %110)
  store %struct.ext4_inode* %111, %struct.ext4_inode** %23, align 8
  %112 = load %struct.ext4_inode*, %struct.ext4_inode** %23, align 8
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = call %struct.TYPE_15__* @EXT4_SB(%struct.TYPE_13__* %115)
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memset(%struct.ext4_inode* %112, i32 0, i32 %118)
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = load i32, i32* @EXT4_STATE_NEW, align 4
  %122 = call i32 @ext4_clear_inode_state(%struct.inode* %120, i32 %121)
  br label %123

123:                                              ; preds = %109, %104
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = call i32 @ext4_xattr_ibody_find(%struct.inode* %124, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %348

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = call i32 @ext4_xattr_block_find(%struct.inode* %135, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %20, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %348

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %146
  %152 = load i32, i32* @ENODATA, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @XATTR_REPLACE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %348

159:                                              ; preds = %151
  store i32 0, i32* %20, align 4
  %160 = load i8*, i8** %13, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %348

163:                                              ; preds = %159
  br label %173

164:                                              ; preds = %146, %141
  %165 = load i32, i32* @EEXIST, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @XATTR_CREATE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %348

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %163
  %174 = load i8*, i8** %13, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %196, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load i32*, i32** %9, align 8
  %183 = load %struct.inode*, %struct.inode** %10, align 8
  %184 = call i32 @ext4_xattr_ibody_set(i32* %182, %struct.inode* %183, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %184, i32* %20, align 4
  br label %195

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load i32*, i32** %9, align 8
  %192 = load %struct.inode*, %struct.inode** %10, align 8
  %193 = call i32 @ext4_xattr_block_set(i32* %191, %struct.inode* %192, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %193, i32* %20, align 4
  br label %194

194:                                              ; preds = %190, %185
  br label %195

195:                                              ; preds = %194, %181
  br label %317

196:                                              ; preds = %173
  store i32 0, i32* %20, align 4
  %197 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %203 = call i64 @ext4_xattr_value_same(%struct.TYPE_12__* %202, %struct.ext4_xattr_info* %16)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %348

206:                                              ; preds = %201, %196
  %207 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %213 = call i64 @ext4_xattr_value_same(%struct.TYPE_12__* %212, %struct.ext4_xattr_info* %16)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %348

216:                                              ; preds = %211, %206
  %217 = load %struct.inode*, %struct.inode** %10, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 1
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = call i64 @ext4_has_feature_ea_inode(%struct.TYPE_13__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @EXT4_XATTR_SIZE(i64 %224)
  %226 = load %struct.inode*, %struct.inode** %10, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 1
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @EXT4_XATTR_MIN_LARGE_EA_SIZE(i32 %230)
  %232 = icmp sgt i64 %225, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %222
  %234 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 4
  store i32 1, i32* %234, align 8
  br label %235

235:                                              ; preds = %233, %222, %216
  br label %236

236:                                              ; preds = %310, %235
  %237 = load i32*, i32** %9, align 8
  %238 = load %struct.inode*, %struct.inode** %10, align 8
  %239 = call i32 @ext4_xattr_ibody_set(i32* %237, %struct.inode* %238, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %239, i32* %20, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %252, label %242

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 2
  store i8* null, i8** %248, align 8
  %249 = load i32*, i32** %9, align 8
  %250 = load %struct.inode*, %struct.inode** %10, align 8
  %251 = call i32 @ext4_xattr_block_set(i32* %249, %struct.inode* %250, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %251, i32* %20, align 4
  br label %316

252:                                              ; preds = %242, %236
  %253 = load i32, i32* %20, align 4
  %254 = load i32, i32* @ENOSPC, align 4
  %255 = sub nsw i32 0, %254
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %315

257:                                              ; preds = %252
  %258 = load %struct.inode*, %struct.inode** %10, align 8
  %259 = call %struct.TYPE_11__* @EXT4_I(%struct.inode* %258)
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %279, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 0
  %270 = load %struct.buffer_head*, %struct.buffer_head** %269, align 8
  %271 = call i32 @brelse(%struct.buffer_head* %270)
  %272 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %272, align 8
  %273 = load %struct.inode*, %struct.inode** %10, align 8
  %274 = call i32 @ext4_xattr_block_find(%struct.inode* %273, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %274, i32* %20, align 4
  %275 = load i32, i32* %20, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %268
  br label %348

278:                                              ; preds = %268
  br label %279

279:                                              ; preds = %278, %263, %257
  %280 = load i32*, i32** %9, align 8
  %281 = load %struct.inode*, %struct.inode** %10, align 8
  %282 = call i32 @ext4_xattr_block_set(i32* %280, %struct.inode* %281, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_block_find* %18)
  store i32 %282, i32* %20, align 4
  %283 = load i32, i32* %20, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %295, label %285

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 2
  store i8* null, i8** %291, align 8
  %292 = load i32*, i32** %9, align 8
  %293 = load %struct.inode*, %struct.inode** %10, align 8
  %294 = call i32 @ext4_xattr_ibody_set(i32* %292, %struct.inode* %293, %struct.ext4_xattr_info* %16, %struct.ext4_xattr_ibody_find* %17)
  store i32 %294, i32* %20, align 4
  br label %314

295:                                              ; preds = %285, %279
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* @ENOSPC, align 4
  %298 = sub nsw i32 0, %297
  %299 = icmp eq i32 %296, %298
  br i1 %299, label %300, label %313

300:                                              ; preds = %295
  %301 = load %struct.inode*, %struct.inode** %10, align 8
  %302 = getelementptr inbounds %struct.inode, %struct.inode* %301, i32 0, i32 1
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %302, align 8
  %304 = call i64 @ext4_has_feature_ea_inode(%struct.TYPE_13__* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %16, i32 0, i32 4
  store i32 1, i32* %311, align 8
  br label %236

312:                                              ; preds = %306, %300
  br label %313

313:                                              ; preds = %312, %295
  br label %314

314:                                              ; preds = %313, %290
  br label %315

315:                                              ; preds = %314, %252
  br label %316

316:                                              ; preds = %315, %247
  br label %317

317:                                              ; preds = %316, %195
  %318 = load i32, i32* %20, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %347, label %320

320:                                              ; preds = %317
  %321 = load i32*, i32** %9, align 8
  %322 = load %struct.inode*, %struct.inode** %10, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 1
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %323, align 8
  %325 = call i32 @ext4_xattr_update_super_block(i32* %321, %struct.TYPE_13__* %324)
  %326 = load %struct.inode*, %struct.inode** %10, align 8
  %327 = call i32 @current_time(%struct.inode* %326)
  %328 = load %struct.inode*, %struct.inode** %10, align 8
  %329 = getelementptr inbounds %struct.inode, %struct.inode* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  %330 = load i8*, i8** %13, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %320
  store i32 0, i32* %19, align 4
  br label %333

333:                                              ; preds = %332, %320
  %334 = load i32*, i32** %9, align 8
  %335 = load %struct.inode*, %struct.inode** %10, align 8
  %336 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %337 = call i32 @ext4_mark_iloc_dirty(i32* %334, %struct.inode* %335, %struct.TYPE_14__* %336)
  store i32 %337, i32* %20, align 4
  %338 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %339, align 8
  %340 = load %struct.inode*, %struct.inode** %10, align 8
  %341 = call i64 @IS_SYNC(%struct.inode* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %333
  %344 = load i32*, i32** %9, align 8
  %345 = call i32 @ext4_handle_sync(i32* %344)
  br label %346

346:                                              ; preds = %343, %333
  br label %347

347:                                              ; preds = %346, %317
  br label %348

348:                                              ; preds = %347, %277, %215, %205, %171, %162, %158, %140, %128, %103, %92, %72
  %349 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %17, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load %struct.buffer_head*, %struct.buffer_head** %350, align 8
  %352 = call i32 @brelse(%struct.buffer_head* %351)
  %353 = getelementptr inbounds %struct.ext4_xattr_block_find, %struct.ext4_xattr_block_find* %18, i32 0, i32 0
  %354 = load %struct.buffer_head*, %struct.buffer_head** %353, align 8
  %355 = call i32 @brelse(%struct.buffer_head* %354)
  %356 = load %struct.inode*, %struct.inode** %10, align 8
  %357 = call i32 @ext4_write_unlock_xattr(%struct.inode* %356, i32* %19)
  %358 = load i32, i32* %20, align 4
  store i32 %358, i32* %8, align 4
  br label %359

359:                                              ; preds = %348, %57, %50
  %360 = load i32, i32* %8, align 4
  ret i32 %360
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ext4_write_lock_xattr(%struct.inode*, i32*) #2

declare dso_local i64 @ext4_handle_valid(i32*) #2

declare dso_local %struct.buffer_head* @ext4_xattr_get_block(%struct.inode*) #2

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #2

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #2

declare dso_local i32 @__ext4_xattr_set_credits(%struct.TYPE_13__*, %struct.inode*, %struct.buffer_head*, i64, i32) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @ext4_handle_has_enough_credits(i32*, i32) #2

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.TYPE_14__*) #2

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #2

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.TYPE_14__*) #2

declare dso_local i32 @memset(%struct.ext4_inode*, i32, i32) #2

declare dso_local %struct.TYPE_15__* @EXT4_SB(%struct.TYPE_13__*) #2

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @ext4_xattr_ibody_find(%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*) #2

declare dso_local i32 @ext4_xattr_block_find(%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_block_find*) #2

declare dso_local i32 @ext4_xattr_ibody_set(i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*) #2

declare dso_local i32 @ext4_xattr_block_set(i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_block_find*) #2

declare dso_local i64 @ext4_xattr_value_same(%struct.TYPE_12__*, %struct.ext4_xattr_info*) #2

declare dso_local i64 @ext4_has_feature_ea_inode(%struct.TYPE_13__*) #2

declare dso_local i64 @EXT4_XATTR_SIZE(i64) #2

declare dso_local i64 @EXT4_XATTR_MIN_LARGE_EA_SIZE(i32) #2

declare dso_local %struct.TYPE_11__* @EXT4_I(%struct.inode*) #2

declare dso_local i32 @ext4_xattr_update_super_block(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @current_time(%struct.inode*) #2

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.TYPE_14__*) #2

declare dso_local i64 @IS_SYNC(%struct.inode*) #2

declare dso_local i32 @ext4_handle_sync(i32*) #2

declare dso_local i32 @ext4_write_unlock_xattr(%struct.inode*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
