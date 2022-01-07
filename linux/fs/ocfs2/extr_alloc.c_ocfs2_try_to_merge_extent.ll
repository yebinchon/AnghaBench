; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_try_to_merge_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_try_to_merge_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_merge_ctxt = type { i64, i64, i64 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }

@CONTIG_NONE = common dso_local global i64 0, align 8
@CONTIG_LEFTRIGHT = common dso_local global i64 0, align 8
@CONTIG_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_merge_ctxt*)* @ocfs2_try_to_merge_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_try_to_merge_extent(%struct.TYPE_7__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_merge_ctxt* %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %14 = alloca %struct.ocfs2_merge_ctxt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %12, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  store %struct.ocfs2_merge_ctxt* %6, %struct.ocfs2_merge_ctxt** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %19 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %18)
  store %struct.ocfs2_extent_list* %19, %struct.ocfs2_extent_list** %16, align 8
  %20 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %20, i32 0, i32 0
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i64 %24
  store %struct.ocfs2_extent_rec* %25, %struct.ocfs2_extent_rec** %17, align 8
  %26 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %27 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CONTIG_NONE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %34 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %7
  %38 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %39 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %48 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_7__* %43, i32 0, i32 %46, %struct.ocfs2_path* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %238

54:                                               ; preds = %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %58 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %59 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__* %55, %struct.ocfs2_extent_tree* %56, %struct.ocfs2_path* %57, %struct.ocfs2_cached_dealloc_ctxt* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %238

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  %68 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %68, i32 0, i32 0
  %70 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %70, i64 %72
  store %struct.ocfs2_extent_rec* %73, %struct.ocfs2_extent_rec** %17, align 8
  br label %74

74:                                               ; preds = %65, %37, %7
  %75 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %76 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CONTIG_LEFTRIGHT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %174

80:                                               ; preds = %74
  %81 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %82 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %91 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @ocfs2_merge_rec_right(%struct.ocfs2_path* %88, %struct.TYPE_7__* %89, %struct.ocfs2_extent_tree* %90, %struct.ocfs2_extent_rec* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %238

99:                                               ; preds = %80
  %100 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %101 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %100, i32 0, i32 0
  %102 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %101, align 8
  %103 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %102, i64 0
  %104 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %114 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_7__* %109, i32 0, i32 %112, %struct.ocfs2_path* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %238

120:                                              ; preds = %99
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %123 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %124 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %125 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__* %121, %struct.ocfs2_extent_tree* %122, %struct.ocfs2_path* %123, %struct.ocfs2_cached_dealloc_ctxt* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %238

131:                                              ; preds = %120
  %132 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %132, i32 0, i32 0
  %134 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %134, i64 %136
  store %struct.ocfs2_extent_rec* %137, %struct.ocfs2_extent_rec** %17, align 8
  %138 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %141 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %142 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @ocfs2_merge_rec_left(%struct.ocfs2_path* %138, %struct.TYPE_7__* %139, %struct.ocfs2_extent_tree* %140, %struct.ocfs2_extent_rec* %141, %struct.ocfs2_cached_dealloc_ctxt* %142, i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %131
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %238

150:                                              ; preds = %131
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %156 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_7__* %151, i32 0, i32 %154, %struct.ocfs2_path* %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @mlog_errno(i32 %160)
  br label %238

162:                                              ; preds = %150
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %165 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %166 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %167 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__* %163, %struct.ocfs2_extent_tree* %164, %struct.ocfs2_path* %165, %struct.ocfs2_cached_dealloc_ctxt* %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @mlog_errno(i32 %171)
  br label %173

173:                                              ; preds = %170, %162
  store i32 0, i32* %15, align 4
  br label %237

174:                                              ; preds = %74
  %175 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %176 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @CONTIG_RIGHT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %174
  %181 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %184 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %185 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @ocfs2_merge_rec_left(%struct.ocfs2_path* %181, %struct.TYPE_7__* %182, %struct.ocfs2_extent_tree* %183, %struct.ocfs2_extent_rec* %184, %struct.ocfs2_cached_dealloc_ctxt* %185, i32 %186)
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @mlog_errno(i32 %191)
  br label %238

193:                                              ; preds = %180
  br label %207

194:                                              ; preds = %174
  %195 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %197 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %198 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @ocfs2_merge_rec_right(%struct.ocfs2_path* %195, %struct.TYPE_7__* %196, %struct.ocfs2_extent_tree* %197, %struct.ocfs2_extent_rec* %198, i32 %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %194
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @mlog_errno(i32 %204)
  br label %238

206:                                              ; preds = %194
  br label %207

207:                                              ; preds = %206, %193
  %208 = load %struct.ocfs2_merge_ctxt*, %struct.ocfs2_merge_ctxt** %14, align 8
  %209 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %236

212:                                              ; preds = %207
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %218 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_7__* %213, i32 0, i32 %216, %struct.ocfs2_path* %217)
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @mlog_errno(i32 %222)
  store i32 0, i32* %15, align 4
  br label %238

224:                                              ; preds = %212
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %226 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %227 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %228 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %229 = call i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__* %225, %struct.ocfs2_extent_tree* %226, %struct.ocfs2_path* %227, %struct.ocfs2_cached_dealloc_ctxt* %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %224
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @mlog_errno(i32 %233)
  br label %235

235:                                              ; preds = %232, %224
  store i32 0, i32* %15, align 4
  br label %236

236:                                              ; preds = %235, %207
  br label %237

237:                                              ; preds = %236, %173
  br label %238

238:                                              ; preds = %237, %221, %203, %190, %159, %147, %128, %117, %96, %62, %51
  %239 = load i32, i32* %15, align 4
  ret i32 %239
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_7__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_merge_rec_right(%struct.ocfs2_path*, %struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_merge_rec_left(%struct.ocfs2_path*, %struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
