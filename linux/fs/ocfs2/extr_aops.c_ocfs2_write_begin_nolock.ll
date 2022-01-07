; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_begin_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_begin_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.page = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i64, %struct.page*, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32* }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_WRITE_DIRECT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_begin_nolock(%struct.address_space* %0, i32 %1, i32 %2, i32 %3, %struct.page** %4, i8** %5, %struct.buffer_head* %6, %struct.page* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ocfs2_write_ctxt*, align 8
  %25 = alloca %struct.inode*, align 8
  %26 = alloca %struct.ocfs2_super*, align 8
  %27 = alloca %struct.ocfs2_dinode*, align 8
  %28 = alloca %struct.ocfs2_alloc_context*, align 8
  %29 = alloca %struct.ocfs2_alloc_context*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.ocfs2_extent_tree, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.page** %4, %struct.page*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %16, align 8
  store %struct.page* %7, %struct.page** %17, align 8
  %34 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  store i32 %34, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %35 = load %struct.address_space*, %struct.address_space** %10, align 8
  %36 = getelementptr inbounds %struct.address_space, %struct.address_space* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %36, align 8
  store %struct.inode* %37, %struct.inode** %25, align 8
  %38 = load %struct.inode*, %struct.inode** %25, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ocfs2_super* @OCFS2_SB(i32 %40)
  store %struct.ocfs2_super* %41, %struct.ocfs2_super** %26, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %28, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %29, align 8
  store i32 1, i32* %32, align 4
  br label %42

42:                                               ; preds = %418, %8
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %48 = call i32 @ocfs2_alloc_write_ctxt(%struct.ocfs2_write_ctxt** %24, %struct.ocfs2_super* %43, i32 %44, i32 %45, i32 %46, %struct.buffer_head* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %9, align 4
  br label %428

55:                                               ; preds = %42
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %57 = call i64 @ocfs2_supports_inline_data(%struct.ocfs2_super* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.address_space*, %struct.address_space** %10, align 8
  %61 = load %struct.inode*, %struct.inode** %25, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.page*, %struct.page** %17, align 8
  %65 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %66 = call i32 @ocfs2_try_to_write_inline_data(%struct.address_space* %60, %struct.inode* %61, i32 %62, i32 %63, %struct.page* %64, %struct.ocfs2_write_ctxt* %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %18, align 4
  br label %353

70:                                               ; preds = %59
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %381

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @OCFS2_WRITE_DIRECT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %83 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.inode*, %struct.inode** %25, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ocfs2_zero_tail(%struct.inode* %86, %struct.buffer_head* %87, i32 %88)
  store i32 %89, i32* %18, align 4
  br label %97

90:                                               ; preds = %81
  %91 = load %struct.inode*, %struct.inode** %25, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %96 = call i32 @ocfs2_expand_nonsparse_inode(%struct.inode* %91, %struct.buffer_head* %92, i32 %93, i32 %94, %struct.ocfs2_write_ctxt* %95)
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %90, %85
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %381

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.inode*, %struct.inode** %25, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @ocfs2_check_range_for_refcount(%struct.inode* %105, i32 %106, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %381

114:                                              ; preds = %104
  %115 = load i32, i32* %18, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %119 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %23, align 4
  %121 = load %struct.inode*, %struct.inode** %25, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %123 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %124 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %127 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @UINT_MAX, align 4
  %130 = call i32 @ocfs2_refcount_cow(%struct.inode* %121, %struct.buffer_head* %122, i32 %125, i32 %128, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %117
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @mlog_errno(i32 %134)
  br label %381

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.inode*, %struct.inode** %25, align 8
  %140 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %141 = call i32 @ocfs2_populate_write_desc(%struct.inode* %139, %struct.ocfs2_write_ctxt* %140, i32* %21, i32* %22)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @mlog_errno(i32 %145)
  br label %381

147:                                              ; preds = %138
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %23, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %23, align 4
  %151 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %152 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %151, i32 0, i32 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %156, %struct.ocfs2_dinode** %27, align 8
  %157 = load %struct.inode*, %struct.inode** %25, align 8
  %158 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.inode*, %struct.inode** %25, align 8
  %162 = call i64 @i_size_read(%struct.inode* %161)
  %163 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %27, align 8
  %164 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.page*, %struct.page** %17, align 8
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @trace_ocfs2_write_begin_nolock(i64 %160, i64 %162, i32 %166, i32 %167, i32 %168, i32 %169, %struct.page* %170, i32 %171, i32 %172)
  %174 = load i32, i32* %21, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %147
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %212

179:                                              ; preds = %176, %147
  %180 = load %struct.inode*, %struct.inode** %25, align 8
  %181 = call i32 @INODE_CACHE(%struct.inode* %180)
  %182 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %183 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %182, i32 0, i32 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %31, i32 %181, %struct.TYPE_8__* %184)
  %186 = load %struct.inode*, %struct.inode** %25, align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %22, align 4
  %189 = call i32 @ocfs2_lock_allocators(%struct.inode* %186, %struct.ocfs2_extent_tree* %31, i32 %187, i32 %188, %struct.ocfs2_alloc_context** %28, %struct.ocfs2_alloc_context** %29)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %179
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @mlog_errno(i32 %193)
  br label %381

195:                                              ; preds = %179
  %196 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %197 = icmp ne %struct.ocfs2_alloc_context* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load %struct.inode*, %struct.inode** %25, align 8
  %200 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %199)
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %203 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %202, i32 0, i32 0
  store i32* %201, i32** %203, align 8
  br label %204

204:                                              ; preds = %198, %195
  %205 = load %struct.inode*, %struct.inode** %25, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %27, align 8
  %209 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = call i32 @ocfs2_calc_extend_credits(i32 %207, i32* %210)
  store i32 %211, i32* %20, align 4
  br label %218

212:                                              ; preds = %176
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @OCFS2_WRITE_DIRECT, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %353

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217, %204
  %219 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %220 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %218
  %224 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %225 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %224, i32 0, i32 6
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %244, label %231

231:                                              ; preds = %223
  %232 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %233 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %232, i32 0, i32 6
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %236 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sub i32 %237, 1
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %231, %223
  store i32 1, i32* %19, align 4
  br label %246

245:                                              ; preds = %231, %218
  store i32 0, i32* %19, align 4
  br label %246

246:                                              ; preds = %245, %244
  %247 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %248 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %19, align 4
  %252 = call i32 @ocfs2_set_target_boundaries(%struct.ocfs2_super* %247, %struct.ocfs2_write_ctxt* %248, i32 %249, i32 %250, i32 %251)
  %253 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %254 = load i32, i32* %20, align 4
  %255 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %253, i32 %254)
  store i32* %255, i32** %30, align 8
  %256 = load i32*, i32** %30, align 8
  %257 = call i64 @IS_ERR(i32* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %246
  %260 = load i32*, i32** %30, align 8
  %261 = call i32 @PTR_ERR(i32* %260)
  store i32 %261, i32* %18, align 4
  %262 = load i32, i32* %18, align 4
  %263 = call i32 @mlog_errno(i32 %262)
  br label %381

264:                                              ; preds = %246
  %265 = load i32*, i32** %30, align 8
  %266 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %267 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %266, i32 0, i32 5
  store i32* %265, i32** %267, align 8
  %268 = load i32, i32* %21, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %264
  %271 = load %struct.inode*, %struct.inode** %25, align 8
  %272 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %273 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %21, align 4
  %276 = call i32 @ocfs2_clusters_to_bytes(i32 %274, i32 %275)
  %277 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %271, i32 %276)
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %270
  br label %377

281:                                              ; preds = %270
  br label %282

282:                                              ; preds = %281, %264
  %283 = load i32*, i32** %30, align 8
  %284 = load %struct.inode*, %struct.inode** %25, align 8
  %285 = call i32 @INODE_CACHE(%struct.inode* %284)
  %286 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %287 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %286, i32 0, i32 4
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %290 = call i32 @ocfs2_journal_access_di(i32* %283, i32 %285, %struct.TYPE_8__* %288, i32 %289)
  store i32 %290, i32* %18, align 4
  %291 = load i32, i32* %18, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %282
  %294 = load i32, i32* %18, align 4
  %295 = call i32 @mlog_errno(i32 %294)
  br label %365

296:                                              ; preds = %282
  %297 = load %struct.address_space*, %struct.address_space** %10, align 8
  %298 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %299 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %300 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %11, align 4
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %19, align 4
  %305 = load %struct.page*, %struct.page** %17, align 8
  %306 = call i32 @ocfs2_grab_pages_for_write(%struct.address_space* %297, %struct.ocfs2_write_ctxt* %298, i32 %301, i32 %302, i32 %303, i32 %304, %struct.page* %305)
  store i32 %306, i32* %18, align 4
  %307 = load i32, i32* %18, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %296
  %310 = load i32, i32* %18, align 4
  %311 = load i32, i32* @EAGAIN, align 4
  %312 = sub nsw i32 0, %311
  %313 = icmp ne i32 %310, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load i32, i32* %18, align 4
  %316 = call i32 @mlog_errno(i32 %315)
  br label %365

317:                                              ; preds = %309, %296
  %318 = load i32, i32* %18, align 4
  %319 = load i32, i32* @EAGAIN, align 4
  %320 = sub nsw i32 0, %319
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %324 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %323, i32 0, i32 2
  %325 = load %struct.page*, %struct.page** %324, align 8
  %326 = call i32 @BUG_ON(%struct.page* %325)
  store i32 0, i32* %18, align 4
  br label %365

327:                                              ; preds = %317
  %328 = load %struct.address_space*, %struct.address_space** %10, align 8
  %329 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %330 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %29, align 8
  %331 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* %12, align 4
  %334 = call i32 @ocfs2_write_cluster_by_desc(%struct.address_space* %328, %struct.ocfs2_alloc_context* %329, %struct.ocfs2_alloc_context* %330, %struct.ocfs2_write_ctxt* %331, i32 %332, i32 %333)
  store i32 %334, i32* %18, align 4
  %335 = load i32, i32* %18, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %327
  %338 = load i32, i32* %18, align 4
  %339 = call i32 @mlog_errno(i32 %338)
  br label %365

340:                                              ; preds = %327
  %341 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %342 = icmp ne %struct.ocfs2_alloc_context* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %345 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %29, align 8
  %348 = icmp ne %struct.ocfs2_alloc_context* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %29, align 8
  %351 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %350)
  br label %352

352:                                              ; preds = %349, %346
  br label %353

353:                                              ; preds = %352, %216, %69
  %354 = load %struct.page**, %struct.page*** %14, align 8
  %355 = icmp ne %struct.page** %354, null
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %358 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %357, i32 0, i32 2
  %359 = load %struct.page*, %struct.page** %358, align 8
  %360 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %359, %struct.page** %360, align 8
  br label %361

361:                                              ; preds = %356, %353
  %362 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %363 = bitcast %struct.ocfs2_write_ctxt* %362 to i8*
  %364 = load i8**, i8*** %15, align 8
  store i8* %363, i8** %364, align 8
  store i32 0, i32* %9, align 4
  br label %428

365:                                              ; preds = %337, %322, %314, %293
  %366 = load i32, i32* %21, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %365
  %369 = load %struct.inode*, %struct.inode** %25, align 8
  %370 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %371 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %21, align 4
  %374 = call i32 @ocfs2_clusters_to_bytes(i32 %372, i32 %373)
  %375 = call i32 @dquot_free_space(%struct.inode* %369, i32 %374)
  br label %376

376:                                              ; preds = %368, %365
  br label %377

377:                                              ; preds = %376, %280
  %378 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %379 = load i32*, i32** %30, align 8
  %380 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %378, i32* %379)
  br label %381

381:                                              ; preds = %377, %259, %192, %144, %133, %111, %100, %73
  %382 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %383 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load %struct.page*, %struct.page** %17, align 8
  %388 = call i32 @unlock_page(%struct.page* %387)
  br label %389

389:                                              ; preds = %386, %381
  %390 = load %struct.inode*, %struct.inode** %25, align 8
  %391 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %24, align 8
  %392 = call i32 @ocfs2_free_write_ctxt(%struct.inode* %390, %struct.ocfs2_write_ctxt* %391)
  %393 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %394 = icmp ne %struct.ocfs2_alloc_context* %393, null
  br i1 %394, label %395, label %398

395:                                              ; preds = %389
  %396 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %397 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %396)
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %28, align 8
  br label %398

