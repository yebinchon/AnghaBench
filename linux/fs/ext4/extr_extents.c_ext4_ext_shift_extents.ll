; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_shift_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_shift_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent*, i32 }
%struct.ext4_extent = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@SHIFT_LEFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected hole at %lu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i64, i64, i32)* @ext4_ext_shift_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_shift_extents(%struct.inode* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_ext_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %24 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %20, i64 %22, %struct.ext4_ext_path** null, i32 %23)
  store %struct.ext4_ext_path* %24, %struct.ext4_ext_path** %12, align 8
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %26 = call i64 @IS_ERR(%struct.ext4_ext_path* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %30 = call i32 @PTR_ERR(%struct.ext4_ext_path* %29)
  store i32 %30, i32* %6, align 4
  br label %279

31:                                               ; preds = %5
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i64 %37
  %39 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %38, i32 0, i32 1
  %40 = load %struct.ext4_extent*, %struct.ext4_extent** %39, align 8
  store %struct.ext4_extent* %40, %struct.ext4_extent** %15, align 8
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %42 = icmp ne %struct.ext4_extent* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %273

44:                                               ; preds = %31
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %46 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  store i64 %48, i64* %16, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SHIFT_LEFT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %44
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, 1
  %56 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %57 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %53, i64 %55, %struct.ext4_ext_path** %12, i32 %56)
  store %struct.ext4_ext_path* %57, %struct.ext4_ext_path** %12, align 8
  %58 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %59 = call i64 @IS_ERR(%struct.ext4_ext_path* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %63 = call i32 @PTR_ERR(%struct.ext4_ext_path* %62)
  store i32 %63, i32* %6, align 4
  br label %279

64:                                               ; preds = %52
  %65 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %66 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %14, align 4
  %68 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %68, i64 %70
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %71, i32 0, i32 1
  %73 = load %struct.ext4_extent*, %struct.ext4_extent** %72, align 8
  store %struct.ext4_extent* %73, %struct.ext4_extent** %15, align 8
  %74 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %75 = icmp ne %struct.ext4_extent* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %64
  %77 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %78 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @le32_to_cpu(i32 %79)
  store i64 %80, i64* %18, align 8
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %82 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %86 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %85)
  %87 = add nsw i64 %84, %86
  store i64 %87, i64* %19, align 8
  br label %89

88:                                               ; preds = %64
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %89

89:                                               ; preds = %88, %76
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %18, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %18, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %93, %89
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %19, align 8
  %101 = sub nsw i64 %99, %100
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97, %93
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %273

106:                                              ; preds = %97
  br label %120

107:                                              ; preds = %44
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %112 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %111)
  %113 = add nsw i64 %110, %112
  %114 = sub nsw i64 %109, %113
  %115 = icmp sgt i64 %108, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %13, align 4
  br label %273

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %106
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @SHIFT_LEFT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i64* %9, i64** %17, align 8
  br label %126

125:                                              ; preds = %120
  store i64* %16, i64** %17, align 8
  br label %126

126:                                              ; preds = %125, %124
  br label %127

127:                                              ; preds = %271, %197, %126
  %128 = load i64*, i64** %17, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %16, align 8
  %133 = icmp sle i64 %131, %132
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  br i1 %135, label %136, label %272

