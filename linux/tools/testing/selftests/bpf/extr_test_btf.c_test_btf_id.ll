; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_test_btf_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_test_btf_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_get_info_test = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_create_map_attr = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.bpf_map_info = type { i32, i64, i64, i32, i32, i32 }
%struct.bpf_btf_info = type { i32, i64, i64, i32, i32, i32 }

@get_info_tests = common dso_local global %struct.btf_get_info_test* null, align 8
@__const.test_btf_id.btf_fd = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@hdr_tmpl = common dso_local global i32 0, align 4
@btf_log_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"!user_btf[%d]\00", align 1
@BTF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"err:%d errno:%d id0:%u id1:%u btf_size0:%u btf_size1:%u memcmp:%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"test_btf_id\00", align 1
@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"err:%d errno:%d info.id:%u btf_id:%u btf_key_type_id:%u btf_value_type_id:%u\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"BTF lingers\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_btf_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_btf_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_get_info_test*, align 8
  %5 = alloca %struct.bpf_create_map_attr, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_map_info, align 8
  %11 = alloca [2 x %struct.bpf_btf_info], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %17 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** @get_info_tests, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sub i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %17, i64 %20
  store %struct.btf_get_info_test* %21, %struct.btf_get_info_test** %4, align 8
  %22 = bitcast %struct.bpf_create_map_attr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  store i32* null, i32** %6, align 8
  %23 = bitcast [2 x i32*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 16, i1 false)
  %24 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast ([2 x i32]* @__const.test_btf_id.btf_fd to i8*), i64 8, i1 false)
  store i32 -1, i32* %9, align 4
  %25 = bitcast %struct.bpf_map_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  %26 = bitcast [2 x %struct.bpf_btf_info]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 80, i1 false)
  %27 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %28 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %31 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %34 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @btf_raw_create(i32* @hdr_tmpl, i32 %29, i32 %32, i32 %35, i32* %12, i32* null)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %333

