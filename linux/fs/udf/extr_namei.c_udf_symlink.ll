; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, %struct.TYPE_10__, %struct.super_block* }
%struct.TYPE_10__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.pathComponent = type { i32, i32, i32, i64 }
%struct.extent_position = type { %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.udf_inode_info = type { i64, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32* }
%struct.kernel_lb_addr = type { i32, i64 }

@S_IFLNK = common dso_local global i32 0, align 4
@UDF_NAME_LEN_CS0 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@udf_symlink_aops = common dso_local global i32 0, align 4
@udf_symlink_inode_operations = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @udf_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.pathComponent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.extent_position, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.udf_inode_info*, align 8
  %20 = alloca %struct.super_block*, align 8
  %21 = alloca %struct.kernel_lb_addr, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load i32, i32* @S_IFLNK, align 4
  %25 = or i32 %24, 511
  %26 = call %struct.inode* @udf_new_inode(%struct.inode* %23, i32 %25)
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = bitcast %struct.extent_position* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  store i8* null, i8** %17, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 3
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  store %struct.super_block* %30, %struct.super_block** %20, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  store i32 %36, i32* %4, align 4
  br label %374

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %38)
  store %struct.udf_inode_info* %39, %struct.udf_inode_info** %19, align 8
  %40 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %41 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %40, i32 0, i32 4
  %42 = call i32 @down_write(i32* %41)
  %43 = load i32, i32* @UDF_NAME_LEN_CS0, align 4
  %44 = load i32, i32* @GFP_NOFS, align 4
  %45 = call i8* @kmalloc(i32 %43, i32 %44)
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  br label %366

51:                                               ; preds = %37
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32* @udf_symlink_aops, i32** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  store i32* @udf_symlink_inode_operations, i32** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @inode_nohighmem(%struct.inode* %57)
  %59 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %60 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %146

64:                                               ; preds = %51
  %65 = load %struct.super_block*, %struct.super_block** %20, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %68 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %72 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @udf_new_block(%struct.super_block* %65, %struct.inode* %66, i32 %70, i32 %74, i32* %15)
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %64
  br label %366

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 2
  %81 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %82 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %81, i32 0, i32 6
  %83 = bitcast %struct.TYPE_11__* %80 to i8*
  %84 = bitcast %struct.TYPE_11__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 8 %84, i64 8, i1 false)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %88, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %21, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %92 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %21, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load %struct.super_block*, %struct.super_block** %20, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %101 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @udf_add_aext(%struct.inode* %102, %struct.extent_position* %11, %struct.kernel_lb_addr* %21, i32 %103, i32 0)
  %105 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = call i32 @brelse(%struct.TYPE_13__* %106)
  %108 = load %struct.super_block*, %struct.super_block** %20, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %111 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @udf_get_pblock(%struct.super_block* %108, i64 %109, i32 %113, i32 0)
  store i64 %114, i64* %16, align 8
  %115 = load %struct.super_block*, %struct.super_block** %20, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call %struct.TYPE_13__* @udf_tgetblk(%struct.super_block* %115, i64 %116)
  %118 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %118, align 8
  %119 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = call i32 @lock_buffer(%struct.TYPE_13__* %120)
  %122 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %22, align 4
  %127 = call i32 @memset(i32* %125, i32 0, i32 %126)
  %128 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = call i32 @set_buffer_uptodate(%struct.TYPE_13__* %129)
  %131 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = call i32 @unlock_buffer(%struct.TYPE_13__* %132)
  %134 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_13__* %135, %struct.inode* %136)
  %138 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = call i32 @udf_ext0_offset(%struct.inode* %142)
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32* %145, i32** %14, align 8
  br label %156

146:                                              ; preds = %51
  %147 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %148 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %152 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32* %155, i32** %14, align 8
  br label %156