398:                                              ; preds = %395, %389
  %399 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %29, align 8
  %400 = icmp ne %struct.ocfs2_alloc_context* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %29, align 8
  %403 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %402)
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %29, align 8
  br label %404

404:                                              ; preds = %401, %398
  %405 = load i32, i32* %18, align 4
  %406 = load i32, i32* @ENOSPC, align 4
  %407 = sub nsw i32 0, %406
  %408 = icmp eq i32 %405, %407
  br i1 %408, label %409, label %426

409:                                              ; preds = %404
  %410 = load i32, i32* %32, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %426

412:                                              ; preds = %409
  store i32 0, i32* %32, align 4
  %413 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %414 = load i32, i32* %23, align 4
  %415 = call i32 @ocfs2_try_to_free_truncate_log(%struct.ocfs2_super* %413, i32 %414)
  store i32 %415, i32* %33, align 4
  %416 = load i32, i32* %33, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %419

418:                                              ; preds = %412
  br label %42

419:                                              ; preds = %412
  %420 = load i32, i32* %33, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %419
  %423 = load i32, i32* %33, align 4
  %424 = call i32 @mlog_errno(i32 %423)
  br label %425

425:                                              ; preds = %422, %419
  br label %426

426:                                              ; preds = %425, %409, %404
  %427 = load i32, i32* %18, align 4
  store i32 %427, i32* %9, align 4
  br label %428