40:                                               ; preds = %1
  %41 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %41, align 1
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %77, %40
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = call i32* @malloc(i32 %46)
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 %49
  store i32* %47, i32** %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %15, align 4
  %59 = call i64 (i32, i8*, ...) @CHECK(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 -1, i32* %14, align 4
  br label %283

62:                                               ; preds = %45
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ptr_to_u64(i32* %66)
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %70, i32 0, i32 5
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %42

80:                                               ; preds = %42
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i8*, i8** @btf_log_buf, align 8
  %84 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %86 = call i32 @bpf_load_btf(i32* %81, i32 %82, i8* %83, i32 %84, i64 %85)
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, -1
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @errno, align 4
  %93 = call i64 (i32, i8*, ...) @CHECK(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  store i32 -1, i32* %14, align 4
  br label %283

96:                                               ; preds = %80
  store i32 40, i32* %13, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %100 = bitcast %struct.bpf_btf_info* %99 to %struct.bpf_map_info*
  %101 = call i32 @bpf_obj_get_info_by_fd(i32 %98, %struct.bpf_map_info* %100, i32* %13)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @errno, align 4
  %104 = call i64 (i32, i8*, ...) @CHECK(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 -1, i32* %14, align 4
  br label %283

107:                                              ; preds = %96
  %108 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %109 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @bpf_btf_get_fd_by_id(i64 %110)
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, -1
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* @errno, align 4
  %118 = call i64 (i32, i8*, ...) @CHECK(i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  store i32 -1, i32* %14, align 4
  br label %283

121:                                              ; preds = %107
  store i32 0, i32* %16, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 1
  %125 = bitcast %struct.bpf_btf_info* %124 to %struct.bpf_map_info*
  %126 = call i32 @bpf_obj_get_info_by_fd(i32 %123, %struct.bpf_map_info* %125, i32* %13)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %131 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 1
  %134 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %155, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %139 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 16
  %141 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 1
  %142 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %155, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %147 = load i32*, i32** %146, align 16
  %148 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %151 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 16
  %153 = call i32 @memcmp(i32* %147, i32* %149, i32 %152)
  store i32 %153, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br label %155

155:                                              ; preds = %145, %137, %129, %121
  %156 = phi i1 [ true, %137 ], [ true, %129 ], [ true, %121 ], [ %154, %145 ]
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @errno, align 4
  %160 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %161 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 1
  %164 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %167 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 16
  %169 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 1
  %170 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i64 (i32, i8*, ...) @CHECK(i32 %157, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %159, i64 %162, i64 %165, i32 %168, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %155
  store i32 -1, i32* %14, align 4
  br label %283

176:                                              ; preds = %155
  %177 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %177, align 8
  %178 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %179 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 7
  store i32 %178, i32* %179, align 8
  %180 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 1
  store i32 4, i32* %180, align 8
  %181 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 2
  store i32 4, i32* %181, align 4
  %182 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 3
  store i32 4, i32* %182, align 8
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 4
  store i32 %184, i32* %185, align 4
  %186 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 5
  store i32 1, i32* %186, align 8
  %187 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 6
  store i32 2, i32* %187, align 4
  %188 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %5)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp eq i32 %189, -1
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* @errno, align 4
  %193 = call i64 (i32, i8*, ...) @CHECK(i32 %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %176
  store i32 -1, i32* %14, align 4
  br label %283

196:                                              ; preds = %176
  store i32 40, i32* %13, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @bpf_obj_get_info_by_fd(i32 %197, %struct.bpf_map_info* %10, i32* %13)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %205 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %203, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 2
  br label %216

216:                                              ; preds = %212, %208, %201, %196
  %217 = phi i1 [ true, %208 ], [ true, %201 ], [ true, %196 ], [ %215, %212 ]
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @errno, align 4
  %221 = getelementptr inbounds [2 x %struct.bpf_btf_info], [2 x %struct.bpf_btf_info]* %11, i64 0, i64 0
  %222 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i64 (i32, i8*, ...) @CHECK(i32 %218, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %219, i32 %220, i64 %223, i64 %225, i32 %227, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %216
  store i32 -1, i32* %14, align 4
  br label %283

233:                                              ; preds = %216
  store i32 0, i32* %15, align 4
  br label %234

234:                                              ; preds = %246, %233
  %235 = load i32, i32* %15, align 4
  %236 = icmp slt i32 %235, 2
  br i1 %236, label %237, label %249

237:                                              ; preds = %234
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @close(i32 %241)
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %244
  store i32 -1, i32* %245, align 4
  br label %246

246:                                              ; preds = %237
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %234

249:                                              ; preds = %234
  %250 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @bpf_btf_get_fd_by_id(i64 %251)
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %252, i32* %253, align 4
  %254 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, -1
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* @errno, align 4
  %259 = call i64 (i32, i8*, ...) @CHECK(i32 %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %249
  store i32 -1, i32* %14, align 4
  br label %283

262:                                              ; preds = %249
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @close(i32 %264)
  %266 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -1, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @close(i32 %267)
  store i32 -1, i32* %9, align 4
  %269 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @bpf_btf_get_fd_by_id(i64 %270)
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, -1
  %276 = zext i1 %275 to i32
  %277 = call i64 (i32, i8*, ...) @CHECK(i32 %276, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %262
  store i32 -1, i32* %14, align 4
  br label %283

280:                                              ; preds = %262
  %281 = load i32, i32* @stderr, align 4
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %281, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %279, %261, %232, %195, %175, %120, %106, %95, %61
  %284 = load i8*, i8** @btf_log_buf, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %283
  %289 = load i32, i32* %14, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291, %288
  %295 = load i32, i32* @stderr, align 4
  %296 = load i8*, i8** @btf_log_buf, align 8
  %297 = call i32 (i32, i8*, ...) @fprintf(i32 %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %296)
  br label %298

298:                                              ; preds = %294, %291, %283
  %299 = load i32*, i32** %6, align 8
  %300 = call i32 @free(i32* %299)
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, -1
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @close(i32 %304)
  br label %306

306:                                              ; preds = %303, %298
  store i32 0, i32* %15, align 4
  br label %307

307:                                              ; preds = %328, %306
  %308 = load i32, i32* %15, align 4
  %309 = icmp slt i32 %308, 2
  br i1 %309, label %310, label %331

310:                                              ; preds = %307
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = call i32 @free(i32* %314)
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, -1
  br i1 %320, label %321, label %327

321:                                              ; preds = %310
  %322 = load i32, i32* %15, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @close(i32 %325)
  br label %327

327:                                              ; preds = %321, %310
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %15, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %15, align 4
  br label %307

331:                                              ; preds = %307
  %332 = load i32, i32* %14, align 4
  store i32 %332, i32* %2, align 4
  br label %333

333:                                              ; preds = %331, %39
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @btf_raw_create(i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i64 @CHECK(i32, i8*, ...) #2

declare dso_local i32 @ptr_to_u64(i32*) #2

declare dso_local i32 @bpf_load_btf(i32*, i32, i8*, i32, i64) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_map_info*, i32*) #2

declare dso_local i32 @bpf_btf_get_fd_by_id(i64) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