156:                                              ; preds = %146, %79
  %157 = load %struct.super_block*, %struct.super_block** %20, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.inode*, %struct.inode** %8, align 8
  %161 = call i32 @udf_ext0_offset(%struct.inode* %160)
  %162 = sub nsw i32 %159, %161
  store i32 %162, i32* %12, align 4
  %163 = load i32*, i32** %14, align 8
  %164 = bitcast i32* %163 to %struct.pathComponent*
  store %struct.pathComponent* %164, %struct.pathComponent** %9, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 47
  br i1 %168, label %169, label %189

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %173, %169
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  br label %173

173:                                              ; preds = %170
  %174 = load i8*, i8** %7, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 47
  br i1 %177, label %170, label %178

178:                                              ; preds = %173
  %179 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %180 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  %181 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %182 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %184 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, 24
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %178, %156
  %190 = load i32, i32* @ENAMETOOLONG, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %331, %189
  %193 = load i8*, i8** %7, align 8
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %332

196:                                              ; preds = %192
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 24
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = icmp ugt i64 %199, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %366

204:                                              ; preds = %196
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = bitcast i32* %208 to %struct.pathComponent*
  store %struct.pathComponent* %209, %struct.pathComponent** %9, align 8
  %210 = load i8*, i8** %7, align 8
  store i8* %210, i8** %10, align 8
  br label %211

211:                                              ; preds = %224, %204
  %212 = load i8*, i8** %7, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %7, align 8
  br label %214

214:                                              ; preds = %211
  %215 = load i8*, i8** %7, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i8*, i8** %7, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 47
  br label %224

224:                                              ; preds = %219, %214
  %225 = phi i1 [ false, %214 ], [ %223, %219 ]
  br i1 %225, label %211, label %226

226:                                              ; preds = %224
  %227 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %228 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %227, i32 0, i32 0
  store i32 5, i32* %228, align 8
  %229 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %230 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  %231 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %232 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %231, i32 0, i32 3
  store i64 0, i64* %232, align 8
  %233 = load i8*, i8** %10, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 46
  br i1 %237, label %238, label %266

238:                                              ; preds = %226
  %239 = load i8*, i8** %7, align 8
  %240 = load i8*, i8** %10, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = icmp eq i64 %243, 1
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %247 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %246, i32 0, i32 0
  store i32 4, i32* %247, align 8
  br label %265

248:                                              ; preds = %238
  %249 = load i8*, i8** %7, align 8
  %250 = load i8*, i8** %10, align 8
  %251 = ptrtoint i8* %249 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = icmp eq i64 %253, 2
  br i1 %254, label %255, label %264

255:                                              ; preds = %248
  %256 = load i8*, i8** %10, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 1
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 46
  br i1 %260, label %261, label %264

261:                                              ; preds = %255
  %262 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %263 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %262, i32 0, i32 0
  store i32 3, i32* %263, align 8
  br label %264

264:                                              ; preds = %261, %255, %248
  br label %265

265:                                              ; preds = %264, %245
  br label %266

266:                                              ; preds = %265, %226
  %267 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %268 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 5
  br i1 %270, label %271, label %308

271:                                              ; preds = %266
  %272 = load %struct.super_block*, %struct.super_block** %20, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = load i8*, i8** %7, align 8
  %275 = load i8*, i8** %10, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  %279 = trunc i64 %278 to i32
  %280 = load i8*, i8** %17, align 8
  %281 = load i32, i32* @UDF_NAME_LEN_CS0, align 4
  %282 = call i32 @udf_put_filename(%struct.super_block* %272, i8* %273, i32 %279, i8* %280, i32 %281)
  store i32 %282, i32* %18, align 4
  %283 = load i32, i32* %18, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %271
  br label %366

286:                                              ; preds = %271
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = add i64 %288, 24
  %290 = load i32, i32* %18, align 4
  %291 = sext i32 %290 to i64
  %292 = add i64 %289, %291
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = icmp ugt i64 %292, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %286
  br label %366

