; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_buffers_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_buffers_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.ftrace_buffer_info* }
%struct.ftrace_buffer_info = type { %struct.trace_iterator }
%struct.trace_iterator = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.pipe_inode_info = type { i32 }
%struct.splice_pipe_desc = type { i32, i32, %struct.partial_page*, %struct.page**, i32, i32* }
%struct.partial_page = type { i32, i64, i64 }
%struct.page = type { i32 }
%struct.buffer_ref = type { i32*, i32, i32, i32 }

@PIPE_DEF_BUFFERS = common dso_local global i32 0, align 4
@buffer_spd_release = common dso_local global i32 0, align 4
@buffer_pipe_buf_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @tracing_buffers_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_buffers_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ftrace_buffer_info*, align 8
  %13 = alloca %struct.trace_iterator*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.splice_pipe_desc, align 8
  %18 = alloca %struct.buffer_ref*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.page*, align 8
  %24 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %26, align 8
  store %struct.ftrace_buffer_info* %27, %struct.ftrace_buffer_info** %12, align 8
  %28 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %29 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %28, i32 0, i32 0
  store %struct.trace_iterator* %29, %struct.trace_iterator** %13, align 8
  %30 = load i32, i32* @PIPE_DEF_BUFFERS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca %struct.partial_page, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  %34 = load i32, i32* @PIPE_DEF_BUFFERS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca %struct.page*, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 0
  %38 = load i32, i32* @PIPE_DEF_BUFFERS, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 2
  store %struct.partial_page* %33, %struct.partial_page** %40, align 8
  %41 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 3
  store %struct.page** %36, %struct.page*** %41, align 8
  %42 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 4
  %43 = load i32, i32* @buffer_spd_release, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 5
  store i32* @buffer_pipe_buf_ops, i32** %44, align 8
  store i32 0, i32* %21, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %5
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %283

54:                                               ; preds = %5
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %283

69:                                               ; preds = %61
  %70 = load i64, i64* @PAGE_MASK, align 8
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %54
  %74 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %75 = call i64 @splice_grow_spd(%struct.pipe_inode_info* %74, %struct.splice_pipe_desc* %17)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %283

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %276, %80
  %82 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %83 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @trace_access_lock(i32 %84)
  %86 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %87 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %92 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ring_buffer_entries_cpu(i32 %90, i32 %93)
  store i32 %94, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %95

95:                                               ; preds = %229, %81
  %96 = load i32, i32* %20, align 4
  %97 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %103, %100, %95
  %107 = phi i1 [ false, %100 ], [ false, %95 ], [ %105, %103 ]
  br i1 %107, label %108, label %236

108:                                              ; preds = %106
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.buffer_ref* @kzalloc(i32 24, i32 %109)
  store %struct.buffer_ref* %110, %struct.buffer_ref** %18, align 8
  %111 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %112 = icmp ne %struct.buffer_ref* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %21, align 4
  br label %236

