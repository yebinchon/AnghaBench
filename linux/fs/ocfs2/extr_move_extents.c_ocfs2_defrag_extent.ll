; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_defrag_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_defrag_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_move_extents_context = type { i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.inode*, %struct.TYPE_2__*, i32, i32 }
%struct.ocfs2_alloc_context = type { i64, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"len_claimed: %u, len: %u\0A\00", align 1
@OCFS2_MOVE_EXT_FL_COMPLETE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cpos: %u, phys_cpos: %u, new_phys_cpos: %u\0A\00", align 1
@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_move_extents_context*, i64, i64, i64*, i32)* @ocfs2_defrag_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_defrag_extent(%struct.ocfs2_move_extents_context* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_move_extents_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.ocfs2_refcount_tree*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.ocfs2_move_extents_context* %0, %struct.ocfs2_move_extents_context** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %15, align 4
  %29 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %29, i32 0, i32 3
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %17, align 8
  %32 = load %struct.inode*, %struct.inode** %17, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ocfs2_super* @OCFS2_SB(i32 %34)
  store %struct.ocfs2_super* %35, %struct.ocfs2_super** %18, align 8
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 1
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %19, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %20, align 8
  %39 = load %struct.inode*, %struct.inode** %17, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @ocfs2_clusters_to_blocks(i32 %41, i64 %42)
  store i32 %43, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %5
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %17, align 8
  %54 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %67 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %68 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %66, i32 %69, i32 1, %struct.ocfs2_refcount_tree** %20, i32* null)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %52
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %311

77:                                               ; preds = %52
  %78 = load %struct.inode*, %struct.inode** %17, align 8
  %79 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %80 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %23, align 4
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode* %78, i32 %81, i32 %82, i64 %84, i32* %13, i32* %14)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %302

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %48, %5
  %93 = load %struct.inode*, %struct.inode** %17, align 8
  %94 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %95 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %94, i32 0, i32 5
  %96 = load i64*, i64** %10, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %99 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %98, i32 0, i32 1
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ocfs2_lock_meta_allocator_move_extents(%struct.inode* %93, i32* %95, i64 %97, i32 1, %struct.ocfs2_alloc_context** %99, i32 %100, i32* %13)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %302

107:                                              ; preds = %92
  %108 = load %struct.inode*, %struct.inode** %19, align 8
  %109 = call i32 @inode_lock(%struct.inode* %108)
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %111 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %115 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %275

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %107
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %127 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %126, i32 0, i32 2
  %128 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %123, i64 %125, %struct.ocfs2_alloc_context** %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @mlog_errno(i32 %132)
  br label %275

