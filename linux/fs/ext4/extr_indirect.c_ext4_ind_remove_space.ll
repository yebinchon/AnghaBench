; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_ind_remove_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_ind_remove_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.ext4_inode_info = type { i64* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }

@EXT4_NDIR_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"call brelse\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ind_remove_space(i32* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_inode_info*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x %struct.TYPE_11__], align 16
  %16 = alloca [4 x %struct.TYPE_11__], align 16
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %32)
  store %struct.ext4_inode_info* %33, %struct.ext4_inode_info** %10, align 8
  %34 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %10, align 8
  %35 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %11, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.TYPE_14__* %39)
  store i32 %40, i32* %12, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %20, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %26, align 4
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = call %struct.TYPE_13__* @EXT4_SB(%struct.TYPE_14__* %48)
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %26, align 4
  %53 = add i32 %51, %52
  %54 = sub i32 %53, 1
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.TYPE_14__* %57)
  %59 = lshr i32 %54, %58
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %21, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %4
  %64 = load i32, i32* %21, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  store i32 0, i32* %5, align 4
  br label %662

74:                                               ; preds = %69
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %78 = call i32 @ext4_block_to_path(%struct.inode* %75, i32 %76, i32* %77, i32* null)
  store i32 %78, i32* %24, align 4
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %82 = call i32 @ext4_block_to_path(%struct.inode* %79, i32 %80, i32* %81, i32* null)
  store i32 %82, i32* %25, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %25, align 4
  %85 = icmp sgt i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load i32, i32* %24, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %108

90:                                               ; preds = %74
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %25, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64*, i64** %11, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = call i32 @ext4_free_data(i32* %95, %struct.inode* %96, i32* null, i64* %101, i64* %106)
  store i32 0, i32* %5, align 4
  br label %662

108:                                              ; preds = %90, %74
  %109 = load i32, i32* %25, align 4
  %110 = load i32, i32* %24, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %282

112:                                              ; preds = %108
  %113 = load i32, i32* %24, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = load i64*, i64** %11, align 8
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64*, i64** %11, align 8
  %124 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = call i32 @ext4_free_data(i32* %116, %struct.inode* %117, i32* null, i64* %122, i64* %126)
  br label %228

