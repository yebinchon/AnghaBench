; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_reuseport_array.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_reuseport_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@__const.test_reuseport_array.grpa_fds64 = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@BPF_MAP_TYPE_REUSEPORT_SOCKARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reuseport array create\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"map_fd:%d, errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"reuseport array del >=max_entries\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"err:%d errno:%d\0A\00", align 1
@BPF_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"reuseport array update >=max_entries\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"reuseport array lookup not-exist elem\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"reuseport array del not-exist elem\00", align 1
@BPF_EXIST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"reuseport array update empty elem BPF_EXIST\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"sock_type:%d err:%d errno:%d\0A\00", align 1
@BPF_NOEXIST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"reuseport array update empty elem BPF_NOEXIST\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"reuseport array update same elem BPF_EXIST\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"reuseport array update non-empty elem BPF_NOEXIST\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"reuseport array update same sk with BPF_ANY\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"reuseport array update same sk with same index\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"reuseport array update same sk with different index\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"reuseport array delete sk\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"reuseport array re-add with BPF_NOEXIST after del\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"reuseport array lookup re-added sk\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"sock_type:%d err:%d errno:%d sk_cookie:0x%llx map_cookie:0x%llxn\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"reuseport array lookup after close()\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"socket(SOCK_RAW)\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"reuseport array update SOCK_RAW\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"reuseport array update 32 bit fd\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"reuseport array lookup 32 bit fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reuseport_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reuseport_array() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 4, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 3, i64* %3, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %23 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %25, i32* %24, align 4
  %26 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast ([2 x i32]* @__const.test_reuseport_array.grpa_fds64 to i8*), i64 8, i1 false)
  store i32 -1, i32* %10, align 4
  store i64 4, i64* %11, align 8
  store i64 0, i64* %16, align 8
  %27 = load i32, i32* @BPF_MAP_TYPE_REUSEPORT_SOCKARRAY, align 4
  %28 = call i32 @bpf_create_map(i32 %27, i32 8, i32 8, i64 4, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @bpf_map_delete_elem(i32 %35, i64* %11)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %0
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @E2BIG, align 4
  %42 = icmp ne i32 %40, %41
  br label %43

43:                                               ; preds = %39, %0
  %44 = phi i1 [ true, %0 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @BPF_ANY, align 4
  %51 = call i32 @bpf_map_update_elem(i32 %49, i64* %11, i32* %10, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* @E2BIG, align 4
  %57 = icmp ne i32 %55, %56
  br label %58

58:                                               ; preds = %54, %43
  %59 = phi i1 [ true, %43 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @bpf_map_lookup_elem(i32 %64, i64* %11, i64* %8)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = icmp ne i32 %69, %70
  br label %72

72:                                               ; preds = %68, %58
  %73 = phi i1 [ true, %58 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @bpf_map_lookup_elem(i32 %78, i64* %3, i64* %8)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @errno, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = icmp ne i32 %83, %84
  br label %86

86:                                               ; preds = %82, %72
  %87 = phi i1 [ true, %72 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @bpf_map_delete_elem(i32 %92, i64* %3)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %100, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = icmp ne i32 %97, %98
  br label %100

100:                                              ; preds = %96, %86
  %101 = phi i1 [ true, %86 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %351, %100
  %107 = load i32, i32* %14, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %109 = call i32 @ARRAY_SIZE(i32* %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %354

111:                                              ; preds = %106
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %12, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %119 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %121 = call i32 @ARRAY_SIZE(i32* %120)
  %122 = call i32 @prepare_reuseport_grp(i32 %116, i32 %117, i32 8, i32* %118, i64* %119, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i64, i64* %16, align 8
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %124
  %126 = load i32, i32* @BPF_EXIST, align 4
  %127 = call i32 @bpf_map_update_elem(i32 %123, i64* %3, i32* %125, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %134, label %130

130:                                              ; preds = %111
  %131 = load i32, i32* @errno, align 4
  %132 = load i32, i32* @ENOENT, align 4
  %133 = icmp ne i32 %131, %132
  br label %134

134:                                              ; preds = %130, %111
  %135 = phi i1 [ true, %111 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @errno, align 4
  %140 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i64, i64* %16, align 8
  br label %151

145:                                              ; preds = %134
  %146 = load i64, i64* %16, align 8
  %147 = icmp ne i64 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = sext i32 %149 to i64
  br label %151

151:                                              ; preds = %145, %143
  %152 = phi i64 [ %144, %143 ], [ %150, %145 ]
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  store i64 %153, i64* %16, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i64, i64* %16, align 8
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %155
  %157 = load i32, i32* @BPF_NOEXIST, align 4
  %158 = call i32 @bpf_map_update_elem(i32 %154, i64* %3, i32* %156, i32 %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %159, -1
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %161, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %151
  %169 = load i64, i64* %16, align 8
  br label %176

170:                                              ; preds = %151
  %171 = load i64, i64* %16, align 8
  %172 = icmp ne i64 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = sext i32 %174 to i64
  br label %176

176:                                              ; preds = %170, %168
  %177 = phi i64 [ %169, %168 ], [ %175, %170 ]
  store i64 %177, i64* %19, align 8
  %178 = load i64, i64* %19, align 8
  store i64 %178, i64* %16, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i64, i64* %16, align 8
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %180
  %182 = load i32, i32* @BPF_EXIST, align 4
  %183 = call i32 @bpf_map_update_elem(i32 %179, i64* %3, i32* %181, i32 %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %184, -1
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* @errno, align 4
  %190 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %186, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %176
  %194 = load i64, i64* %16, align 8
  br label %201

195:                                              ; preds = %176
  %196 = load i64, i64* %16, align 8
  %197 = icmp ne i64 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = sext i32 %199 to i64
  br label %201

201:                                              ; preds = %195, %193
  %202 = phi i64 [ %194, %193 ], [ %200, %195 ]
  store i64 %202, i64* %20, align 8
  %203 = load i64, i64* %20, align 8
  store i64 %203, i64* %16, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load i64, i64* %16, align 8
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %205
  %207 = load i32, i32* @BPF_NOEXIST, align 4
  %208 = call i32 @bpf_map_update_elem(i32 %204, i64* %3, i32* %206, i32 %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, -1
  br i1 %210, label %215, label %211

211:                                              ; preds = %201
  %212 = load i32, i32* @errno, align 4
  %213 = load i32, i32* @EEXIST, align 4
  %214 = icmp ne i32 %212, %213
  br label %215

215:                                              ; preds = %211, %201
  %216 = phi i1 [ true, %201 ], [ %214, %211 ]
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* @errno, align 4
  %221 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %217, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = load i64, i64* %16, align 8
  br label %232

226:                                              ; preds = %215
  %227 = load i64, i64* %16, align 8
  %228 = icmp ne i64 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = sext i32 %230 to i64
  br label %232

232:                                              ; preds = %226, %224
  %233 = phi i64 [ %225, %224 ], [ %231, %226 ]
  store i64 %233, i64* %21, align 8
  %234 = load i64, i64* %21, align 8
  store i64 %234, i64* %16, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i64, i64* %16, align 8
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %236
  %238 = load i32, i32* @BPF_ANY, align 4
  %239 = call i32 @bpf_map_update_elem(i32 %235, i64* %3, i32* %237, i32 %238)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %240, -1
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* @errno, align 4
  %246 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %242, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %243, i32 %244, i32 %245)
  %247 = load i64, i64* %16, align 8
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %10, align 4
  %250 = load i64, i64* %16, align 8
  %251 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 %250
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %7, align 8
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @BPF_ANY, align 4
  %255 = call i32 @bpf_map_update_elem(i32 %253, i64* %3, i32* %10, i32 %254)
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %262, label %258

258:                                              ; preds = %232
  %259 = load i32, i32* @errno, align 4
  %260 = load i32, i32* @EBUSY, align 4
  %261 = icmp ne i32 %259, %260
  br label %262

262:                                              ; preds = %258, %232
  %263 = phi i1 [ true, %232 ], [ %261, %258 ]
  %264 = zext i1 %263 to i32
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* @errno, align 4
  %268 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %264, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @BPF_ANY, align 4
  %271 = call i32 @bpf_map_update_elem(i32 %269, i64* %2, i32* %10, i32 %270)
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %272, -1
  br i1 %273, label %278, label %274

274:                                              ; preds = %262
  %275 = load i32, i32* @errno, align 4
  %276 = load i32, i32* @EBUSY, align 4
  %277 = icmp ne i32 %275, %276
  br label %278

278:                                              ; preds = %274, %262
  %279 = phi i1 [ true, %262 ], [ %277, %274 ]
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @errno, align 4
  %284 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %280, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @bpf_map_delete_elem(i32 %285, i64* %3)
  store i32 %286, i32* %13, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp eq i32 %287, -1
  %289 = zext i1 %288 to i32
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* @errno, align 4
  %293 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %289, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* @BPF_NOEXIST, align 4
  %296 = call i32 @bpf_map_update_elem(i32 %294, i64* %3, i32* %10, i32 %295)
  store i32 %296, i32* %13, align 4
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %297, -1
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %5, align 4
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* @errno, align 4
  %303 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %299, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %300, i32 %301, i32 %302)
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @bpf_map_lookup_elem(i32 %304, i64* %3, i64* %8)
  store i32 %305, i32* %13, align 4
  %306 = load i32, i32* %13, align 4
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %312, label %308

308:                                              ; preds = %278
  %309 = load i64, i64* %7, align 8
  %310 = load i64, i64* %8, align 8
  %311 = icmp ne i64 %309, %310
  br label %312

312:                                              ; preds = %308, %278
  %313 = phi i1 [ true, %278 ], [ %311, %308 ]
  %314 = zext i1 %313 to i32
  %315 = load i32, i32* %5, align 4
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* @errno, align 4
  %318 = load i64, i64* %7, align 8
  %319 = load i64, i64* %8, align 8
  %320 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %314, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i32 %315, i32 %316, i32 %317, i64 %318, i64 %319)
  store i32 0, i32* %15, align 4
  br label %321

321:                                              ; preds = %332, %312
  %322 = load i32, i32* %15, align 4
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %324 = call i32 @ARRAY_SIZE(i32* %323)
  %325 = icmp slt i32 %322, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %321
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @close(i32 %330)
  br label %332

332:                                              ; preds = %326
  %333 = load i32, i32* %15, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %15, align 4
  br label %321

335:                                              ; preds = %321
  %336 = load i32, i32* %12, align 4
  %337 = call i32 @bpf_map_lookup_elem(i32 %336, i64* %3, i64* %8)
  store i32 %337, i32* %13, align 4
  %338 = load i32, i32* %13, align 4
  %339 = icmp ne i32 %338, -1
  br i1 %339, label %344, label %340

340:                                              ; preds = %335
  %341 = load i32, i32* @errno, align 4
  %342 = load i32, i32* @ENOENT, align 4
  %343 = icmp ne i32 %341, %342
  br label %344

344:                                              ; preds = %340, %335
  %345 = phi i1 [ true, %335 ], [ %343, %340 ]
  %346 = zext i1 %345 to i32
  %347 = load i32, i32* %5, align 4
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* @errno, align 4
  %350 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %346, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %347, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %344
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %14, align 4
  br label %106

354:                                              ; preds = %106
  %355 = load i32, i32* @AF_INET6, align 4
  %356 = load i32, i32* @SOCK_RAW, align 4
  %357 = load i32, i32* @IPPROTO_UDP, align 4
  %358 = call i32 @socket(i32 %355, i32 %356, i32 %357)
  store i32 %358, i32* %10, align 4
  %359 = load i32, i32* %10, align 4
  %360 = icmp eq i32 %359, -1
  %361 = zext i1 %360 to i32
  %362 = load i32, i32* %13, align 4
  %363 = load i32, i32* @errno, align 4
  %364 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %361, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %362, i32 %363)
  %365 = load i32, i32* %12, align 4
  %366 = load i32, i32* @BPF_NOEXIST, align 4
  %367 = call i32 @bpf_map_update_elem(i32 %365, i64* %3, i32* %10, i32 %366)
  store i32 %367, i32* %13, align 4
  %368 = load i32, i32* %13, align 4
  %369 = icmp ne i32 %368, -1
  br i1 %369, label %374, label %370

370:                                              ; preds = %354
  %371 = load i32, i32* @errno, align 4
  %372 = load i32, i32* @ENOTSUPP, align 4
  %373 = icmp ne i32 %371, %372
  br label %374

374:                                              ; preds = %370, %354
  %375 = phi i1 [ true, %354 ], [ %373, %370 ]
  %376 = zext i1 %375 to i32
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* @errno, align 4
  %379 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %376, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %377, i32 %378)
  %380 = load i32, i32* %10, align 4
  %381 = call i32 @close(i32 %380)
  %382 = load i32, i32* %12, align 4
  %383 = call i32 @close(i32 %382)
  %384 = load i32, i32* @BPF_MAP_TYPE_REUSEPORT_SOCKARRAY, align 4
  %385 = call i32 @bpf_create_map(i32 %384, i32 8, i32 8, i64 4, i32 0)
  store i32 %385, i32* %12, align 4
  %386 = load i32, i32* %12, align 4
  %387 = icmp eq i32 %386, -1
  %388 = zext i1 %387 to i32
  %389 = load i32, i32* %12, align 4
  %390 = load i32, i32* @errno, align 4
  %391 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %388, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %389, i32 %390)
  %392 = load i32, i32* @SOCK_STREAM, align 4
  %393 = load i32, i32* %12, align 4
  %394 = call i32 @prepare_reuseport_grp(i32 %392, i32 %393, i32 8, i32* %10, i64* %7, i32 1)
  %395 = load i32, i32* %10, align 4
  store i32 %395, i32* %17, align 4
  %396 = load i32, i32* %12, align 4
  %397 = load i32, i32* @BPF_NOEXIST, align 4
  %398 = call i32 @bpf_map_update_elem(i32 %396, i64* %3, i32* %17, i32 %397)
  store i32 %398, i32* %13, align 4
  %399 = load i32, i32* %13, align 4
  %400 = icmp eq i32 %399, -1
  %401 = zext i1 %400 to i32
  %402 = load i32, i32* %13, align 4
  %403 = load i32, i32* @errno, align 4
  %404 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %401, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %402, i32 %403)
  %405 = load i32, i32* %12, align 4
  %406 = call i32 @bpf_map_lookup_elem(i32 %405, i64* %3, i64* %8)
  store i32 %406, i32* %13, align 4
  %407 = load i32, i32* %13, align 4
  %408 = icmp ne i32 %407, -1
  br i1 %408, label %413, label %409

409:                                              ; preds = %374
  %410 = load i32, i32* @errno, align 4
  %411 = load i32, i32* @ENOSPC, align 4
  %412 = icmp ne i32 %410, %411
  br label %413

413:                                              ; preds = %409, %374
  %414 = phi i1 [ true, %374 ], [ %412, %409 ]
  %415 = zext i1 %414 to i32
  %416 = load i32, i32* %13, align 4
  %417 = load i32, i32* @errno, align 4
  %418 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %415, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %416, i32 %417)
  %419 = load i32, i32* %17, align 4
  %420 = call i32 @close(i32 %419)
  %421 = load i32, i32* %12, align 4
  %422 = call i32 @close(i32 %421)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_create_map(i32, i32, i32, i64, i32) #2

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32, ...) #2

declare dso_local i32 @bpf_map_delete_elem(i32, i64*) #2

declare dso_local i32 @bpf_map_update_elem(i32, i64*, i32*, i32) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i64*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @prepare_reuseport_grp(i32, i32, i32, i32*, i64*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
