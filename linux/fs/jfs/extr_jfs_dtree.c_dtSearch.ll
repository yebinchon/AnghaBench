; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtSearch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.component_name = type { i32, i32 }
%struct.btstack = type { i32, %struct.btframe* }
%struct.btframe = type { i32, %struct.metapage*, i8* }
%struct.metapage = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ldtentry = type { i32 }

@JFS_NAME_MAX = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@BT_LEAF = common dso_local global i32 0, align 4
@JFS_LOOKUP = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@JFS_REMOVE = common dso_local global i32 0, align 4
@JFS_RENAME = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stack overrun!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtSearch(%struct.inode* %0, %struct.component_name* %1, i64* %2, %struct.btstack* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.component_name*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.btstack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btframe*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.component_name, align 4
  %25 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.component_name* %1, %struct.component_name** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.btstack* %3, %struct.btstack** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 288, i32* %22, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %25, align 8
  %29 = load i64, i64* @JFS_NAME_MAX, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call i32 @kmalloc_array(i64 %30, i32 4, i32 %31)
  %33 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %299

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.component_name*, %struct.component_name** %7, align 8
  %44 = getelementptr inbounds %struct.component_name, %struct.component_name* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @UniStrcpy(i32 %42, i32 %45)
  %47 = load %struct.component_name*, %struct.component_name** %7, align 8
  %48 = getelementptr inbounds %struct.component_name, %struct.component_name* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.super_block*, %struct.super_block** %25, align 8
  %52 = call %struct.TYPE_10__* @JFS_SBI(%struct.super_block* %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @JFS_OS2, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @JFS_OS2, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = call i32 @ciToUpper(%struct.component_name* %24)
  br label %61

61:                                               ; preds = %59, %40
  %62 = load %struct.btstack*, %struct.btstack** %9, align 8
  %63 = call i32 @BT_CLR(%struct.btstack* %62)
  %64 = load %struct.btstack*, %struct.btstack** %9, align 8
  %65 = getelementptr inbounds %struct.btstack, %struct.btstack* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  store i8* null, i8** %13, align 8
  br label %66

66:                                               ; preds = %261, %61
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.metapage*, %struct.metapage** %14, align 8
  %70 = load i32, i32* %22, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @DT_GETPAGE(%struct.inode* %67, i8* %68, %struct.metapage* %69, i32 %70, %struct.TYPE_9__* %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %295

77:                                               ; preds = %66
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %79 = call i64* @DT_GETSTBL(%struct.TYPE_9__* %78)
  store i64* %79, i64** %16, align 8
  store i32 0, i32* %17, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %200, %77
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %203

87:                                               ; preds = %84
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %19, align 4
  %90 = ashr i32 %89, 1
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %18, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BT_LEAF, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %87
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %101 = load i64*, i64** %16, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.super_block*, %struct.super_block** %25, align 8
  %107 = call %struct.TYPE_10__* @JFS_SBI(%struct.super_block* %106)
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ciCompare(%struct.component_name* %24, %struct.TYPE_9__* %100, i64 %105, i32 %109)
  store i32 %110, i32* %12, align 4
  br label %119

111:                                              ; preds = %87
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dtCompare(%struct.component_name* %24, %struct.TYPE_9__* %112, i64 %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %111, %99
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %191

122:                                              ; preds = %119
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @BT_LEAF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %190

130:                                              ; preds = %122
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64*, i64** %16, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = bitcast i32* %139 to %struct.ldtentry*
  %141 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le32_to_cpu(i32 %142)
  store i64 %143, i64* %23, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @JFS_LOOKUP, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %130
  %148 = load i64, i64* %23, align 8
  %149 = load i64*, i64** %8, align 8
  store i64 %148, i64* %149, align 8
  store i32 0, i32* %11, align 4
  br label %292

150:                                              ; preds = %130
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @JFS_CREATE, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i64, i64* %23, align 8
  %156 = load i64*, i64** %8, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i32, i32* @EEXIST, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %11, align 4
  br label %292

159:                                              ; preds = %150
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @JFS_REMOVE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @JFS_RENAME, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163, %159
  %168 = load i64*, i64** %8, align 8
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %23, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* @ESTALE, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %11, align 4
  br label %292

175:                                              ; preds = %167, %163
  %176 = load i64, i64* %23, align 8
  %177 = load i64*, i64** %8, align 8
  store i64 %176, i64* %177, align 8
  %178 = load %struct.btstack*, %struct.btstack** %9, align 8
  %179 = getelementptr inbounds %struct.btstack, %struct.btstack* %178, i32 0, i32 1
  %180 = load %struct.btframe*, %struct.btframe** %179, align 8
  store %struct.btframe* %180, %struct.btframe** %20, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load %struct.btframe*, %struct.btframe** %20, align 8
  %183 = getelementptr inbounds %struct.btframe, %struct.btframe* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load %struct.btframe*, %struct.btframe** %20, align 8
  %186 = getelementptr inbounds %struct.btframe, %struct.btframe* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.metapage*, %struct.metapage** %14, align 8
  %188 = load %struct.btframe*, %struct.btframe** %20, align 8
  %189 = getelementptr inbounds %struct.btframe, %struct.btframe* %188, i32 0, i32 1
  store %struct.metapage* %187, %struct.metapage** %189, align 8
  store i32 0, i32* %11, align 4
  br label %295

190:                                              ; preds = %122
  br label %250

191:                                              ; preds = %119
  %192 = load i32, i32* %12, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %194, %191
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %19, align 4
  %202 = ashr i32 %201, 1
  store i32 %202, i32* %19, align 4
  br label %84

203:                                              ; preds = %84
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @BT_LEAF, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %203
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @JFS_LOOKUP, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @JFS_REMOVE, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @JFS_RENAME, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219, %215, %211
  %224 = load i32, i32* @ENOENT, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %11, align 4
  br label %292

226:                                              ; preds = %219
  %227 = load i64*, i64** %8, align 8
  store i64 0, i64* %227, align 8
  %228 = load %struct.btstack*, %struct.btstack** %9, align 8
  %229 = getelementptr inbounds %struct.btstack, %struct.btstack* %228, i32 0, i32 1
  %230 = load %struct.btframe*, %struct.btframe** %229, align 8
  store %struct.btframe* %230, %struct.btframe** %20, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = load %struct.btframe*, %struct.btframe** %20, align 8
  %233 = getelementptr inbounds %struct.btframe, %struct.btframe* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %17, align 4
  %235 = load %struct.btframe*, %struct.btframe** %20, align 8
  %236 = getelementptr inbounds %struct.btframe, %struct.btframe* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.metapage*, %struct.metapage** %14, align 8
  %238 = load %struct.btframe*, %struct.btframe** %20, align 8
  %239 = getelementptr inbounds %struct.btframe, %struct.btframe* %238, i32 0, i32 1
  store %struct.metapage* %237, %struct.metapage** %239, align 8
  store i32 0, i32* %11, align 4
  br label %295

240:                                              ; preds = %203
  %241 = load i32, i32* %17, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %17, align 4
  %245 = sub nsw i32 %244, 1
  br label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %17, align 4
  br label %248

248:                                              ; preds = %246, %243
  %249 = phi i32 [ %245, %243 ], [ %247, %246 ]
  store i32 %249, i32* %18, align 4
  br label %250

250:                                              ; preds = %248, %190
  %251 = load %struct.btstack*, %struct.btstack** %9, align 8
  %252 = call i64 @BT_STACK_FULL(%struct.btstack* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %250
  %255 = load %struct.super_block*, %struct.super_block** %25, align 8
  %256 = call i32 @jfs_error(%struct.super_block* %255, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %257 = load %struct.btstack*, %struct.btstack** %9, align 8
  %258 = call i32 @BT_STACK_DUMP(%struct.btstack* %257)
  %259 = load i32, i32* @EIO, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %11, align 4
  br label %292

261:                                              ; preds = %250
  %262 = load %struct.btstack*, %struct.btstack** %9, align 8
  %263 = getelementptr inbounds %struct.btstack, %struct.btstack* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 8
  %266 = load %struct.btstack*, %struct.btstack** %9, align 8
  %267 = load i8*, i8** %13, align 8
  %268 = load i32, i32* %18, align 4
  %269 = call i32 @BT_PUSH(%struct.btstack* %266, i8* %267, i32 %268)
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i64*, i64** %16, align 8
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32, i32* %272, i64 %277
  store i32* %278, i32** %21, align 8
  %279 = load i32*, i32** %21, align 8
  %280 = call i8* @addressPXD(i32* %279)
  store i8* %280, i8** %13, align 8
  %281 = load i32*, i32** %21, align 8
  %282 = call i32 @lengthPXD(i32* %281)
  %283 = load %struct.inode*, %struct.inode** %6, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 0
  %285 = load %struct.super_block*, %struct.super_block** %284, align 8
  %286 = call %struct.TYPE_10__* @JFS_SBI(%struct.super_block* %285)
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %282, %288
  store i32 %289, i32* %22, align 4
  %290 = load %struct.metapage*, %struct.metapage** %14, align 8
  %291 = call i32 @DT_PUTPAGE(%struct.metapage* %290)
  br label %66

292:                                              ; preds = %254, %223, %172, %154, %147
  %293 = load %struct.metapage*, %struct.metapage** %14, align 8
  %294 = call i32 @DT_PUTPAGE(%struct.metapage* %293)
  br label %295

295:                                              ; preds = %292, %226, %175, %76
  %296 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @kfree(i32 %297)
  br label %299

299:                                              ; preds = %295, %37
  %300 = load i32, i32* %11, align 4
  ret i32 %300
}

declare dso_local i32 @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @UniStrcpy(i32, i32) #1

declare dso_local %struct.TYPE_10__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @ciToUpper(%struct.component_name*) #1

declare dso_local i32 @BT_CLR(%struct.btstack*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i8*, %struct.metapage*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_9__*) #1

declare dso_local i32 @ciCompare(%struct.component_name*, %struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @dtCompare(%struct.component_name*, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @BT_STACK_FULL(%struct.btstack*) #1

declare dso_local i32 @jfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @BT_STACK_DUMP(%struct.btstack*) #1

declare dso_local i32 @BT_PUSH(%struct.btstack*, i8*, i32) #1

declare dso_local i8* @addressPXD(i32*) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
