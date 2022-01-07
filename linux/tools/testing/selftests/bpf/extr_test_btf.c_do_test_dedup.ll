; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_dedup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_do_test_dedup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup_test = type { i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.btf_header = type { i32, i32 }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@dedup_tests = common dso_local global %struct.btf_dedup_test* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"BTF dedup test[%u] (%s):\00", align 1
@hdr_tmpl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid test_btf errno:%ld\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid expect_btf errno:%ld\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"btf_dedup failed errno:%d\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"test_btf_size:%u != expect_btf_size:%u\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"test_hdr->str_len:%u != expect_hdr->str_len:%u\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0Atest strings:\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0Aexpected strings:\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"test_len:%zu != expect_len:%zu (test_str:%s, expect_str:%s)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"test_str:%s != expect_str:%s\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"test_str_cur:%p != test_str_end:%p\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"test_nr_types:%u != expect_nr_types:%u\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"type #%d: test_size:%d != expect_size:%u\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"type #%d: contents differ\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_test_dedup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_dedup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_dedup_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf_header*, align 8
  %10 = alloca %struct.btf_header*, align 8
  %11 = alloca %struct.btf*, align 8
  %12 = alloca %struct.btf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.btf_type*, align 8
  %30 = alloca %struct.btf_type*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %33 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** @dedup_tests, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %33, i64 %36
  store %struct.btf_dedup_test* %37, %struct.btf_dedup_test** %4, align 8
  store %struct.btf* null, %struct.btf** %11, align 8
  store %struct.btf* null, %struct.btf** %12, align 8
  store i32 0, i32* %25, align 4
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %41 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %42)
  %44 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %45 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %49 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %53 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @btf_raw_create(i32* @hdr_tmpl, i32 %47, i32 %51, i32 %55, i32* %23, i8** %15)
  store i8* %56, i8** %24, align 8
  %57 = load i8*, i8** %24, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %326

