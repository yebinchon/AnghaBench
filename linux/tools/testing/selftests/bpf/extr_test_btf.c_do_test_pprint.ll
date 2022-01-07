; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_pprint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_pprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_raw_test = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_create_map_attr = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@pprint_test_template = common dso_local global %struct.btf_raw_test* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s(#%d)......\00", align 1
@hdr_tmpl = common dso_local global i32 0, align 4
@btf_log_buf = common dso_local global i8* null, align 8
@BTF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"errno:%d\00", align 1
@errno = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/sys/fs/bpf\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pin_path %s/%s is too long\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"bpf_obj_pin(%s): errno:%d.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mapv allocation failure\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"fopen(%s): errno:%d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Unexpected EOF\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%u: {\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Unexpected EOF. nr_read_elems:%u test->max_entries:%u\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Unexpected extra pprint output: %s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_test_pprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_pprint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_raw_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_create_map_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [255 x i8], align 16
  %20 = alloca i32*, align 8
  %21 = alloca [255 x i8], align 16
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %31 = load %struct.btf_raw_test*, %struct.btf_raw_test** @pprint_test_template, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %31, i64 %33
  store %struct.btf_raw_test* %34, %struct.btf_raw_test** %4, align 8
  %35 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %36 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = bitcast %struct.bpf_create_map_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 40, i1 false)
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32* null, i32** %20, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %41 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %46 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %49 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %52 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @btf_raw_create(i32* @hdr_tmpl, i32 %47, i32 %50, i32 %53, i32* %18, i32* null)
  store i8* %54, i8** %25, align 8
  %55 = load i8*, i8** %25, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %396

58:                                               ; preds = %1
  %59 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %25, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i8*, i8** @btf_log_buf, align 8
  %63 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %65 = call i32 @bpf_load_btf(i8* %60, i32 %61, i8* %62, i32 %63, i64 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i8*, i8** %25, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %17, align 4
  %69 = icmp eq i32 %68, -1
  %70 = zext i1 %69 to i32
  %71 = load i8*, i8** @errno, align 8
  %72 = call i64 (i32, i8*, ...) @CHECK(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  store i32 -1, i32* %10, align 4
  br label %345

75:                                               ; preds = %58
  %76 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %77 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %81 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 7
  store i32 %82, i32* %83, align 8
  %84 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %85 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 6
  store i32 %86, i32* %87, align 4
  %88 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %89 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 5
  store i32 %90, i32* %91, align 8
  %92 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %93 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* %17, align 4
  %97 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %99 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 4
  store i32 %100, i32* %101, align 4
  %102 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %103 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %6, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  %106 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %6)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp eq i32 %107, -1
  %109 = zext i1 %108 to i32
  %110 = load i8*, i8** @errno, align 8
  %111 = call i64 (i32, i8*, ...) @CHECK(i32 %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %75
  store i32 -1, i32* %10, align 4
  br label %345

114:                                              ; preds = %75
  %115 = getelementptr inbounds [255 x i8], [255 x i8]* %21, i64 0, i64 0
  %116 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %117 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp eq i64 %122, 255
  %124 = zext i1 %123 to i32
  %125 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %126 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 (i32, i8*, ...) @CHECK(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  store i32 -1, i32* %10, align 4
  br label %345

131:                                              ; preds = %114
  %132 = load i32, i32* %16, align 4
  %133 = getelementptr inbounds [255 x i8], [255 x i8]* %21, i64 0, i64 0
  %134 = call i32 @bpf_obj_pin(i32 %132, i8* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = getelementptr inbounds [255 x i8], [255 x i8]* %21, i64 0, i64 0
  %137 = load i8*, i8** @errno, align 8
  %138 = call i64 (i32, i8*, ...) @CHECK(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %136, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %345

141:                                              ; preds = %131
  %142 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %143 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 (...) @bpf_num_possible_cpus()
  br label %150

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ 1, %149 ]
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @get_pprint_mapv_size(i32 %152)
  %154 = call i32 @round_up(i32 %153, i32 8)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i8* @calloc(i32 %155, i32 %156)
  store i8* %157, i8** %24, align 8
  %158 = load i8*, i8** %24, align 8
  %159 = icmp ne i8* %158, null
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 (i32, i8*, ...) @CHECK(i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  store i32 -1, i32* %10, align 4
  br label %345

165:                                              ; preds = %150
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %182, %165
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %169 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ult i32 %167, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  %174 = load i8*, i8** %24, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @set_pprint_mapv(i32 %173, i8* %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %16, align 4
  %180 = load i8*, i8** %24, align 8
  %181 = call i32 @bpf_map_update_elem(i32 %179, i32* %14, i8* %180, i32 0)
  br label %182

182:                                              ; preds = %172
  %183 = load i32, i32* %14, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %166

185:                                              ; preds = %166
  %186 = getelementptr inbounds [255 x i8], [255 x i8]* %21, i64 0, i64 0
  %187 = call i32* @fopen(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %187, i32** %20, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = icmp ne i32* %188, null
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = getelementptr inbounds [255 x i8], [255 x i8]* %21, i64 0, i64 0
  %193 = load i8*, i8** @errno, align 8
  %194 = call i64 (i32, i8*, ...) @CHECK(i32 %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %192, i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  store i32 -1, i32* %10, align 4
  br label %345

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %209, %197
  %199 = load i32*, i32** %20, align 8
  %200 = call i64 @getline(i8** %23, i64* %22, i32* %199)
  store i64 %200, i64* %26, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i8*, i8** %23, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 35
  br label %207

207:                                              ; preds = %202, %198
  %208 = phi i1 [ false, %198 ], [ %206, %202 ]
  br i1 %208, label %209, label %210

209:                                              ; preds = %207
  br label %198

210:                                              ; preds = %207
  %211 = load i64, i64* %26, align 8
  %212 = icmp sle i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = call i64 (i32, i8*, ...) @CHECK(i32 %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store i32 -1, i32* %10, align 4
  br label %345

217:                                              ; preds = %210
  store i32 0, i32* %15, align 4
  %218 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %219 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %7, align 4
  %221 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %222 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %317, %217
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, i32* %15, align 4
  br label %232

229:                                              ; preds = %224
  %230 = load i8*, i8** %23, align 8
  %231 = call i32 @atoi(i8* %230)
  br label %232

232:                                              ; preds = %229, %227
  %233 = phi i32 [ %228, %227 ], [ %231, %229 ]
  store i32 %233, i32* %28, align 4
  %234 = load i32, i32* %5, align 4
  %235 = load i8*, i8** %24, align 8
  %236 = load i32, i32* %28, align 4
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @set_pprint_mapv(i32 %234, i8* %235, i32 %236, i32 %237, i32 %238)
  %240 = load i8*, i8** %24, align 8
  store i8* %240, i8** %29, align 8
  store i32 0, i32* %30, align 4
  br label %241

241:                                              ; preds = %291, %232
  %242 = load i32, i32* %30, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %294

245:                                              ; preds = %241
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %271

248:                                              ; preds = %245
  %249 = load i32, i32* %30, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %248
  %252 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0
  %253 = load i32, i32* %28, align 4
  %254 = call i8* (i8*, i32, i8*, ...) @snprintf(i8* %252, i32 255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %253)
  %255 = ptrtoint i8* %254 to i64
  store i64 %255, i64* %27, align 8
  %256 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0
  %257 = load i64, i64* %27, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = call i32 @check_line(i8* %256, i64 %257, i32 255, i8* %258)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %251
  br label %345

263:                                              ; preds = %251
  br label %264

264:                                              ; preds = %263, %248
  %265 = load i32*, i32** %20, align 8
  %266 = call i64 @getline(i8** %23, i64* %22, i32* %265)
  store i64 %266, i64* %26, align 8
  %267 = load i64, i64* %26, align 8
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %294

270:                                              ; preds = %264
  br label %271

271:                                              ; preds = %270, %245
  %272 = load i32, i32* %5, align 4
  %273 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %28, align 4
  %276 = load i32, i32* %30, align 4
  %277 = load i8*, i8** %29, align 8
  %278 = call i64 @get_pprint_expected_line(i32 %272, i8* %273, i32 255, i32 %274, i32 %275, i32 %276, i8* %277)
  store i64 %278, i64* %27, align 8
  %279 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0
  %280 = load i64, i64* %27, align 8
  %281 = load i8*, i8** %23, align 8
  %282 = call i32 @check_line(i8* %279, i64 %280, i32 255, i8* %281)
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %10, align 4
  %284 = icmp eq i32 %283, -1
  br i1 %284, label %285, label %286

285:                                              ; preds = %271
  br label %345

286:                                              ; preds = %271
  %287 = load i8*, i8** %29, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr i8, i8* %287, i64 %289
  store i8* %290, i8** %29, align 8
  br label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %30, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %30, align 4
  br label %241

294:                                              ; preds = %269, %241
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %294
  %298 = load i32*, i32** %20, align 8
  %299 = call i64 @getline(i8** %23, i64* %22, i32* %298)
  store i64 %299, i64* %26, align 8
  %300 = load i64, i64* %26, align 8
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %297
  br label %319

303:                                              ; preds = %297
  br label %304

304:                                              ; preds = %303, %294
  %305 = load i32*, i32** %20, align 8
  %306 = call i64 @getline(i8** %23, i64* %22, i32* %305)
  store i64 %306, i64* %26, align 8
  br label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %15, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %15, align 4
  %310 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %311 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = icmp ult i32 %309, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %307
  %315 = load i64, i64* %26, align 8
  %316 = icmp sgt i64 %315, 0
  br label %317

317:                                              ; preds = %314, %307
  %318 = phi i1 [ false, %307 ], [ %316, %314 ]
  br i1 %318, label %224, label %319

319:                                              ; preds = %317, %302
  %320 = load i32, i32* %8, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %336

322:                                              ; preds = %319
  %323 = load i32, i32* %15, align 4
  %324 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %325 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = icmp ult i32 %323, %326
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* %15, align 4
  %330 = load %struct.btf_raw_test*, %struct.btf_raw_test** %4, align 8
  %331 = getelementptr inbounds %struct.btf_raw_test, %struct.btf_raw_test* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = call i64 (i32, i8*, ...) @CHECK(i32 %328, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %329, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %322
  store i32 -1, i32* %10, align 4
  br label %345

336:                                              ; preds = %322, %319
  %337 = load i64, i64* %26, align 8
  %338 = icmp sgt i64 %337, 0
  %339 = zext i1 %338 to i32
  %340 = load i8*, i8** %23, align 8
  %341 = call i64 (i32, i8*, ...) @CHECK(i32 %339, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %336
  store i32 -1, i32* %10, align 4
  br label %345

344:                                              ; preds = %336
  store i32 0, i32* %10, align 4
  br label %345

345:                                              ; preds = %344, %343, %335, %285, %262, %216, %196, %164, %140, %130, %113, %74
  %346 = load i8*, i8** %24, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load i8*, i8** %24, align 8
  %350 = call i32 @free(i8* %349)
  br label %351

351:                                              ; preds = %348, %345
  %352 = load i32, i32* %10, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* @stderr, align 4
  %356 = call i32 (i32, i8*, ...) @fprintf(i32 %355, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %357

357:                                              ; preds = %354, %351
  %358 = load i8*, i8** @btf_log_buf, align 8
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %372

362:                                              ; preds = %357
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %362
  %366 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365, %362
  %369 = load i32, i32* @stderr, align 4
  %370 = load i8*, i8** @btf_log_buf, align 8
  %371 = call i32 (i32, i8*, ...) @fprintf(i32 %369, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %370)
  br label %372

372:                                              ; preds = %368, %365, %357
  %373 = load i32, i32* %17, align 4
  %374 = icmp ne i32 %373, -1
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load i32, i32* %17, align 4
  %377 = call i32 @close(i32 %376)
  br label %378

378:                                              ; preds = %375, %372
  %379 = load i32, i32* %16, align 4
  %380 = icmp ne i32 %379, -1
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load i32, i32* %16, align 4
  %383 = call i32 @close(i32 %382)
  br label %384

384:                                              ; preds = %381, %378
  %385 = load i32*, i32** %20, align 8
  %386 = icmp ne i32* %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i32*, i32** %20, align 8
  %389 = call i32 @fclose(i32* %388)
  br label %390

390:                                              ; preds = %387, %384
  %391 = getelementptr inbounds [255 x i8], [255 x i8]* %21, i64 0, i64 0
  %392 = call i32 @unlink(i8* %391)
  %393 = load i8*, i8** %23, align 8
  %394 = call i32 @free(i8* %393)
  %395 = load i32, i32* %10, align 4
  store i32 %395, i32* %2, align 4
  br label %396

396:                                              ; preds = %390, %57
  %397 = load i32, i32* %2, align 4
  ret i32 %397
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @btf_raw_create(i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @bpf_load_btf(i8*, i32, i8*, i32, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @CHECK(i32, i8*, ...) #2

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #2

declare dso_local i8* @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @bpf_obj_pin(i32, i8*) #2

declare dso_local i32 @bpf_num_possible_cpus(...) #2

declare dso_local i32 @round_up(i32, i32) #2

declare dso_local i32 @get_pprint_mapv_size(i32) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @set_pprint_mapv(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @getline(i8**, i64*, i32*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @check_line(i8*, i64, i32, i8*) #2

declare dso_local i64 @get_pprint_expected_line(i32, i8*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