134:                                              ; preds = %122
  %135 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %135, i32 %136)
  store i32* %137, i32** %16, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = call i64 @IS_ERR(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i32*, i32** %16, align 8
  %143 = call i32 @PTR_ERR(i32* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @mlog_errno(i32 %144)
  br label %275

146:                                              ; preds = %134
  %147 = load i32*, i32** %16, align 8
  %148 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %149 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %148, i32 0, i32 2
  %150 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %149, align 8
  %151 = load i64*, i64** %10, align 8
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @__ocfs2_claim_clusters(i32* %147, %struct.ocfs2_alloc_context* %150, i32 1, i64 %152, i64* %21, i64* %22)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @mlog_errno(i32 %157)
  br label %229

159:                                              ; preds = %146
  %160 = load i64, i64* %22, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %160, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = load i64, i64* %22, align 8
  %166 = load i64*, i64** %10, align 8
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %165, i64 %167)
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* @OCFS2_MOVE_EXT_FL_COMPLETE, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %175 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %174, i32 0, i32 4
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, %173
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @ENOSPC, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %12, align 4
  store i32 1, i32* %24, align 4
  br label %229

182:                                              ; preds = %164
  br label %183

183:                                              ; preds = %182, %159
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %21, align 8
  %187 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %184, i64 %185, i64 %186)
  %188 = load i32*, i32** %16, align 8
  %189 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* %22, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %21, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @__ocfs2_move_extent(i32* %188, %struct.ocfs2_move_extents_context* %189, i64 %190, i64 %191, i64 %192, i64 %193, i32 %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %183
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @mlog_errno(i32 %199)
  br label %201

201:                                              ; preds = %198, %183
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load i64, i64* %22, align 8
  %206 = load i64*, i64** %10, align 8
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i64, i64* %22, align 8
  %211 = load i64*, i64** %10, align 8
  store i64 %210, i64* %211, align 8
  br label %212

212:                                              ; preds = %209, %204, %201
  %213 = load %struct.inode*, %struct.inode** %17, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %217 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %216, i32 0, i32 3
  %218 = load %struct.inode*, %struct.inode** %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = load i64*, i64** %10, align 8
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ocfs2_cow_sync_writeback(i32 %215, %struct.inode* %218, i64 %219, i64 %221)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @mlog_errno(i32 %226)
  br label %228

228:                                              ; preds = %225, %212
  br label %229

229:                                              ; preds = %228, %171, %156
  %230 = load i32, i32* %24, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %271

232:                                              ; preds = %229
  %233 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %234 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %233, i32 0, i32 2
  %235 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %234, align 8
  %236 = icmp ne %struct.ocfs2_alloc_context* %235, null
  br i1 %236, label %237, label %271

237:                                              ; preds = %232
  %238 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %239 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %238, i32 0, i32 2
  %240 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %239, align 8
  store %struct.ocfs2_alloc_context* %240, %struct.ocfs2_alloc_context** %25, align 8
  %241 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %242 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %241, i32 0, i32 2
  %243 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %242, align 8
  %244 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %237
  %249 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %25, align 8
  %252 = load i64, i64* %21, align 8
  %253 = load i64, i64* %22, align 8
  %254 = call i32 @ocfs2_free_local_alloc_bits(%struct.ocfs2_super* %249, i32* %250, %struct.ocfs2_alloc_context* %251, i64 %252, i64 %253)
  br label %270

255:                                              ; preds = %237
  %256 = load i32*, i32** %16, align 8
  %257 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %25, align 8
  %258 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %25, align 8
  %261 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %264 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i64, i64* %21, align 8
  %267 = call i32 @ocfs2_clusters_to_blocks(i32 %265, i64 %266)
  %268 = load i64, i64* %22, align 8
  %269 = call i32 @ocfs2_free_clusters(i32* %256, i32 %259, i32 %262, i32 %267, i64 %268)
  br label %270

270:                                              ; preds = %255, %248
  br label %271

271:                                              ; preds = %270, %232, %229
  %272 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %273 = load i32*, i32** %16, align 8
  %274 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %272, i32* %273)
  br label %275

275:                                              ; preds = %271, %141, %131, %118
  %276 = load %struct.inode*, %struct.inode** %19, align 8
  %277 = call i32 @inode_unlock(%struct.inode* %276)
  %278 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %279 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %278, i32 0, i32 2
  %280 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %279, align 8
  %281 = icmp ne %struct.ocfs2_alloc_context* %280, null
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %284 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %283, i32 0, i32 2
  %285 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %284, align 8
  %286 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %285)
  %287 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %288 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %287, i32 0, i32 2
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %288, align 8
  br label %289

289:                                              ; preds = %282, %275
  %290 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %291 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %290, i32 0, i32 1
  %292 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %291, align 8
  %293 = icmp ne %struct.ocfs2_alloc_context* %292, null
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %296 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %295, i32 0, i32 1
  %297 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %296, align 8
  %298 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %297)
  %299 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %7, align 8
  %300 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %299, i32 0, i32 1
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %300, align 8
  br label %301

301:                                              ; preds = %294, %289
  br label %302

302:                                              ; preds = %301, %104, %88
  %303 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %20, align 8
  %304 = icmp ne %struct.ocfs2_refcount_tree* %303, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %307 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %20, align 8
  %308 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %306, %struct.ocfs2_refcount_tree* %307, i32 1)
  br label %309

309:                                              ; preds = %305, %302
  %310 = load i32, i32* %12, align 4
  store i32 %310, i32* %6, align 4
  br label %311

311:                                              ; preds = %309, %73
  %312 = load i32, i32* %6, align 4
  ret i32 %312
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @ocfs2_lock_meta_allocator_move_extents(%struct.inode*, i32*, i64, i32, %struct.ocfs2_alloc_context**, i32, i32*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i64, %struct.ocfs2_alloc_context**) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @__ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i64, i64*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @__ocfs2_move_extent(i32*, %struct.ocfs2_move_extents_context*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @ocfs2_cow_sync_writeback(i32, %struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_free_local_alloc_bits(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i64, i64) #1

declare dso_local i32 @ocfs2_free_clusters(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
