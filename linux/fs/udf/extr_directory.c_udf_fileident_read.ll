; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_directory.c_udf_fileident_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_directory.c_udf_fileident_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8 }
%struct.udf_fileident_bh = type { i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i32* }
%struct.fileIdentDesc = type { i32 }
%struct.extent_position = type { i8 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %0, i32* %1, %struct.udf_fileident_bh* %2, %struct.fileIdentDesc* %3, %struct.extent_position* %4, %struct.kernel_lb_addr* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.fileIdentDesc*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.udf_fileident_bh*, align 8
  %13 = alloca %struct.fileIdentDesc*, align 8
  %14 = alloca %struct.extent_position*, align 8
  %15 = alloca %struct.kernel_lb_addr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.fileIdentDesc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca [16 x %struct.buffer_head*], align 16
  %24 = alloca %struct.udf_inode_info*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.udf_fileident_bh* %2, %struct.udf_fileident_bh** %12, align 8
  store %struct.fileIdentDesc* %3, %struct.fileIdentDesc** %13, align 8
  store %struct.extent_position* %4, %struct.extent_position** %14, align 8
  store %struct.kernel_lb_addr* %5, %struct.kernel_lb_addr** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %24, align 8
  %31 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %32 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %35 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %8
  %42 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %43 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %47 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i64 4, i64 4
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %60 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %59, i32 0, i32 1
  %61 = call %struct.fileIdentDesc* @udf_get_fileident(i32* %53, i32 %58, i32* %60)
  store %struct.fileIdentDesc* %61, %struct.fileIdentDesc** %18, align 8
  %62 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %63 = icmp ne %struct.fileIdentDesc* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %41
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

65:                                               ; preds = %41
  %66 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %67 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %70 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %77 = bitcast %struct.fileIdentDesc* %76 to i32*
  %78 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %79 = bitcast %struct.fileIdentDesc* %78 to i32*
  %80 = call i32 @memcpy(i32* %77, i32* %79, i32 4)
  %81 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  store %struct.fileIdentDesc* %81, %struct.fileIdentDesc** %9, align 8
  br label %493

82:                                               ; preds = %8
  %83 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %84 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %269

92:                                               ; preds = %82
  %93 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %94 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %25, align 1
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8, i8* %99, align 4
  store i8 %100, i8* %26, align 1
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %103 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 @udf_next_aext(%struct.inode* %101, %struct.extent_position* %102, %struct.kernel_lb_addr* %103, i8* %104, i32 1)
  %106 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %107 = ashr i32 %106, 30
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

110:                                              ; preds = %92
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @udf_get_lb_pblock(%struct.TYPE_6__* %113, %struct.kernel_lb_addr* %114, i8 zeroext %116)
  store i32 %117, i32* %21, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = load i8, i8* %118, align 1
  %120 = add i8 %119, 1
  store i8 %120, i8* %118, align 1
  %121 = load i8*, i8** %17, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %26, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %123, %125
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %110
  %132 = load i8*, i8** %17, align 8
  store i8 0, i8* %132, align 1
  br label %137

133:                                              ; preds = %110
  %134 = load i8, i8* %25, align 1
  %135 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %136 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %135, i32 0, i32 0
  store i8 %134, i8* %136, align 1
  br label %137

137:                                              ; preds = %133, %131
  %138 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %139 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %138, i32 0, i32 3
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  %141 = call i32 @brelse(%struct.buffer_head* %140)
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %21, align 4
  %146 = call i8* @udf_tread(%struct.TYPE_6__* %144, i32 %145)
  %147 = bitcast i8* %146 to %struct.buffer_head*
  %148 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %149 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %148, i32 0, i32 2
  store %struct.buffer_head* %147, %struct.buffer_head** %149, align 8
  %150 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %151 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %150, i32 0, i32 3
  store %struct.buffer_head* %147, %struct.buffer_head** %151, align 8
  %152 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %153 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %152, i32 0, i32 3
  %154 = load %struct.buffer_head*, %struct.buffer_head** %153, align 8
  %155 = icmp ne %struct.buffer_head* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %137
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

157:                                              ; preds = %137
  %158 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %159 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %161 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i8*, i8** %17, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* %26, align 1
  %166 = zext i8 %165 to i32
  %167 = sub nsw i32 %166, 9
  %168 = ashr i32 16, %167
  %169 = sub nsw i32 %168, 1
  %170 = and i32 %164, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %268, label %172

172:                                              ; preds = %157
  %173 = load i8, i8* %26, align 1
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %174, 9
  %176 = ashr i32 16, %175
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load i8*, i8** %17, align 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %177, %180
  %182 = load i8*, i8** %16, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8, i8* %26, align 1
  %186 = zext i8 %185 to i32
  %187 = ashr i32 %184, %186
  %188 = icmp sgt i32 %181, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %172
  %190 = load i8*, i8** %16, align 8
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* %26, align 1
  %194 = zext i8 %193 to i32
  %195 = ashr i32 %192, %194
  %196 = load i8*, i8** %17, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = sub nsw i32 %195, %198
  store i32 %199, i32* %19, align 4
  br label %200

200:                                              ; preds = %189, %172
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %241, %200
  %202 = load i32, i32* %19, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %244

204:                                              ; preds = %201
  %205 = load %struct.inode*, %struct.inode** %10, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load i32, i32* %19, align 4
  %213 = add nsw i32 %211, %212
  %214 = trunc i32 %213 to i8
  %215 = call i32 @udf_get_lb_pblock(%struct.TYPE_6__* %207, %struct.kernel_lb_addr* %208, i8 zeroext %214)
  store i32 %215, i32* %21, align 4
  %216 = load %struct.inode*, %struct.inode** %10, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load i32, i32* %21, align 4
  %220 = call %struct.buffer_head* @udf_tgetblk(%struct.TYPE_6__* %218, i32 %219)
  store %struct.buffer_head* %220, %struct.buffer_head** %22, align 8
  %221 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %222 = icmp ne %struct.buffer_head* %221, null
  br i1 %222, label %223, label %237

223:                                              ; preds = %204
  %224 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %225 = call i32 @buffer_uptodate(%struct.buffer_head* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %223
  %228 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %229 = call i32 @buffer_locked(%struct.buffer_head* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %227
  %232 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %233 = load i32, i32* %20, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %20, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds [16 x %struct.buffer_head*], [16 x %struct.buffer_head*]* %23, i64 0, i64 %235
  store %struct.buffer_head* %232, %struct.buffer_head** %236, align 8
  br label %240

237:                                              ; preds = %227, %223, %204
  %238 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %239 = call i32 @brelse(%struct.buffer_head* %238)
  br label %240

240:                                              ; preds = %237, %231
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %19, align 4
  br label %201

244:                                              ; preds = %201
  %245 = load i32, i32* %20, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  %248 = load i32, i32* @REQ_OP_READ, align 4
  %249 = load i32, i32* @REQ_RAHEAD, align 4
  %250 = load i32, i32* %20, align 4
  %251 = getelementptr inbounds [16 x %struct.buffer_head*], [16 x %struct.buffer_head*]* %23, i64 0, i64 0
  %252 = call i32 @ll_rw_block(i32 %248, i32 %249, i32 %250, %struct.buffer_head** %251)
  store i32 0, i32* %19, align 4
  br label %253

253:                                              ; preds = %263, %247
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* %20, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %253
  %258 = load i32, i32* %19, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [16 x %struct.buffer_head*], [16 x %struct.buffer_head*]* %23, i64 0, i64 %259
  %261 = load %struct.buffer_head*, %struct.buffer_head** %260, align 8
  %262 = call i32 @brelse(%struct.buffer_head* %261)
  br label %263

263:                                              ; preds = %257
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %19, align 4
  br label %253

266:                                              ; preds = %253
  br label %267

267:                                              ; preds = %266, %244
  br label %268

268:                                              ; preds = %267, %157
  br label %288

269:                                              ; preds = %82
  %270 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %271 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %270, i32 0, i32 3
  %272 = load %struct.buffer_head*, %struct.buffer_head** %271, align 8
  %273 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %274 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %273, i32 0, i32 2
  %275 = load %struct.buffer_head*, %struct.buffer_head** %274, align 8
  %276 = icmp ne %struct.buffer_head* %272, %275
  br i1 %276, label %277, label %287

277:                                              ; preds = %269
  %278 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %279 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %278, i32 0, i32 3
  %280 = load %struct.buffer_head*, %struct.buffer_head** %279, align 8
  %281 = call i32 @brelse(%struct.buffer_head* %280)
  %282 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %283 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %282, i32 0, i32 2
  %284 = load %struct.buffer_head*, %struct.buffer_head** %283, align 8
  %285 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %286 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %285, i32 0, i32 3
  store %struct.buffer_head* %284, %struct.buffer_head** %286, align 8
  br label %287

287:                                              ; preds = %277, %269
  br label %288

288:                                              ; preds = %287, %268
  %289 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %290 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %289, i32 0, i32 3
  %291 = load %struct.buffer_head*, %struct.buffer_head** %290, align 8
  %292 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.inode*, %struct.inode** %10, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 1
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %300 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %299, i32 0, i32 1
  %301 = call %struct.fileIdentDesc* @udf_get_fileident(i32* %293, i32 %298, i32* %300)
  store %struct.fileIdentDesc* %301, %struct.fileIdentDesc** %18, align 8
  %302 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %303 = icmp ne %struct.fileIdentDesc* %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %288
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

305:                                              ; preds = %288
  %306 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %307 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %310 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 %308, %311
  %313 = load i32*, i32** %11, align 8
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, %312
  store i32 %315, i32* %313, align 4
  %316 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %317 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.inode*, %struct.inode** %10, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 1
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp sle i32 %318, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %305
  %326 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %327 = bitcast %struct.fileIdentDesc* %326 to i32*
  %328 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %329 = bitcast %struct.fileIdentDesc* %328 to i32*
  %330 = call i32 @memcpy(i32* %327, i32* %329, i32 4)
  br label %483

331:                                              ; preds = %305
  %332 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %333 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.inode*, %struct.inode** %10, align 8
  %336 = getelementptr inbounds %struct.inode, %struct.inode* %335, i32 0, i32 1
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp sgt i32 %334, %339
  br i1 %340, label %341, label %482

341:                                              ; preds = %331
  %342 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %343 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %342, i32 0, i32 0
  %344 = load i8, i8* %343, align 1
  store i8 %344, i8* %27, align 1
  %345 = load %struct.inode*, %struct.inode** %10, align 8
  %346 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %347 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %348 = load i8*, i8** %16, align 8
  %349 = call i32 @udf_next_aext(%struct.inode* %345, %struct.extent_position* %346, %struct.kernel_lb_addr* %347, i8* %348, i32 1)
  %350 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %351 = ashr i32 %350, 30
  %352 = icmp ne i32 %349, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %341
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

354:                                              ; preds = %341
  %355 = load %struct.inode*, %struct.inode** %10, align 8
  %356 = getelementptr inbounds %struct.inode, %struct.inode* %355, i32 0, i32 1
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %356, align 8
  %358 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %359 = load i8*, i8** %17, align 8
  %360 = load i8, i8* %359, align 1
  %361 = call i32 @udf_get_lb_pblock(%struct.TYPE_6__* %357, %struct.kernel_lb_addr* %358, i8 zeroext %360)
  store i32 %361, i32* %21, align 4
  %362 = load i8*, i8** %17, align 8
  %363 = load i8, i8* %362, align 1
  %364 = add i8 %363, 1
  store i8 %364, i8* %362, align 1
  %365 = load i8*, i8** %17, align 8
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = load %struct.inode*, %struct.inode** %10, align 8
  %369 = getelementptr inbounds %struct.inode, %struct.inode* %368, i32 0, i32 1
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 1
  %372 = load i8, i8* %371, align 4
  %373 = zext i8 %372 to i32
  %374 = shl i32 %367, %373
  %375 = load i8*, i8** %16, align 8
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = icmp sge i32 %374, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %354
  %380 = load i8*, i8** %17, align 8
  store i8 0, i8* %380, align 1
  br label %385

381:                                              ; preds = %354
  %382 = load i8, i8* %27, align 1
  %383 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %384 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %383, i32 0, i32 0
  store i8 %382, i8* %384, align 1
  br label %385

385:                                              ; preds = %381, %379
  %386 = load %struct.inode*, %struct.inode** %10, align 8
  %387 = getelementptr inbounds %struct.inode, %struct.inode* %386, i32 0, i32 1
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %392 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = sub nsw i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load %struct.inode*, %struct.inode** %10, align 8
  %396 = getelementptr inbounds %struct.inode, %struct.inode* %395, i32 0, i32 1
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %401 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %402, %399
  store i32 %403, i32* %401, align 4
  %404 = load %struct.inode*, %struct.inode** %10, align 8
  %405 = getelementptr inbounds %struct.inode, %struct.inode* %404, i32 0, i32 1
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %405, align 8
  %407 = load i32, i32* %21, align 4
  %408 = call i8* @udf_tread(%struct.TYPE_6__* %406, i32 %407)
  %409 = bitcast i8* %408 to %struct.buffer_head*
  %410 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %411 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %410, i32 0, i32 2
  store %struct.buffer_head* %409, %struct.buffer_head** %411, align 8
  %412 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %413 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %412, i32 0, i32 2
  %414 = load %struct.buffer_head*, %struct.buffer_head** %413, align 8
  %415 = icmp ne %struct.buffer_head* %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %385
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

417:                                              ; preds = %385
  %418 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %419 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = sub nsw i32 0, %420
  %422 = sext i32 %421 to i64
  %423 = icmp ugt i64 4, %422
  br i1 %423, label %424, label %475

424:                                              ; preds = %417
  %425 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %426 = bitcast %struct.fileIdentDesc* %425 to i32*
  %427 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %428 = bitcast %struct.fileIdentDesc* %427 to i32*
  %429 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %430 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = sub nsw i32 0, %431
  %433 = call i32 @memcpy(i32* %426, i32* %428, i32 %432)
  %434 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %435 = bitcast %struct.fileIdentDesc* %434 to i32*
  %436 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %437 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = sext i32 %438 to i64
  %440 = sub i64 0, %439
  %441 = getelementptr inbounds i32, i32* %435, i64 %440
  %442 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %443 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %442, i32 0, i32 2
  %444 = load %struct.buffer_head*, %struct.buffer_head** %443, align 8
  %445 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %444, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %448 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = sext i32 %449 to i64
  %451 = add i64 4, %450
  %452 = trunc i64 %451 to i32
  %453 = call i32 @memcpy(i32* %441, i32* %446, i32 %452)
  %454 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %455 = call i32 @udf_dir_entry_len(%struct.fileIdentDesc* %454)
  store i32 %455, i32* %28, align 4
  %456 = load i32, i32* %28, align 4
  %457 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %458 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %461 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = sub nsw i32 %459, %462
  %464 = sub nsw i32 %456, %463
  %465 = load i32*, i32** %11, align 8
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %466, %464
  store i32 %467, i32* %465, align 4
  %468 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %469 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* %28, align 4
  %472 = add nsw i32 %470, %471
  %473 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %474 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %473, i32 0, i32 1
  store i32 %472, i32* %474, align 4
  br label %481

475:                                              ; preds = %417
  %476 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %477 = bitcast %struct.fileIdentDesc* %476 to i32*
  %478 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %479 = bitcast %struct.fileIdentDesc* %478 to i32*
  %480 = call i32 @memcpy(i32* %477, i32* %479, i32 4)
  br label %481

481:                                              ; preds = %475, %424
  br label %482

482:                                              ; preds = %481, %331
  br label %483

483:                                              ; preds = %482, %325
  %484 = load i32*, i32** %11, align 8
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.inode*, %struct.inode** %10, align 8
  %487 = getelementptr inbounds %struct.inode, %struct.inode* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = icmp sgt i32 %485, %488
  br i1 %489, label %490, label %491

490:                                              ; preds = %483
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %493

491:                                              ; preds = %483
  %492 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  store %struct.fileIdentDesc* %492, %struct.fileIdentDesc** %9, align 8
  br label %493

493:                                              ; preds = %491, %490, %416, %353, %304, %156, %109, %65, %64
  %494 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  ret %struct.fileIdentDesc* %494
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_get_fileident(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i8*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.TYPE_6__*, %struct.kernel_lb_addr*, i8 zeroext) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i8* @udf_tread(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @udf_dir_entry_len(%struct.fileIdentDesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
