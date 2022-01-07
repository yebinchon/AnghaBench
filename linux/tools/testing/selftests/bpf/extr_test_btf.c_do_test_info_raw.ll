; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_info_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_info_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prog_info_raw_test = type { i8*, i8*, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%union.bpf_attr = type { i8* }

@info_raw_tests = common dso_local global %struct.prog_info_raw_test* null, align 8
@__const.do_test_info_raw.attr = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"BTF prog info raw test[%u] (%s): \00", align 1
@hdr_tmpl = common dso_local global i32 0, align 4
@btf_log_buf = common dso_local global i8* null, align 8
@BTF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid btf_fd errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"error in creating raw bpf_line_info\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@__NR_bpf = common dso_local global i32 0, align 4
@BPF_PROG_LOAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"prog_fd:%d expected_prog_load_failure:%u errno:%d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"expected err_str:%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_test_info_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_info_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.prog_info_raw_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.bpf_attr, align 8
  store i32 %0, i32* %3, align 4
  %15 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** @info_raw_tests, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %15, i64 %18
  store %struct.prog_info_raw_test* %19, %struct.prog_info_raw_test** %4, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %20 = bitcast %union.bpf_attr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.do_test_info_raw.attr to i8*), i64 8, i1 false)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %24 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %25)
  %27 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %28 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %31 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %34 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @btf_raw_create(i32* @hdr_tmpl, i32 %29, i8* %32, i32 %35, i32* %5, i8** %13)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %260

40:                                               ; preds = %1
  %41 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i8*, i8** @btf_log_buf, align 8
  %45 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %47 = call i32 @bpf_load_btf(i8* %42, i32 %43, i8* %44, i32 %45, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @errno, align 4
  %54 = call i64 (i32, i8*, i32, ...) @CHECK(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  store i32 -1, i32* %10, align 4
  br label %218

57:                                               ; preds = %40
  %58 = load i8*, i8** @btf_log_buf, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @btf_log_buf, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %62, %57
  %70 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %73 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %71 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %80 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %83 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %87 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @patch_name_tbd(i32 %81, i8* %84, i32 %85, i32 %88, i32* %7)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %69
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %218

96:                                               ; preds = %69
  %97 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %98 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %99, i32* %100, align 8
  %101 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %102 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @ptr_to_u64(i8* %103)
  %105 = bitcast %union.bpf_attr* %14 to i8**
  store i8* %104, i8** %105, align 8
  %106 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %107 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @probe_prog_length(i8* %108)
  %110 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %109, i32* %110, align 8
  %111 = call i8* @ptr_to_u64(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %112 = bitcast %union.bpf_attr* %14 to i8**
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %113, i32* %114, align 8
  %115 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %116 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %117, i32* %118, align 8
  %119 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %120 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %121, i32* %122, align 8
  %123 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %124 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @ptr_to_u64(i8* %125)
  %127 = bitcast %union.bpf_attr* %14 to i8**
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** @btf_log_buf, align 8
  %129 = call i8* @ptr_to_u64(i8* %128)
  %130 = bitcast %union.bpf_attr* %14 to i8**
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %132 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %131, i32* %132, align 8
  %133 = bitcast %union.bpf_attr* %14 to i32*
  store i32 1, i32* %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %96
  %137 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %138 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %139, i32* %140, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = call i8* @ptr_to_u64(i8* %141)
  %143 = bitcast %union.bpf_attr* %14 to i8**
  store i8* %142, i8** %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = bitcast %union.bpf_attr* %14 to i32*
  %146 = load i32, i32* %145, align 8
  %147 = udiv i32 %144, %146
  %148 = bitcast %union.bpf_attr* %14 to i32*
  store i32 %147, i32* %148, align 8
  br label %149

149:                                              ; preds = %136, %96
  %150 = load i32, i32* @__NR_bpf, align 4
  %151 = load i32, i32* @BPF_PROG_LOAD, align 4
  %152 = call i32 @syscall(i32 %150, i32 %151, %union.bpf_attr* %14, i32 8)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, -1
  %155 = zext i1 %154 to i32
  %156 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %157 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %155, %158
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %164 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @errno, align 4
  %167 = call i64 (i32, i8*, i32, ...) @CHECK(i32 %161, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %190, label %169

169:                                              ; preds = %149
  %170 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %171 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load i8*, i8** @btf_log_buf, align 8
  %176 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %177 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @strstr(i8* %175, i32 %178)
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  br label %182

182:                                              ; preds = %174, %169
  %183 = phi i1 [ false, %169 ], [ %181, %174 ]
  %184 = zext i1 %183 to i32
  %185 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %186 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = call i64 (i32, i8*, i32, ...) @CHECK(i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182, %149
  store i32 -1, i32* %10, align 4
  br label %218

191:                                              ; preds = %182
  %192 = load i32, i32* %9, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %218

195:                                              ; preds = %191
  %196 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @test_get_finfo(%struct.prog_info_raw_test* %196, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %218

202:                                              ; preds = %195
  %203 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = bitcast %union.bpf_attr* %14 to i32*
  %206 = load i32, i32* %205, align 8
  %207 = zext i32 %206 to i64
  %208 = load %struct.prog_info_raw_test*, %struct.prog_info_raw_test** %4, align 8
  %209 = getelementptr inbounds %struct.prog_info_raw_test, %struct.prog_info_raw_test* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = sub nsw i64 %207, %210
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @test_get_linfo(%struct.prog_info_raw_test* %203, i8* %204, i64 %211, i32 %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %202
  br label %218

217:                                              ; preds = %202
  br label %218

218:                                              ; preds = %217, %216, %201, %194, %190, %93, %56
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @stderr, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i8*, i8** @btf_log_buf, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %232, %229
  %236 = load i32, i32* @stderr, align 4
  %237 = load i8*, i8** @btf_log_buf, align 8
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %237)
  br label %239

239:                                              ; preds = %235, %232, %224
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, -1
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @close(i32 %243)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, -1
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @close(i32 %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i8*, i8** %12, align 8
  %253 = call i64 @IS_ERR(i8* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load i8*, i8** %12, align 8
  %257 = call i32 @free(i8* %256)
  br label %258

258:                                              ; preds = %255, %251
  %259 = load i32, i32* %10, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %258, %39
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @btf_raw_create(i32*, i32, i8*, i32, i32*, i8**) #2

declare dso_local i32 @bpf_load_btf(i8*, i32, i8*, i32, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @CHECK(i32, i8*, i32, ...) #2

declare dso_local i8* @patch_name_tbd(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i8* @ptr_to_u64(i8*) #2

declare dso_local i32 @probe_prog_length(i8*) #2

declare dso_local i32 @syscall(i32, i32, %union.bpf_attr*, i32) #2

declare dso_local i32 @strstr(i8*, i32) #2

declare dso_local i32 @test_get_finfo(%struct.prog_info_raw_test*, i32) #2

declare dso_local i32 @test_get_linfo(%struct.prog_info_raw_test*, i8*, i64, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
