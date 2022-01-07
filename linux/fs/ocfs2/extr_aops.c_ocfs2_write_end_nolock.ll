; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_end_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_end_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_7__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32, i32, i64, %struct.TYPE_6__*, i32, %struct.page*, %struct.page**, i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.page = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@OCFS2_WRITE_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_end_nolock(%struct.address_space* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca %struct.ocfs2_write_ctxt*, align 8
  %19 = alloca %struct.ocfs2_dinode*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.page*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  store i32 %28, i32* %15, align 4
  %29 = load %struct.address_space*, %struct.address_space** %6, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %16, align 8
  %32 = load %struct.inode*, %struct.inode** %16, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ocfs2_super* @OCFS2_SB(i32 %34)
  store %struct.ocfs2_super* %35, %struct.ocfs2_super** %17, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = bitcast i8* %36 to %struct.ocfs2_write_ctxt*
  store %struct.ocfs2_write_ctxt* %37, %struct.ocfs2_write_ctxt** %18, align 8
  %38 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %39 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %43, %struct.ocfs2_dinode** %19, align 8
  %44 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %45 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %20, align 8
  %47 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %48 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %47, i32 0, i32 8
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32*, i32** %20, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %5
  %57 = load i32*, i32** %20, align 8
  %58 = load %struct.inode*, %struct.inode** %16, align 8
  %59 = call i32 @INODE_CACHE(%struct.inode* %58)
  %60 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %61 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %64 = call i32 @ocfs2_journal_access_di(i32* %57, i32 %59, %struct.TYPE_6__* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %289

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %5
  %73 = load %struct.inode*, %struct.inode** %16, align 8
  %74 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.inode*, %struct.inode** %16, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %85 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %86 = call i32 @ocfs2_write_end_inline(%struct.inode* %81, i32 %82, i32 %83, i32* %9, %struct.ocfs2_dinode* %84, %struct.ocfs2_write_ctxt* %85)
  br label %213

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ult i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %87
  %95 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %96 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %95, i32 0, i32 6
  %97 = load %struct.page*, %struct.page** %96, align 8
  %98 = icmp ne %struct.page* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %101 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %100, i32 0, i32 6
  %102 = load %struct.page*, %struct.page** %101, align 8
  %103 = call i32 @PageUptodate(%struct.page* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %99
  %107 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %108 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %107, i32 0, i32 6
  %109 = load %struct.page*, %struct.page** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %113, %114
  %116 = call i32 @ocfs2_zero_new_buffers(%struct.page* %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %106, %94, %87
  %118 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %119 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %118, i32 0, i32 6
  %120 = load %struct.page*, %struct.page** %119, align 8
  %121 = icmp ne %struct.page* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %124 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %123, i32 0, i32 6
  %125 = load %struct.page*, %struct.page** %124, align 8
  %126 = call i32 @flush_dcache_page(%struct.page* %125)
  br label %127

127:                                              ; preds = %122, %117
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %209, %127
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %131 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %212

134:                                              ; preds = %128
  %135 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %136 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %135, i32 0, i32 7
  %137 = load %struct.page**, %struct.page*** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.page*, %struct.page** %137, i64 %139
  %141 = load %struct.page*, %struct.page** %140, align 8
  store %struct.page* %141, %struct.page** %21, align 8
  %142 = load %struct.page*, %struct.page** %21, align 8
  %143 = icmp eq %struct.page* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %209

145:                                              ; preds = %134
  %146 = load %struct.page*, %struct.page** %21, align 8
  %147 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %148 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %147, i32 0, i32 6
  %149 = load %struct.page*, %struct.page** %148, align 8
  %150 = icmp eq %struct.page* %146, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %145
  %152 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %153 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %13, align 4
  %155 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %156 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @PAGE_SIZE, align 4
  %160 = icmp ugt i32 %158, %159
  br i1 %160, label %169, label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @PAGE_SIZE, align 4
  %164 = icmp ugt i32 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ult i32 %166, %167
  br label %169

169:                                              ; preds = %165, %161, %151
  %170 = phi i1 [ true, %161 ], [ true, %151 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @BUG_ON(i32 %171)
  br label %175

173:                                              ; preds = %145
  store i32 0, i32* %13, align 4
  %174 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %173, %169
  %176 = load %struct.page*, %struct.page** %21, align 8
  %177 = call i64 @page_has_buffers(%struct.page* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %208

179:                                              ; preds = %175
  %180 = load i32*, i32** %20, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %203

182:                                              ; preds = %179
  %183 = load %struct.inode*, %struct.inode** %16, align 8
  %184 = call i64 @ocfs2_should_order_data(%struct.inode* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = load %struct.page*, %struct.page** %21, align 8
  %188 = getelementptr inbounds %struct.page, %struct.page* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load i32, i32* @PAGE_SHIFT, align 4
  %192 = shl i32 %190, %191
  %193 = load i32, i32* %13, align 4
  %194 = add i32 %192, %193
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sub i32 %195, %196
  store i32 %197, i32* %23, align 4
  %198 = load i32*, i32** %20, align 8
  %199 = load %struct.inode*, %struct.inode** %16, align 8
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %23, align 4
  %202 = call i32 @ocfs2_jbd2_inode_add_write(i32* %198, %struct.inode* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %186, %182, %179
  %204 = load %struct.page*, %struct.page** %21, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @block_commit_write(%struct.page* %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %203, %175
  br label %209

209:                                              ; preds = %208, %144
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %128

212:                                              ; preds = %128
  br label %213

213:                                              ; preds = %212, %80
  %214 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %215 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @OCFS2_WRITE_DIRECT, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %279

219:                                              ; preds = %213
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %7, align 4
  %222 = add i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.inode*, %struct.inode** %16, align 8
  %225 = call i32 @i_size_read(%struct.inode* %224)
  %226 = icmp sgt i32 %223, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %219
  %228 = load %struct.inode*, %struct.inode** %16, align 8
  %229 = load i32, i32* %7, align 4
  %230 = call i32 @i_size_write(%struct.inode* %228, i32 %229)
  %231 = load %struct.inode*, %struct.inode** %16, align 8
  %232 = call i32 @mark_inode_dirty(%struct.inode* %231)
  br label %233

233:                                              ; preds = %227, %219
  %234 = load %struct.inode*, %struct.inode** %16, align 8
  %235 = call i32 @ocfs2_inode_sector_count(%struct.inode* %234)
  %236 = load %struct.inode*, %struct.inode** %16, align 8
  %237 = getelementptr inbounds %struct.inode, %struct.inode* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.inode*, %struct.inode** %16, align 8
  %239 = call i32 @i_size_read(%struct.inode* %238)
  %240 = call i8* @cpu_to_le64(i32 %239)
  %241 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %242 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %241, i32 0, i32 4
  store i8* %240, i8** %242, align 8
  %243 = load %struct.inode*, %struct.inode** %16, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 0
  %245 = load %struct.inode*, %struct.inode** %16, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 1
  %247 = load %struct.inode*, %struct.inode** %16, align 8
  %248 = call i64 @current_time(%struct.inode* %247)
  %249 = bitcast %struct.TYPE_7__* %24 to i64*
  store i64 %248, i64* %249, align 4
  %250 = bitcast %struct.TYPE_7__* %246 to i8*
  %251 = bitcast %struct.TYPE_7__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 8, i1 false)
  %252 = bitcast %struct.TYPE_7__* %244 to i8*
  %253 = bitcast %struct.TYPE_7__* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 8, i1 false)
  %254 = load %struct.inode*, %struct.inode** %16, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @cpu_to_le64(i32 %257)
  %259 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %260 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  %261 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %262 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %261, i32 0, i32 3
  store i8* %258, i8** %262, align 8
  %263 = load %struct.inode*, %struct.inode** %16, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @cpu_to_le32(i32 %266)
  %268 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %269 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %271 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %270, i32 0, i32 1
  store i32 %267, i32* %271, align 4
  %272 = load i32*, i32** %20, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %278

274:                                              ; preds = %233
  %275 = load i32*, i32** %20, align 8
  %276 = load %struct.inode*, %struct.inode** %16, align 8
  %277 = call i32 @ocfs2_update_inode_fsync_trans(i32* %275, %struct.inode* %276, i32 1)
  br label %278

278:                                              ; preds = %274, %233
  br label %279

279:                                              ; preds = %278, %213
  %280 = load i32*, i32** %20, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %282, label %288

282:                                              ; preds = %279
  %283 = load i32*, i32** %20, align 8
  %284 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %285 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %284, i32 0, i32 4
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = call i32 @ocfs2_journal_dirty(i32* %283, %struct.TYPE_6__* %286)
  br label %288

288:                                              ; preds = %282, %279
  br label %289

289:                                              ; preds = %288, %67
  %290 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %291 = call i32 @ocfs2_unlock_pages(%struct.ocfs2_write_ctxt* %290)
  %292 = load i32*, i32** %20, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %296 = load i32*, i32** %20, align 8
  %297 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %295, i32* %296)
  br label %298

298:                                              ; preds = %294, %289
  %299 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %300 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %301 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %300, i32 0, i32 5
  %302 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %299, i32* %301)
  %303 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %304 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %303, i32 0, i32 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = call i32 @brelse(%struct.TYPE_6__* %305)
  %307 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %18, align 8
  %308 = call i32 @kfree(%struct.ocfs2_write_ctxt* %307)
  %309 = load i32, i32* %9, align 4
  ret i32 %309
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_write_end_inline(%struct.inode*, i32, i32, i32*, %struct.ocfs2_dinode*, %struct.ocfs2_write_ctxt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_zero_new_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32 @ocfs2_jbd2_inode_add_write(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_unlock_pages(%struct.ocfs2_write_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ocfs2_write_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