428:                                              ; preds = %426, %361, %51
  %429 = load i32, i32* %9, align 4
  ret i32 %429
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_alloc_write_ctxt(%struct.ocfs2_write_ctxt**, %struct.ocfs2_super*, i32, i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_try_to_write_inline_data(%struct.address_space*, %struct.inode*, i32, i32, %struct.page*, %struct.ocfs2_write_ctxt*) #1

declare dso_local i64 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_zero_tail(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_expand_nonsparse_inode(%struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_write_ctxt*) #1

declare dso_local i32 @ocfs2_check_range_for_refcount(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_refcount_cow(%struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_populate_write_desc(%struct.inode*, %struct.ocfs2_write_ctxt*, i32*, i32*) #1

declare dso_local i32 @trace_ocfs2_write_begin_nolock(i64, i64, i32, i32, i32, i32, %struct.page*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_allocators(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_calc_extend_credits(i32, i32*) #1

declare dso_local i32 @ocfs2_set_target_boundaries(%struct.ocfs2_super*, %struct.ocfs2_write_ctxt*, i32, i32, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ocfs2_grab_pages_for_write(%struct.address_space*, %struct.ocfs2_write_ctxt*, i32, i32, i32, i32, %struct.page*) #1

declare dso_local i32 @BUG_ON(%struct.page*) #1

declare dso_local i32 @ocfs2_write_cluster_by_desc(%struct.address_space*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_write_ctxt*, i32, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @dquot_free_space(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ocfs2_free_write_ctxt(%struct.inode*, %struct.ocfs2_write_ctxt*) #1

declare dso_local i32 @ocfs2_try_to_free_truncate_log(%struct.ocfs2_super*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