136:                                              ; preds = %134
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = load i64*, i64** %17, align 8
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %141 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %137, i64 %139, %struct.ext4_ext_path** %12, i32 %140)
  store %struct.ext4_ext_path* %141, %struct.ext4_ext_path** %12, align 8
  %142 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %143 = call i64 @IS_ERR(%struct.ext4_ext_path* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %147 = call i32 @PTR_ERR(%struct.ext4_ext_path* %146)
  store i32 %147, i32* %6, align 4
  br label %279

148:                                              ; preds = %136
  %149 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %150 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %14, align 4
  %152 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %152, i64 %154
  %156 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %155, i32 0, i32 1
  %157 = load %struct.ext4_extent*, %struct.ext4_extent** %156, align 8
  store %struct.ext4_extent* %157, %struct.ext4_extent** %15, align 8
  %158 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %159 = icmp ne %struct.ext4_extent* %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %148
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = load i64*, i64** %17, align 8
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @EXT4_ERROR_INODE(%struct.inode* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %163)
  %165 = load i32, i32* @EFSCORRUPTED, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %6, align 4
  br label %279

167:                                              ; preds = %148
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @SHIFT_LEFT, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %167
  %172 = load i64*, i64** %17, align 8
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %175 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @le32_to_cpu(i32 %176)
  %178 = icmp sgt i64 %173, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %171
  %180 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %181 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %181, i64 %183
  %185 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.ext4_extent* @EXT_LAST_EXTENT(i32 %186)
  %188 = icmp ult %struct.ext4_extent* %180, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %179
  %190 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %190, i64 %192
  %194 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %193, i32 0, i32 1
  %195 = load %struct.ext4_extent*, %struct.ext4_extent** %194, align 8
  %196 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %195, i32 1
  store %struct.ext4_extent* %196, %struct.ext4_extent** %194, align 8
  br label %201

197:                                              ; preds = %179
  %198 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %199 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %198)
  %200 = load i64*, i64** %17, align 8
  store i64 %199, i64* %200, align 8
  br label %127

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %171, %167
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @SHIFT_LEFT, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %202
  %207 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %207, i64 %209
  %211 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call %struct.ext4_extent* @EXT_LAST_EXTENT(i32 %212)
  store %struct.ext4_extent* %213, %struct.ext4_extent** %15, align 8
  %214 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %215 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @le32_to_cpu(i32 %216)
  %218 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %219 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %218)
  %220 = add nsw i64 %217, %219
  %221 = load i64*, i64** %17, align 8
  store i64 %220, i64* %221, align 8
  br label %261

222:                                              ; preds = %202
  %223 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %223, i64 %225
  %227 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(i32 %228)
  store %struct.ext4_extent* %229, %struct.ext4_extent** %15, align 8
  %230 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %231 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @le32_to_cpu(i32 %232)
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %222
  %236 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %237 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @le32_to_cpu(i32 %238)
  %240 = sub nsw i64 %239, 1
  %241 = load i64*, i64** %17, align 8
  store i64 %240, i64* %241, align 8
  br label %243

242:                                              ; preds = %222
  store i64* null, i64** %17, align 8
  br label %243

243:                                              ; preds = %242, %235
  br label %244

244:                                              ; preds = %251, %243
  %245 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %246 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @le32_to_cpu(i32 %247)
  %249 = load i64, i64* %9, align 8
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %253 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %252, i32 1
  store %struct.ext4_extent* %253, %struct.ext4_extent** %15, align 8
  br label %244

254:                                              ; preds = %244
  %255 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %256 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %256, i64 %258
  %260 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %259, i32 0, i32 1
  store %struct.ext4_extent* %255, %struct.ext4_extent** %260, align 8
  br label %261

261:                                              ; preds = %254, %206
  %262 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %263 = load i64, i64* %10, align 8
  %264 = load %struct.inode*, %struct.inode** %7, align 8
  %265 = load i32*, i32** %8, align 8
  %266 = load i32, i32* %11, align 4
  %267 = call i32 @ext4_ext_shift_path_extents(%struct.ext4_ext_path* %262, i64 %263, %struct.inode* %264, i32* %265, i32 %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  br label %272

271:                                              ; preds = %261
  br label %127

272:                                              ; preds = %270, %134
  br label %273

273:                                              ; preds = %272, %116, %103, %43
  %274 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %275 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %274)
  %276 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %277 = call i32 @kfree(%struct.ext4_ext_path* %276)
  %278 = load i32, i32* %13, align 4
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %273, %160, %145, %61, %28
  %280 = load i32, i32* %6, align 4
  ret i32 %280
}

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(i32) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(i32) #1

declare dso_local i32 @ext4_ext_shift_path_extents(%struct.ext4_ext_path*, i64, %struct.inode*, i32*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