60:                                               ; preds = %1
  %61 = load i8*, i8** %24, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %23, align 4
  %64 = call %struct.btf* @btf__new(i32* %62, i32 %63)
  store %struct.btf* %64, %struct.btf** %11, align 8
  %65 = load i8*, i8** %24, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.btf*, %struct.btf** %11, align 8
  %68 = call i32 @IS_ERR(%struct.btf* %67)
  %69 = load %struct.btf*, %struct.btf** %11, align 8
  %70 = call i32 @PTR_ERR(%struct.btf* %69)
  %71 = call i64 (i32, i8*, ...) @CHECK(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 -1, i32* %25, align 4
  br label %304

74:                                               ; preds = %60
  %75 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %76 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %80 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %84 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @btf_raw_create(i32* @hdr_tmpl, i32 %78, i32 %82, i32 %86, i32* %23, i8** %16)
  store i8* %87, i8** %24, align 8
  %88 = load i8*, i8** %24, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  br label %326

91:                                               ; preds = %74
  %92 = load i8*, i8** %24, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %23, align 4
  %95 = call %struct.btf* @btf__new(i32* %93, i32 %94)
  store %struct.btf* %95, %struct.btf** %12, align 8
  %96 = load i8*, i8** %24, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load %struct.btf*, %struct.btf** %12, align 8
  %99 = call i32 @IS_ERR(%struct.btf* %98)
  %100 = load %struct.btf*, %struct.btf** %12, align 8
  %101 = call i32 @PTR_ERR(%struct.btf* %100)
  %102 = call i64 (i32, i8*, ...) @CHECK(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 -1, i32* %25, align 4
  br label %304

105:                                              ; preds = %91
  %106 = load %struct.btf*, %struct.btf** %11, align 8
  %107 = load %struct.btf_dedup_test*, %struct.btf_dedup_test** %4, align 8
  %108 = getelementptr inbounds %struct.btf_dedup_test, %struct.btf_dedup_test* %107, i32 0, i32 1
  %109 = call i32 @btf__dedup(%struct.btf* %106, i32* null, i32* %108)
  store i32 %109, i32* %25, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %25, align 4
  %112 = call i64 (i32, i8*, ...) @CHECK(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 -1, i32* %25, align 4
  br label %304

115:                                              ; preds = %105
  %116 = load %struct.btf*, %struct.btf** %11, align 8
  %117 = call i8* @btf__get_raw_data(%struct.btf* %116, i32* %7)
  store i8* %117, i8** %13, align 8
  %118 = load %struct.btf*, %struct.btf** %12, align 8
  %119 = call i8* @btf__get_raw_data(%struct.btf* %118, i32* %8)
  store i8* %119, i8** %14, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i64 (i32, i8*, ...) @CHECK(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store i32 -1, i32* %25, align 4
  br label %304

129:                                              ; preds = %115
  %130 = load i8*, i8** %13, align 8
  %131 = bitcast i8* %130 to %struct.btf_header*
  store %struct.btf_header* %131, %struct.btf_header** %9, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr i8, i8* %132, i64 8
  %134 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %135 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr i8, i8* %133, i64 %137
  store i8* %138, i8** %17, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = bitcast i8* %139 to %struct.btf_header*
  store %struct.btf_header* %140, %struct.btf_header** %10, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr i8, i8* %141, i64 8
  %143 = load %struct.btf_header*, %struct.btf_header** %10, align 8
  %144 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %142, i64 %146
  store i8* %147, i8** %18, align 8
  %148 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %149 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.btf_header*, %struct.btf_header** %10, align 8
  %152 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %150, %153
  %155 = zext i1 %154 to i32
  %156 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %157 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.btf_header*, %struct.btf_header** %10, align 8
  %160 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 (i32, i8*, ...) @CHECK(i32 %155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %129
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i8*, i8** %17, align 8
  %168 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %169 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dump_btf_strings(i8* %167, i32 %170)
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %174 = load i8*, i8** %18, align 8
  %175 = load %struct.btf_header*, %struct.btf_header** %10, align 8
  %176 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dump_btf_strings(i8* %174, i32 %177)
  store i32 -1, i32* %25, align 4
  br label %304

179:                                              ; preds = %129
  %180 = load i8*, i8** %17, align 8
  store i8* %180, i8** %19, align 8
  %181 = load i8*, i8** %17, align 8
  %182 = load %struct.btf_header*, %struct.btf_header** %9, align 8
  %183 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %181, i64 %185
  store i8* %186, i8** %20, align 8
  %187 = load i8*, i8** %18, align 8
  store i8* %187, i8** %21, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = load %struct.btf_header*, %struct.btf_header** %10, align 8
  %190 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  store i8* %193, i8** %22, align 8
  br label %194

194:                                              ; preds = %229, %179
  %195 = load i8*, i8** %19, align 8
  %196 = load i8*, i8** %20, align 8
  %197 = icmp ult i8* %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i8*, i8** %21, align 8
  %200 = load i8*, i8** %22, align 8
  %201 = icmp ult i8* %199, %200
  br label %202

202:                                              ; preds = %198, %194
  %203 = phi i1 [ false, %194 ], [ %201, %198 ]
  br i1 %203, label %204, label %238

204:                                              ; preds = %202
  %205 = load i8*, i8** %19, align 8
  %206 = call i64 @strlen(i8* %205)
  store i64 %206, i64* %27, align 8
  %207 = load i8*, i8** %21, align 8
  %208 = call i64 @strlen(i8* %207)
  store i64 %208, i64* %28, align 8
  %209 = load i64, i64* %27, align 8
  %210 = load i64, i64* %28, align 8
  %211 = icmp ne i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i64, i64* %27, align 8
  %214 = load i64, i64* %28, align 8
  %215 = load i8*, i8** %19, align 8
  %216 = load i8*, i8** %21, align 8
  %217 = call i64 (i32, i8*, ...) @CHECK(i32 %212, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i64 %213, i64 %214, i8* %215, i8* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %204
  store i32 -1, i32* %25, align 4
  br label %304

220:                                              ; preds = %204
  %221 = load i8*, i8** %19, align 8
  %222 = load i8*, i8** %21, align 8
  %223 = call i32 @strcmp(i8* %221, i8* %222)
  %224 = load i8*, i8** %19, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = call i64 (i32, i8*, ...) @CHECK(i32 %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %224, i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  store i32 -1, i32* %25, align 4
  br label %304

229:                                              ; preds = %220
  %230 = load i64, i64* %27, align 8
  %231 = add i64 %230, 1
  %232 = load i8*, i8** %19, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 %231
  store i8* %233, i8** %19, align 8
  %234 = load i64, i64* %28, align 8
  %235 = add i64 %234, 1
  %236 = load i8*, i8** %21, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 %235
  store i8* %237, i8** %21, align 8
  br label %194

238:                                              ; preds = %202
  %239 = load i8*, i8** %19, align 8
  %240 = load i8*, i8** %20, align 8
  %241 = icmp ne i8* %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i8*, i8** %19, align 8
  %244 = load i8*, i8** %20, align 8
  %245 = call i64 (i32, i8*, ...) @CHECK(i32 %242, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %243, i8* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  store i32 -1, i32* %25, align 4
  br label %304

248:                                              ; preds = %238
  %249 = load %struct.btf*, %struct.btf** %11, align 8
  %250 = call i32 @btf__get_nr_types(%struct.btf* %249)
  store i32 %250, i32* %5, align 4
  %251 = load %struct.btf*, %struct.btf** %12, align 8
  %252 = call i32 @btf__get_nr_types(%struct.btf* %251)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %253, %254
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i64 (i32, i8*, ...) @CHECK(i32 %256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %248
  store i32 -1, i32* %25, align 4
  br label %304

262:                                              ; preds = %248
  store i32 1, i32* %26, align 4
  br label %263

263:                                              ; preds = %300, %262
  %264 = load i32, i32* %26, align 4
  %265 = load i32, i32* %5, align 4
  %266 = icmp sle i32 %264, %265
  br i1 %266, label %267, label %303

267:                                              ; preds = %263
  %268 = load %struct.btf*, %struct.btf** %11, align 8
  %269 = load i32, i32* %26, align 4
  %270 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %268, i32 %269)
  store %struct.btf_type* %270, %struct.btf_type** %29, align 8
  %271 = load %struct.btf*, %struct.btf** %12, align 8
  %272 = load i32, i32* %26, align 4
  %273 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %271, i32 %272)
  store %struct.btf_type* %273, %struct.btf_type** %30, align 8
  %274 = load %struct.btf_type*, %struct.btf_type** %29, align 8
  %275 = call i32 @btf_type_size(%struct.btf_type* %274)
  store i32 %275, i32* %31, align 4
  %276 = load %struct.btf_type*, %struct.btf_type** %30, align 8
  %277 = call i32 @btf_type_size(%struct.btf_type* %276)
  store i32 %277, i32* %32, align 4
  %278 = load i32, i32* %31, align 4
  %279 = load i32, i32* %32, align 4
  %280 = icmp ne i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %26, align 4
  %283 = load i32, i32* %31, align 4
  %284 = load i32, i32* %32, align 4
  %285 = call i64 (i32, i8*, ...) @CHECK(i32 %281, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %282, i32 %283, i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %267
  store i32 -1, i32* %25, align 4
  br label %304

288:                                              ; preds = %267
  %289 = load %struct.btf_type*, %struct.btf_type** %29, align 8
  %290 = bitcast %struct.btf_type* %289 to i8*
  %291 = load %struct.btf_type*, %struct.btf_type** %30, align 8
  %292 = bitcast %struct.btf_type* %291 to i8*
  %293 = load i32, i32* %31, align 4
  %294 = call i32 @memcmp(i8* %290, i8* %292, i32 %293)
  %295 = load i32, i32* %26, align 4
  %296 = call i64 (i32, i8*, ...) @CHECK(i32 %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %288
  store i32 -1, i32* %25, align 4
  br label %304

299:                                              ; preds = %288
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %26, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %26, align 4
  br label %263

303:                                              ; preds = %263
  br label %304

304:                                              ; preds = %303, %298, %287, %261, %247, %228, %219, %164, %128, %114, %104, %73
  %305 = load i32, i32* %25, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* @stderr, align 4
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %310

310:                                              ; preds = %307, %304
  %311 = load %struct.btf*, %struct.btf** %11, align 8
  %312 = call i32 @IS_ERR(%struct.btf* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = load %struct.btf*, %struct.btf** %11, align 8
  %316 = call i32 @btf__free(%struct.btf* %315)
  br label %317

317:                                              ; preds = %314, %310
  %318 = load %struct.btf*, %struct.btf** %12, align 8
  %319 = call i32 @IS_ERR(%struct.btf* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  %322 = load %struct.btf*, %struct.btf** %12, align 8
  %323 = call i32 @btf__free(%struct.btf* %322)
  br label %324

324:                                              ; preds = %321, %317
  %325 = load i32, i32* %25, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %324, %90, %59
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @btf_raw_create(i32*, i32, i32, i32, i32*, i8**) #1

declare dso_local %struct.btf* @btf__new(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @CHECK(i32, i8*, ...) #1

declare dso_local i32 @IS_ERR(%struct.btf*) #1

declare dso_local i32 @PTR_ERR(%struct.btf*) #1

declare dso_local i32 @btf__dedup(%struct.btf*, i32*, i32*) #1

declare dso_local i8* @btf__get_raw_data(%struct.btf*, i32*) #1

declare dso_local i32 @dump_btf_strings(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @btf__get_nr_types(%struct.btf*) #1

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @btf_type_size(%struct.btf_type*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @btf__free(%struct.btf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