116:                                              ; preds = %108
  %117 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %118 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %117, i32 0, i32 3
  %119 = call i32 @refcount_set(i32* %118, i32 1)
  %120 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %121 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %126 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %128 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %131 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32* @ring_buffer_alloc_read_page(i32 %129, i32 %132)
  %134 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %135 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %134, i32 0, i32 0
  store i32* %133, i32** %135, align 8
  %136 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %137 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @IS_ERR(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %116
  %142 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %143 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @PTR_ERR(i32* %144)
  store i32 %145, i32* %21, align 4
  %146 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %147 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  %148 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %149 = call i32 @kfree(%struct.buffer_ref* %148)
  br label %236

150:                                              ; preds = %116
  %151 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %152 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %155 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %157 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %160 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %159, i32 0, i32 0
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %163 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ring_buffer_read_page(i32 %158, i32** %160, i64 %161, i32 %164, i32 1)
  store i32 %165, i32* %24, align 4
  %166 = load i32, i32* %24, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %150
  %169 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %170 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %173 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %176 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @ring_buffer_free_read_page(i32 %171, i32 %174, i32* %177)
  %179 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %180 = call i32 @kfree(%struct.buffer_ref* %179)
  br label %236

181:                                              ; preds = %150
  %182 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %183 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call %struct.page* @virt_to_page(i32* %184)
  store %struct.page* %185, %struct.page** %23, align 8
  %186 = load %struct.page*, %struct.page** %23, align 8
  %187 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 3
  %188 = load %struct.page**, %struct.page*** %187, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.page*, %struct.page** %188, i64 %190
  store %struct.page* %186, %struct.page** %191, align 8
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 2
  %194 = load %struct.partial_page*, %struct.partial_page** %193, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %194, i64 %196
  %198 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %197, i32 0, i32 0
  store i32 %192, i32* %198, align 8
  %199 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 2
  %200 = load %struct.partial_page*, %struct.partial_page** %199, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %200, i64 %202
  %204 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %203, i32 0, i32 2
  store i64 0, i64* %204, align 8
  %205 = load %struct.buffer_ref*, %struct.buffer_ref** %18, align 8
  %206 = ptrtoint %struct.buffer_ref* %205 to i64
  %207 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 2
  %208 = load %struct.partial_page*, %struct.partial_page** %207, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %208, i64 %210
  %212 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %211, i32 0, i32 1
  store i64 %206, i64* %212, align 8
  %213 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  %216 = load i32, i32* @PAGE_SIZE, align 4
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %216
  store i32 %219, i32* %217, align 4
  %220 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %221 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %226 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @ring_buffer_entries_cpu(i32 %224, i32 %227)
  store i32 %228, i32* %19, align 4
  br label %229

229:                                              ; preds = %181
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* @PAGE_SIZE, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %10, align 8
  %235 = sub i64 %234, %233
  store i64 %235, i64* %10, align 8
  br label %95

236:                                              ; preds = %168, %141, %113, %106
  %237 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %238 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @trace_access_unlock(i32 %239)
  %241 = load i32, i32* %20, align 4
  %242 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %17, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %277, label %246

246:                                              ; preds = %236
  %247 = load i32, i32* %21, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %280

250:                                              ; preds = %246
  %251 = load i32, i32* @EAGAIN, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %21, align 4
  %253 = load %struct.file*, %struct.file** %7, align 8
  %254 = getelementptr inbounds %struct.file, %struct.file* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @O_NONBLOCK, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %250
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %259, %250
  br label %280

265:                                              ; preds = %259
  %266 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %267 = load %struct.trace_iterator*, %struct.trace_iterator** %13, align 8
  %268 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %267, i32 0, i32 0
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @wait_on_pipe(%struct.trace_iterator* %266, i32 %271)
  store i32 %272, i32* %21, align 4
  %273 = load i32, i32* %21, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %280

276:                                              ; preds = %265
  br label %81

277:                                              ; preds = %236
  %278 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %279 = call i32 @splice_to_pipe(%struct.pipe_inode_info* %278, %struct.splice_pipe_desc* %17)
  store i32 %279, i32* %21, align 4
  br label %280

280:                                              ; preds = %277, %275, %264, %249
  %281 = call i32 @splice_shrink_spd(%struct.splice_pipe_desc* %17)
  %282 = load i32, i32* %21, align 4
  store i32 %282, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %283

283:                                              ; preds = %280, %77, %66, %51
  %284 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @splice_grow_spd(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #2

declare dso_local i32 @trace_access_lock(i32) #2

declare dso_local i32 @ring_buffer_entries_cpu(i32, i32) #2

declare dso_local %struct.buffer_ref* @kzalloc(i32, i32) #2

declare dso_local i32 @refcount_set(i32*, i32) #2

declare dso_local i32* @ring_buffer_alloc_read_page(i32, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @kfree(%struct.buffer_ref*) #2

declare dso_local i32 @ring_buffer_read_page(i32, i32**, i64, i32, i32) #2

declare dso_local i32 @ring_buffer_free_read_page(i32, i32, i32*) #2

declare dso_local %struct.page* @virt_to_page(i32*) #2

declare dso_local i32 @trace_access_unlock(i32) #2

declare dso_local i32 @wait_on_pipe(%struct.trace_iterator*, i32) #2

declare dso_local i32 @splice_to_pipe(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #2

declare dso_local i32 @splice_shrink_spd(%struct.splice_pipe_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