297:                                              ; preds = %286
  %298 = load i32, i32* %18, align 4
  %299 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %300 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %297
  %302 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %303 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load i8*, i8** %17, align 8
  %306 = load i32, i32* %18, align 4
  %307 = call i32 @memcpy(i32 %304, i8* %305, i32 %306)
  br label %308

308:                                              ; preds = %301, %266
  %309 = load %struct.pathComponent*, %struct.pathComponent** %9, align 8
  %310 = getelementptr inbounds %struct.pathComponent, %struct.pathComponent* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = add i64 24, %312
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = add i64 %315, %313
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %13, align 4
  %318 = load i8*, i8** %7, align 8
  %319 = load i8, i8* %318, align 1
  %320 = icmp ne i8 %319, 0
  br i1 %320, label %321, label %331

321:                                              ; preds = %308
  br label %322

322:                                              ; preds = %325, %321
  %323 = load i8*, i8** %7, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %7, align 8
  br label %325

325:                                              ; preds = %322
  %326 = load i8*, i8** %7, align 8
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 47
  br i1 %329, label %322, label %330

330:                                              ; preds = %325
  br label %331

331:                                              ; preds = %330, %308
  br label %192

332:                                              ; preds = %192
  %333 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %333, align 8
  %335 = call i32 @brelse(%struct.TYPE_13__* %334)
  %336 = load i32, i32* %13, align 4
  %337 = load %struct.inode*, %struct.inode** %8, align 8
  %338 = getelementptr inbounds %struct.inode, %struct.inode* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  %339 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %340 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %332
  %345 = load %struct.inode*, %struct.inode** %8, align 8
  %346 = getelementptr inbounds %struct.inode, %struct.inode* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %349 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 8
  br label %353

350:                                              ; preds = %332
  %351 = load %struct.inode*, %struct.inode** %8, align 8
  %352 = call i32 @udf_truncate_tail_extent(%struct.inode* %351)
  br label %353

353:                                              ; preds = %350, %344
  %354 = load %struct.inode*, %struct.inode** %8, align 8
  %355 = call i32 @mark_inode_dirty(%struct.inode* %354)
  %356 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %357 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %356, i32 0, i32 4
  %358 = call i32 @up_write(i32* %357)
  %359 = load %struct.dentry*, %struct.dentry** %6, align 8
  %360 = load %struct.inode*, %struct.inode** %8, align 8
  %361 = call i32 @udf_add_nondir(%struct.dentry* %359, %struct.inode* %360)
  store i32 %361, i32* %15, align 4
  br label %362

362:                                              ; preds = %366, %353
  %363 = load i8*, i8** %17, align 8
  %364 = call i32 @kfree(i8* %363)
  %365 = load i32, i32* %15, align 4
  store i32 %365, i32* %4, align 4
  br label %374

366:                                              ; preds = %296, %285, %203, %78, %48
  %367 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %368 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %367, i32 0, i32 4
  %369 = call i32 @up_write(i32* %368)
  %370 = load %struct.inode*, %struct.inode** %8, align 8
  %371 = call i32 @inode_dec_link_count(%struct.inode* %370)
  %372 = load %struct.inode*, %struct.inode** %8, align 8
  %373 = call i32 @discard_new_inode(%struct.inode* %372)
  br label %362

374:                                              ; preds = %362, %34
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i64 @udf_new_block(%struct.super_block*, %struct.inode*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_13__*) #1

declare dso_local i64 @udf_get_pblock(%struct.super_block*, i64, i32, i32) #1

declare dso_local %struct.TYPE_13__* @udf_tgetblk(%struct.super_block*, i64) #1

declare dso_local i32 @lock_buffer(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.TYPE_13__*) #1

declare dso_local i32 @unlock_buffer(%struct.TYPE_13__*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_13__*, %struct.inode*) #1

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

declare dso_local i32 @udf_put_filename(%struct.super_block*, i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @udf_truncate_tail_extent(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @udf_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
