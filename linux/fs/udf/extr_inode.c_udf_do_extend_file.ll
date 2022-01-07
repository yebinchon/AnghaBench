; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_do_extend_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_do_extend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.extent_position = type { i32 }
%struct.kernel_long_ad = type { i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i64, i64 }
%struct.udf_inode_info = type { i32, i64 }

@UDF_EXTENT_LENGTH_MASK = common dso_local global i32 0, align 4
@UDF_EXTENT_FLAG_MASK = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.extent_position*, %struct.kernel_long_ad*, i32)* @udf_do_extend_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_do_extend_file(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_long_ad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.extent_position*, align 8
  %8 = alloca %struct.kernel_long_ad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.kernel_lb_addr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.udf_inode_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.kernel_lb_addr, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.extent_position* %1, %struct.extent_position** %7, align 8
  store %struct.kernel_long_ad* %2, %struct.kernel_long_ad** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %21 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  store %struct.super_block* %30, %struct.super_block** %13, align 8
  %31 = bitcast %struct.kernel_lb_addr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %303

38:                                               ; preds = %34, %4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %39)
  store %struct.udf_inode_info* %40, %struct.udf_inode_info** %16, align 8
  %41 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %42 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.super_block*, %struct.super_block** %13, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %38
  %51 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %52 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @UDF_EXTENT_FLAG_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %57 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.super_block*, %struct.super_block** %13, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.super_block*, %struct.super_block** %13, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = xor i32 %69, -1
  %71 = and i32 %65, %70
  %72 = or i32 %55, %71
  %73 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %74 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %76 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.super_block*, %struct.super_block** %13, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.super_block*, %struct.super_block** %13, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = xor i32 %86, -1
  %88 = and i32 %82, %87
  %89 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %90 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %50, %38
  %92 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %93 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @UDF_EXTENT_FLAG_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %91
  %100 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %101 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %100, i32 0, i32 1
  %102 = bitcast %struct.kernel_lb_addr* %14 to i8*
  %103 = bitcast %struct.kernel_lb_addr* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 16, i1 false)
  %104 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %105 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %108 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %109 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %112 = and i32 %110, %111
  %113 = or i32 %107, %112
  %114 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %115 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %117 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %120 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %99, %91
  %123 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %124 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @UDF_EXTENT_FLAG_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %122
  %131 = load %struct.super_block*, %struct.super_block** %13, align 8
  %132 = getelementptr inbounds %struct.super_block, %struct.super_block* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 1073741824, %133
  %135 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %136 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %139 = and i32 %137, %138
  %140 = sub nsw i32 %134, %139
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %130
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %144, %130
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %152 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %146, %122
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %6, align 8
  %160 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %161 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %162 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %161, i32 0, i32 1
  %163 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %164 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @udf_add_aext(%struct.inode* %159, %struct.extent_position* %160, %struct.kernel_lb_addr* %162, i32 %165, i32 1)
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %181

169:                                              ; preds = %155
  %170 = load %struct.inode*, %struct.inode** %6, align 8
  %171 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %172 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %173 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %172, i32 0, i32 1
  %174 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %175 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @udf_write_aext(%struct.inode* %170, %struct.extent_position* %171, %struct.kernel_lb_addr* %173, i32 %176, i32 1)
  %178 = load %struct.inode*, %struct.inode** %6, align 8
  %179 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %180 = call i32 @udf_next_aext(%struct.inode* %178, %struct.extent_position* %179, %struct.kernel_lb_addr* %18, i32* %19, i32 0)
  br label %181

181:                                              ; preds = %169, %158
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  br label %249

185:                                              ; preds = %181
  %186 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %187 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %190 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = load %struct.super_block*, %struct.super_block** %13, align 8
  %193 = getelementptr inbounds %struct.super_block, %struct.super_block* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 1073741824, %194
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %200 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %201

201:                                              ; preds = %221, %185
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %9, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  %209 = load %struct.inode*, %struct.inode** %6, align 8
  %210 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %211 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %212 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %211, i32 0, i32 1
  %213 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %214 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @udf_add_aext(%struct.inode* %209, %struct.extent_position* %210, %struct.kernel_lb_addr* %212, i32 %215, i32 1)
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %205
  %220 = load i32, i32* %17, align 4
  store i32 %220, i32* %5, align 4
  br label %303

221:                                              ; preds = %205
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  br label %201

224:                                              ; preds = %201
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %248

227:                                              ; preds = %224
  %228 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %229 = load i32, i32* %9, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %232 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.inode*, %struct.inode** %6, align 8
  %234 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %235 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %236 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %235, i32 0, i32 1
  %237 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %238 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @udf_add_aext(%struct.inode* %233, %struct.extent_position* %234, %struct.kernel_lb_addr* %236, i32 %239, i32 1)
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %17, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %227
  %244 = load i32, i32* %17, align 4
  store i32 %244, i32* %5, align 4
  br label %303

245:                                              ; preds = %227
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %245, %224
  br label %249

249:                                              ; preds = %248, %184
  %250 = load i32, i32* %15, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %249
  %253 = load %struct.inode*, %struct.inode** %6, align 8
  %254 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @udf_add_aext(%struct.inode* %253, %struct.extent_position* %254, %struct.kernel_lb_addr* %14, i32 %255, i32 1)
  store i32 %256, i32* %17, align 4
  %257 = load i32, i32* %17, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* %17, align 4
  store i32 %260, i32* %5, align 4
  br label %303

261:                                              ; preds = %252
  %262 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %263 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %262, i32 0, i32 1
  %264 = bitcast %struct.kernel_lb_addr* %263 to i8*
  %265 = bitcast %struct.kernel_lb_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 8 %265, i64 16, i1 false)
  %266 = load i32, i32* %15, align 4
  %267 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %8, align 8
  %268 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %11, align 4
  br label %271

271:                                              ; preds = %261, %249
  %272 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %273 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %271
  %278 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %279 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = sub i64 %281, 4
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4
  br label %301

284:                                              ; preds = %271
  %285 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %286 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %284
  %291 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %292 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = sub i64 %294, 4
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %292, align 4
  br label %300

297:                                              ; preds = %284
  %298 = load i32, i32* @EIO, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %5, align 4
  br label %303

300:                                              ; preds = %290
  br label %301

301:                                              ; preds = %300, %277
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %301, %297, %259, %243, %219, %37
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