128:                                              ; preds = %112
  %129 = load %struct.inode*, %struct.inode** %7, align 8
  %130 = load i32, i32* %24, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %132 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %133 = call %struct.TYPE_11__* @ext4_find_shared(%struct.inode* %129, i32 %130, i32* %131, %struct.TYPE_11__* %132, i64* %22)
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %17, align 8
  %134 = load i64, i64* %22, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %128
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %138 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %139 = icmp eq %struct.TYPE_11__* %137, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %136
  %141 = load i32*, i32** %6, align 8
  %142 = load %struct.inode*, %struct.inode** %7, align 8
  %143 = getelementptr inbounds i64, i64* %22, i64 1
  %144 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %145 = load i32, i32* %24, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 -1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %150 = ptrtoint %struct.TYPE_11__* %148 to i64
  %151 = ptrtoint %struct.TYPE_11__* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 16
  %154 = trunc i64 %153 to i32
  %155 = call i32 @ext4_free_branches(i32* %141, %struct.inode* %142, %struct.TYPE_12__* null, i64* %22, i64* %143, i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  store i64 0, i64* %158, align 8
  br label %188

159:                                              ; preds = %136
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = call i32 @BUFFER_TRACE(%struct.TYPE_12__* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %177 = load i32, i32* %24, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 -1
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %182 = ptrtoint %struct.TYPE_11__* %180 to i64
  %183 = ptrtoint %struct.TYPE_11__* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 16
  %186 = trunc i64 %185 to i32
  %187 = call i32 @ext4_free_branches(i32* %164, %struct.inode* %165, %struct.TYPE_12__* %168, i64* %171, i64* %175, i32 %186)
  br label %188

188:                                              ; preds = %159, %140
  br label %189

189:                                              ; preds = %188, %128
  br label %190

190:                                              ; preds = %194, %189
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %192 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %193 = icmp ugt %struct.TYPE_11__* %191, %192
  br i1 %193, label %194, label %227

194:                                              ; preds = %190
  %195 = load i32*, i32** %6, align 8
  %196 = load %struct.inode*, %struct.inode** %7, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i64*
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %214 = load i32, i32* %24, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 -1
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %219 = ptrtoint %struct.TYPE_11__* %217 to i64
  %220 = ptrtoint %struct.TYPE_11__* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 16
  %223 = trunc i64 %222 to i32
  %224 = call i32 @ext4_free_branches(i32* %195, %struct.inode* %196, %struct.TYPE_12__* %199, i64* %203, i64* %212, i32 %223)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 -1
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %17, align 8
  br label %190

227:                                              ; preds = %190
  br label %228

228:                                              ; preds = %227, %115
  %229 = load %struct.inode*, %struct.inode** %7, align 8
  %230 = load i32, i32* %25, align 4
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %232 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %233 = call %struct.TYPE_11__* @ext4_find_shared(%struct.inode* %229, i32 %230, i32* %231, %struct.TYPE_11__* %232, i64* %23)
  store %struct.TYPE_11__* %233, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %233, %struct.TYPE_11__** %18, align 8
  %234 = load i64, i64* %23, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %228
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %238 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %239 = icmp eq %struct.TYPE_11__* %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %597

241:                                              ; preds = %236
  br label %247

242:                                              ; preds = %228
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i32 1
  store i64* %246, i64** %244, align 8
  br label %247

247:                                              ; preds = %242, %241
  br label %248

248:                                              ; preds = %252, %247
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %250 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %251 = icmp ugt %struct.TYPE_11__* %249, %250
  br i1 %251, label %252, label %281

252:                                              ; preds = %248
  %253 = load i32*, i32** %6, align 8
  %254 = load %struct.inode*, %struct.inode** %7, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to i64*
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %268 = load i32, i32* %25, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i64 -1
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %273 = ptrtoint %struct.TYPE_11__* %271 to i64
  %274 = ptrtoint %struct.TYPE_11__* %272 to i64
  %275 = sub i64 %273, %274
  %276 = sdiv exact i64 %275, 16
  %277 = trunc i64 %276 to i32
  %278 = call i32 @ext4_free_branches(i32* %253, %struct.inode* %254, %struct.TYPE_12__* %257, i64* %263, i64* %266, i32 %277)
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 -1
  store %struct.TYPE_11__* %280, %struct.TYPE_11__** %18, align 8
  br label %248

281:                                              ; preds = %248
  br label %597

282:                                              ; preds = %108
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.inode*, %struct.inode** %7, align 8
  %285 = load i32, i32* %24, align 4
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %287 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %288 = call %struct.TYPE_11__* @ext4_find_shared(%struct.inode* %284, i32 %285, i32* %286, %struct.TYPE_11__* %287, i64* %22)
  store %struct.TYPE_11__* %288, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %288, %struct.TYPE_11__** %17, align 8
  %289 = load %struct.inode*, %struct.inode** %7, align 8
  %290 = load i32, i32* %25, align 4
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %292 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %293 = call %struct.TYPE_11__* @ext4_find_shared(%struct.inode* %289, i32 %290, i32* %291, %struct.TYPE_11__* %292, i64* %23)
  store %struct.TYPE_11__* %293, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %293, %struct.TYPE_11__** %18, align 8
  %294 = load i64, i64* %22, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %388

296:                                              ; preds = %283
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %298 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %299 = ptrtoint %struct.TYPE_11__* %297 to i64
  %300 = ptrtoint %struct.TYPE_11__* %298 to i64
  %301 = sub i64 %299, %300
  %302 = sdiv exact i64 %301, 16
  %303 = trunc i64 %302 to i32
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %305 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %306 = ptrtoint %struct.TYPE_11__* %304 to i64
  %307 = ptrtoint %struct.TYPE_11__* %305 to i64
  %308 = sub i64 %306, %307
  %309 = sdiv exact i64 %308, 16
  %310 = trunc i64 %309 to i32
  %311 = call i32 @min(i32 %303, i32 %310)
  store i32 %311, i32* %27, align 4
  store i32 1, i32* %29, align 4
  store i32 0, i32* %28, align 4
  br label %312

312:                                              ; preds = %328, %296
  %313 = load i32, i32* %28, align 4
  %314 = load i32, i32* %27, align 4
  %315 = icmp sle i32 %313, %314
  br i1 %315, label %316, label %331

316:                                              ; preds = %312
  %317 = load i32, i32* %28, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %28, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %320, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %316
  store i32 0, i32* %29, align 4
  br label %331

327:                                              ; preds = %316
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %28, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %28, align 4
  br label %312

331:                                              ; preds = %326, %312
  %332 = load i32, i32* %29, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %387, label %334

334:                                              ; preds = %331
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %336 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %337 = icmp eq %struct.TYPE_11__* %335, %336
  br i1 %337, label %338, label %357

338:                                              ; preds = %334
  %339 = load i32*, i32** %6, align 8
  %340 = load %struct.inode*, %struct.inode** %7, align 8
  %341 = getelementptr inbounds i64, i64* %22, i64 1
  %342 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %343 = load i32, i32* %24, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i64 -1
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %348 = ptrtoint %struct.TYPE_11__* %346 to i64
  %349 = ptrtoint %struct.TYPE_11__* %347 to i64
  %350 = sub i64 %348, %349
  %351 = sdiv exact i64 %350, 16
  %352 = trunc i64 %351 to i32
  %353 = call i32 @ext4_free_branches(i32* %339, %struct.inode* %340, %struct.TYPE_12__* null, i64* %22, i64* %341, i32 %352)
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 1
  %356 = load i64*, i64** %355, align 8
  store i64 0, i64* %356, align 8
  br label %386

357:                                              ; preds = %334
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %359, align 8
  %361 = call i32 @BUFFER_TRACE(%struct.TYPE_12__* %360, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %362 = load i32*, i32** %6, align 8
  %363 = load %struct.inode*, %struct.inode** %7, align 8
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %365, align 8
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 1
  %369 = load i64*, i64** %368, align 8
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = load i64*, i64** %371, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 1
  %374 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %375 = load i32, i32* %24, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i64 -1
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %380 = ptrtoint %struct.TYPE_11__* %378 to i64
  %381 = ptrtoint %struct.TYPE_11__* %379 to i64
  %382 = sub i64 %380, %381
  %383 = sdiv exact i64 %382, 16
  %384 = trunc i64 %383 to i32
  %385 = call i32 @ext4_free_branches(i32* %362, %struct.inode* %363, %struct.TYPE_12__* %366, i64* %369, i64* %373, i32 %384)
  br label %386

386:                                              ; preds = %357, %338
  br label %387

387:                                              ; preds = %386, %331
  br label %388

388:                                              ; preds = %387, %283
  %389 = load i64, i64* %23, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %388
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 1
  %394 = load i64*, i64** %393, align 8
  %395 = getelementptr inbounds i64, i64* %394, i32 1
  store i64* %395, i64** %393, align 8
  br label %396

396:                                              ; preds = %391, %388
  br label %397

397:                                              ; preds = %552, %396
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %399 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %400 = icmp ugt %struct.TYPE_11__* %398, %399
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %403 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %404 = icmp ugt %struct.TYPE_11__* %402, %403
  br label %405

405:                                              ; preds = %401, %397
  %406 = phi i1 [ true, %397 ], [ %404, %401 ]
  br i1 %406, label %407, label %553

407:                                              ; preds = %405
  %408 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %409 = load i32, i32* %24, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i64 -1
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %414 = ptrtoint %struct.TYPE_11__* %412 to i64
  %415 = ptrtoint %struct.TYPE_11__* %413 to i64
  %416 = sub i64 %414, %415
  %417 = sdiv exact i64 %416, 16
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %30, align 4
  %419 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %420 = load i32, i32* %25, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i64 -1
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %425 = ptrtoint %struct.TYPE_11__* %423 to i64
  %426 = ptrtoint %struct.TYPE_11__* %424 to i64
  %427 = sub i64 %425, %426
  %428 = sdiv exact i64 %427, 16
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* %31, align 4
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %431 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %432 = icmp ugt %struct.TYPE_11__* %430, %431
  br i1 %432, label %433, label %474

433:                                              ; preds = %407
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %435 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %436 = icmp ugt %struct.TYPE_11__* %434, %435
  br i1 %436, label %437, label %474

437:                                              ; preds = %433
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 0
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp eq i64 %442, %447
  br i1 %448, label %449, label %474

449:                                              ; preds = %437
  %450 = load i32*, i32** %6, align 8
  %451 = load %struct.inode*, %struct.inode** %7, align 8
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %453, align 8
  %455 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 1
  %457 = load i64*, i64** %456, align 8
  %458 = getelementptr inbounds i64, i64* %457, i64 1
  %459 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 1
  %461 = load i64*, i64** %460, align 8
  %462 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %463 = load i32, i32* %24, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i64 -1
  %467 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %468 = ptrtoint %struct.TYPE_11__* %466 to i64
  %469 = ptrtoint %struct.TYPE_11__* %467 to i64
  %470 = sub i64 %468, %469
  %471 = sdiv exact i64 %470, 16
  %472 = trunc i64 %471 to i32
  %473 = call i32 @ext4_free_branches(i32* %450, %struct.inode* %451, %struct.TYPE_12__* %454, i64* %458, i64* %461, i32 %472)
  br label %554

474:                                              ; preds = %437, %433, %407
  %475 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %476 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %477 = icmp ugt %struct.TYPE_11__* %475, %476
  br i1 %477, label %478, label %515

478:                                              ; preds = %474
  %479 = load i32, i32* %30, align 4
  %480 = load i32, i32* %31, align 4
  %481 = icmp sle i32 %479, %480
  br i1 %481, label %482, label %515

482:                                              ; preds = %478
  %483 = load i32*, i32** %6, align 8
  %484 = load %struct.inode*, %struct.inode** %7, align 8
  %485 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 0
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %486, align 8
  %488 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 1
  %490 = load i64*, i64** %489, align 8
  %491 = getelementptr inbounds i64, i64* %490, i64 1
  %492 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %493 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_12__*, %struct.TYPE_12__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = inttoptr i64 %496 to i64*
  %498 = load i32, i32* %12, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i64, i64* %497, i64 %499
  %501 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %502 = load i32, i32* %24, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i64 -1
  %506 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %507 = ptrtoint %struct.TYPE_11__* %505 to i64
  %508 = ptrtoint %struct.TYPE_11__* %506 to i64
  %509 = sub i64 %507, %508
  %510 = sdiv exact i64 %509, 16
  %511 = trunc i64 %510 to i32
  %512 = call i32 @ext4_free_branches(i32* %483, %struct.inode* %484, %struct.TYPE_12__* %487, i64* %491, i64* %500, i32 %511)
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 -1
  store %struct.TYPE_11__* %514, %struct.TYPE_11__** %17, align 8
  br label %515

515:                                              ; preds = %482, %478, %474
  %516 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %517 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %518 = icmp ugt %struct.TYPE_11__* %516, %517
  br i1 %518, label %519, label %552

519:                                              ; preds = %515
  %520 = load i32, i32* %31, align 4
  %521 = load i32, i32* %30, align 4
  %522 = icmp sle i32 %520, %521
  br i1 %522, label %523, label %552

523:                                              ; preds = %519
  %524 = load i32*, i32** %6, align 8
  %525 = load %struct.inode*, %struct.inode** %7, align 8
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 0
  %528 = load %struct.TYPE_12__*, %struct.TYPE_12__** %527, align 8
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 0
  %531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 1
  %533 = load i64, i64* %532, align 8
  %534 = inttoptr i64 %533 to i64*
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 1
  %537 = load i64*, i64** %536, align 8
  %538 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %539 = load i32, i32* %25, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i64 -1
  %543 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %544 = ptrtoint %struct.TYPE_11__* %542 to i64
  %545 = ptrtoint %struct.TYPE_11__* %543 to i64
  %546 = sub i64 %544, %545
  %547 = sdiv exact i64 %546, 16
  %548 = trunc i64 %547 to i32
  %549 = call i32 @ext4_free_branches(i32* %524, %struct.inode* %525, %struct.TYPE_12__* %528, i64* %534, i64* %537, i32 %548)
  %550 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 -1
  store %struct.TYPE_11__* %551, %struct.TYPE_11__** %18, align 8
  br label %552

552:                                              ; preds = %523, %519, %515
  br label %397

553:                                              ; preds = %405
  br label %554

554:                                              ; preds = %661, %553, %449
  br label %555

555:                                              ; preds = %564, %554
  %556 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %557 = icmp ne %struct.TYPE_11__* %556, null
  br i1 %557, label %558, label %562

558:                                              ; preds = %555
  %559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %560 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %561 = icmp ugt %struct.TYPE_11__* %559, %560
  br label %562

562:                                              ; preds = %558, %555
  %563 = phi i1 [ false, %555 ], [ %561, %558 ]
  br i1 %563, label %564, label %575

564:                                              ; preds = %562
  %565 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %566 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %565, i32 0, i32 0
  %567 = load %struct.TYPE_12__*, %struct.TYPE_12__** %566, align 8
  %568 = call i32 @BUFFER_TRACE(%struct.TYPE_12__* %567, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %569 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 0
  %571 = load %struct.TYPE_12__*, %struct.TYPE_12__** %570, align 8
  %572 = call i32 @brelse(%struct.TYPE_12__* %571)
  %573 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 -1
  store %struct.TYPE_11__* %574, %struct.TYPE_11__** %19, align 8
  br label %555

575:                                              ; preds = %562
  br label %576

576:                                              ; preds = %585, %575
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %578 = icmp ne %struct.TYPE_11__* %577, null
  br i1 %578, label %579, label %583

579:                                              ; preds = %576
  %580 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %581 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %582 = icmp ugt %struct.TYPE_11__* %580, %581
  br label %583

583:                                              ; preds = %579, %576
  %584 = phi i1 [ false, %576 ], [ %582, %579 ]
  br i1 %584, label %585, label %596

585:                                              ; preds = %583
  %586 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %587 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %586, i32 0, i32 0
  %588 = load %struct.TYPE_12__*, %struct.TYPE_12__** %587, align 8
  %589 = call i32 @BUFFER_TRACE(%struct.TYPE_12__* %588, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %590 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 0
  %592 = load %struct.TYPE_12__*, %struct.TYPE_12__** %591, align 8
  %593 = call i32 @brelse(%struct.TYPE_12__* %592)
  %594 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 -1
  store %struct.TYPE_11__* %595, %struct.TYPE_11__** %20, align 8
  br label %576

596:                                              ; preds = %583
  store i32 0, i32* %5, align 4
  br label %662

597:                                              ; preds = %281, %240
  %598 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %599 = load i32, i32* %598, align 16
  switch i32 %599, label %600 [
    i32 129, label %620
    i32 130, label %640
    i32 128, label %660
  ]

600:                                              ; preds = %597
  %601 = load i32, i32* %24, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %24, align 4
  %603 = load i32, i32* %25, align 4
  %604 = icmp sge i32 %602, %603
  br i1 %604, label %605, label %606

605:                                              ; preds = %600
  br label %661

606:                                              ; preds = %600
  %607 = load i64*, i64** %11, align 8
  %608 = getelementptr inbounds i64, i64* %607, i64 129
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %22, align 8
  %610 = load i64, i64* %22, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %619

612:                                              ; preds = %606
  %613 = load i32*, i32** %6, align 8
  %614 = load %struct.inode*, %struct.inode** %7, align 8
  %615 = getelementptr inbounds i64, i64* %22, i64 1
  %616 = call i32 @ext4_free_branches(i32* %613, %struct.inode* %614, %struct.TYPE_12__* null, i64* %22, i64* %615, i32 1)
  %617 = load i64*, i64** %11, align 8
  %618 = getelementptr inbounds i64, i64* %617, i64 129
  store i64 0, i64* %618, align 8
  br label %619

619:                                              ; preds = %612, %606
  br label %620

620:                                              ; preds = %597, %619
  %621 = load i32, i32* %24, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %24, align 4
  %623 = load i32, i32* %25, align 4
  %624 = icmp sge i32 %622, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %620
  br label %661

626:                                              ; preds = %620
  %627 = load i64*, i64** %11, align 8
  %628 = getelementptr inbounds i64, i64* %627, i64 130
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %22, align 8
  %630 = load i64, i64* %22, align 8
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %639

632:                                              ; preds = %626
  %633 = load i32*, i32** %6, align 8
  %634 = load %struct.inode*, %struct.inode** %7, align 8
  %635 = getelementptr inbounds i64, i64* %22, i64 1
  %636 = call i32 @ext4_free_branches(i32* %633, %struct.inode* %634, %struct.TYPE_12__* null, i64* %22, i64* %635, i32 2)
  %637 = load i64*, i64** %11, align 8
  %638 = getelementptr inbounds i64, i64* %637, i64 130
  store i64 0, i64* %638, align 8
  br label %639

639:                                              ; preds = %632, %626
  br label %640

640:                                              ; preds = %597, %639
  %641 = load i32, i32* %24, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %24, align 4
  %643 = load i32, i32* %25, align 4
  %644 = icmp sge i32 %642, %643
  br i1 %644, label %645, label %646

645:                                              ; preds = %640
  br label %661

646:                                              ; preds = %640
  %647 = load i64*, i64** %11, align 8
  %648 = getelementptr inbounds i64, i64* %647, i64 128
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %22, align 8
  %650 = load i64, i64* %22, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %659

652:                                              ; preds = %646
  %653 = load i32*, i32** %6, align 8
  %654 = load %struct.inode*, %struct.inode** %7, align 8
  %655 = getelementptr inbounds i64, i64* %22, i64 1
  %656 = call i32 @ext4_free_branches(i32* %653, %struct.inode* %654, %struct.TYPE_12__* null, i64* %22, i64* %655, i32 3)
  %657 = load i64*, i64** %11, align 8
  %658 = getelementptr inbounds i64, i64* %657, i64 128
  store i64 0, i64* %658, align 8
  br label %659

659:                                              ; preds = %652, %646
  br label %660

660:                                              ; preds = %597, %659
  br label %661

661:                                              ; preds = %660, %645, %625, %605
  br label %554

662:                                              ; preds = %596, %94, %73
  %663 = load i32, i32* %5, align 4
  ret i32 %663
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @EXT4_SB(%struct.TYPE_14__*) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.TYPE_14__*) #1

declare dso_local i32 @ext4_block_to_path(%struct.inode*, i32, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_free_data(i32*, %struct.inode*, i32*, i64*, i64*) #1

declare dso_local %struct.TYPE_11__* @ext4_find_shared(%struct.inode*, i32, i32*, %struct.TYPE_11__*, i64*) #1

declare dso_local i32 @ext4_free_branches(i32*, %struct.inode*, %struct.TYPE_12__*, i64*, i64*, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
