; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___perf_buffer__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___perf_buffer__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer = type { i64, i64, i32, i64, i64, %struct.TYPE_4__*, %struct.perf_cpu_buf**, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.perf_cpu_buf* }
%struct.perf_cpu_buf = type { i32 }
%struct.perf_buffer_params = type { i64, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.bpf_map_info = type { i64, i32, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"page count should be power of two, but is %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to get map info for map FD %d: %s\0A\00", align 1
@BPF_MAP_TYPE_PERF_EVENT_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"map '%s' should be BPF_MAP_TYPE_PERF_EVENT_ARRAY\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EPOLL_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to create epoll instance: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to allocate events: out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to allocate buffers: out of memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"failed to set cpu #%d, key %d -> perf FD %d: %s\0A\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"failed to epoll_ctl cpu #%d perf FD %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_buffer* (i32, i64, %struct.perf_buffer_params*)* @__perf_buffer__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_buffer* @__perf_buffer__new(i32 %0, i64 %1, %struct.perf_buffer_params* %2) #0 {
  %4 = alloca %struct.perf_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_buffer_params*, align 8
  %8 = alloca %struct.bpf_map_info, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.perf_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.perf_cpu_buf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.perf_buffer_params* %2, %struct.perf_buffer_params** %7, align 8
  %19 = bitcast %struct.bpf_map_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* @STRERR_BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 1
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.perf_buffer* @ERR_PTR(i32 %33)
  store %struct.perf_buffer* %34, %struct.perf_buffer** %4, align 8
  store i32 1, i32* %15, align 4
  br label %334

35:                                               ; preds = %3
  store i32 16, i32* %12, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @bpf_obj_get_info_by_fd(i32 %36, %struct.bpf_map_info* %8, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %13, align 4
  %45 = trunc i64 %21 to i32
  %46 = call i32 @libbpf_strerror_r(i32 %44, i8* %23, i32 %45)
  %47 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.perf_buffer* @ERR_PTR(i32 %48)
  store %struct.perf_buffer* %49, %struct.perf_buffer** %4, align 8
  store i32 1, i32* %15, align 4
  br label %334

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BPF_MAP_TYPE_PERF_EVENT_ARRAY, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %8, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.perf_buffer* @ERR_PTR(i32 %60)
  store %struct.perf_buffer* %61, %struct.perf_buffer** %4, align 8
  store i32 1, i32* %15, align 4
  br label %334

62:                                               ; preds = %50
  %63 = call i8* @calloc(i32 1, i32 72)
  %64 = bitcast i8* %63 to %struct.perf_buffer*
  store %struct.perf_buffer* %64, %struct.perf_buffer** %11, align 8
  %65 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %66 = icmp ne %struct.perf_buffer* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.perf_buffer* @ERR_PTR(i32 %69)
  store %struct.perf_buffer* %70, %struct.perf_buffer** %4, align 8
  store i32 1, i32* %15, align 4
  br label %334

71:                                               ; preds = %62
  %72 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %73 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %76 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %78 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %83 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %86 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %88 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %91 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = call i64 (...) @getpagesize()
  %93 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %94 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %96 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = mul i64 %97, %98
  %100 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %101 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %104 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @EPOLL_CLOEXEC, align 4
  %106 = call i64 @epoll_create1(i32 %105)
  %107 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %108 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %110 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %71
  %114 = load i32, i32* @errno, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = trunc i64 %21 to i32
  %118 = call i32 @libbpf_strerror_r(i32 %116, i8* %23, i32 %117)
  %119 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %325

120:                                              ; preds = %71
  %121 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %122 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %127 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %130 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  br label %159

131:                                              ; preds = %120
  %132 = call i64 (...) @libbpf_num_possible_cpus()
  %133 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %134 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  %135 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %136 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %141 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  br label %325

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %8, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %149 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %8, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %157 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %156, i32 0, i32 4
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %144
  br label %159

159:                                              ; preds = %158, %125
  %160 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %161 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i8* @calloc(i32 %163, i32 16)
  %165 = bitcast i8* %164 to %struct.TYPE_4__*
  %166 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %167 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %166, i32 0, i32 5
  store %struct.TYPE_4__* %165, %struct.TYPE_4__** %167, align 8
  %168 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %169 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %168, i32 0, i32 5
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = icmp ne %struct.TYPE_4__* %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %159
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %13, align 4
  %175 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %325

176:                                              ; preds = %159
  %177 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %178 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i8* @calloc(i32 %180, i32 8)
  %182 = bitcast i8* %181 to %struct.perf_cpu_buf**
  %183 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %184 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %183, i32 0, i32 6
  store %struct.perf_cpu_buf** %182, %struct.perf_cpu_buf*** %184, align 8
  %185 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %186 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %185, i32 0, i32 6
  %187 = load %struct.perf_cpu_buf**, %struct.perf_cpu_buf*** %186, align 8
  %188 = icmp ne %struct.perf_cpu_buf** %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %176
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %13, align 4
  %192 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %325

193:                                              ; preds = %176
  store i32 0, i32* %14, align 4
  br label %194

194:                                              ; preds = %320, %193
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %198 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %323

201:                                              ; preds = %194
  %202 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %203 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %208 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  br label %216

214:                                              ; preds = %201
  %215 = load i32, i32* %14, align 4
  br label %216

216:                                              ; preds = %214, %206
  %217 = phi i32 [ %213, %206 ], [ %215, %214 ]
  store i32 %217, i32* %17, align 4
  %218 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %219 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %224 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  br label %232

230:                                              ; preds = %216
  %231 = load i32, i32* %14, align 4
  br label %232

232:                                              ; preds = %230, %222
  %233 = phi i32 [ %229, %222 ], [ %231, %230 ]
  store i32 %233, i32* %18, align 4
  %234 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %235 = load %struct.perf_buffer_params*, %struct.perf_buffer_params** %7, align 8
  %236 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %18, align 4
  %240 = call %struct.perf_cpu_buf* @perf_buffer__open_cpu_buf(%struct.perf_buffer* %234, i32 %237, i32 %238, i32 %239)
  store %struct.perf_cpu_buf* %240, %struct.perf_cpu_buf** %16, align 8
  %241 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %242 = call i64 @IS_ERR(%struct.perf_cpu_buf* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %232
  %245 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %246 = call i32 @PTR_ERR(%struct.perf_cpu_buf* %245)
  store i32 %246, i32* %13, align 4
  br label %325

247:                                              ; preds = %232
  %248 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %249 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %250 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %249, i32 0, i32 6
  %251 = load %struct.perf_cpu_buf**, %struct.perf_cpu_buf*** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %251, i64 %253
  store %struct.perf_cpu_buf* %248, %struct.perf_cpu_buf** %254, align 8
  %255 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %256 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %259 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %258, i32 0, i32 0
  %260 = call i32 @bpf_map_update_elem(i32 %257, i32* %18, i32* %259, i32 0)
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %247
  %264 = load i32, i32* @errno, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %18, align 4
  %268 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %269 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %13, align 4
  %272 = trunc i64 %21 to i32
  %273 = call i32 @libbpf_strerror_r(i32 %271, i8* %23, i32 %272)
  %274 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %266, i32 %267, i32 %270, i32 %273)
  br label %325

275:                                              ; preds = %247
  %276 = load i32, i32* @EPOLLIN, align 4
  %277 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %278 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %277, i32 0, i32 5
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  store i32 %276, i32* %283, align 8
  %284 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %285 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %286 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %285, i32 0, i32 5
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  store %struct.perf_cpu_buf* %284, %struct.perf_cpu_buf** %292, align 8
  %293 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %294 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %297 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %298 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %301 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %300, i32 0, i32 5
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 %304
  %306 = call i64 @epoll_ctl(i64 %295, i32 %296, i32 %299, %struct.TYPE_4__* %305)
  %307 = icmp slt i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %275
  %309 = load i32, i32* @errno, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %17, align 4
  %312 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %16, align 8
  %313 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %13, align 4
  %316 = trunc i64 %21 to i32
  %317 = call i32 @libbpf_strerror_r(i32 %315, i8* %23, i32 %316)
  %318 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %311, i32 %314, i32 %317)
  br label %325

319:                                              ; preds = %275
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %14, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %14, align 4
  br label %194

323:                                              ; preds = %194
  %324 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  store %struct.perf_buffer* %324, %struct.perf_buffer** %4, align 8
  store i32 1, i32* %15, align 4
  br label %334

325:                                              ; preds = %308, %263, %244, %189, %172, %139, %113
  %326 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %327 = icmp ne %struct.perf_buffer* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %330 = call i32 @perf_buffer__free(%struct.perf_buffer* %329)
  br label %331

331:                                              ; preds = %328, %325
  %332 = load i32, i32* %13, align 4
  %333 = call %struct.perf_buffer* @ERR_PTR(i32 %332)
  store %struct.perf_buffer* %333, %struct.perf_buffer** %4, align 8
  store i32 1, i32* %15, align 4
  br label %334

334:                                              ; preds = %331, %323, %67, %55, %40, %29
  %335 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %335)
  %336 = load %struct.perf_buffer*, %struct.perf_buffer** %4, align 8
  ret %struct.perf_buffer* %336
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_warning(i8*, ...) #3

declare dso_local %struct.perf_buffer* @ERR_PTR(i32) #3

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_map_info*, i32*) #3

declare dso_local i32 @libbpf_strerror_r(i32, i8*, i32) #3

declare dso_local i8* @calloc(i32, i32) #3

declare dso_local i64 @getpagesize(...) #3

declare dso_local i64 @epoll_create1(i32) #3

declare dso_local i64 @libbpf_num_possible_cpus(...) #3

declare dso_local %struct.perf_cpu_buf* @perf_buffer__open_cpu_buf(%struct.perf_buffer*, i32, i32, i32) #3

declare dso_local i64 @IS_ERR(%struct.perf_cpu_buf*) #3

declare dso_local i32 @PTR_ERR(%struct.perf_cpu_buf*) #3

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #3

declare dso_local i64 @epoll_ctl(i64, i32, i32, %struct.TYPE_4__*) #3

declare dso_local i32 @perf_buffer__free(%struct.perf_buffer*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
