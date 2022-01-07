; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_ipaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lpm_trie_key = type { i32, i32 }

@BPF_MAP_TYPE_LPM_TRIE = common dso_local global i32 0, align 4
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"192.168.0.0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"192.168.128.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"192.168.1.0\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"2a00:1450:4001:814::200e\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"192.168.128.23\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"192.168.0.1\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"2a00:1450:4001:814::\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"2a00:1450:4001:814::1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"10.0.0.1\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"11.11.11.11\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"2a00:ffff::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_lpm_ipaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lpm_ipaddr() #0 {
  %1 = alloca %struct.bpf_lpm_trie_key*, align 8
  %2 = alloca %struct.bpf_lpm_trie_key*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 12, i64* %3, align 8
  store i64 24, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.bpf_lpm_trie_key* @alloca(i64 %8)
  store %struct.bpf_lpm_trie_key* %9, %struct.bpf_lpm_trie_key** %1, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.bpf_lpm_trie_key* @alloca(i64 %10)
  store %struct.bpf_lpm_trie_key* %11, %struct.bpf_lpm_trie_key** %2, align 8
  %12 = load i32, i32* @BPF_MAP_TYPE_LPM_TRIE, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %15 = call i32 @bpf_create_map(i32 %12, i64 %13, i32 4, i32 100, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @BPF_MAP_TYPE_LPM_TRIE, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %23 = call i32 @bpf_create_map(i32 %20, i64 %21, i32 4, i32 100, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 1, i32* %7, align 4
  %28 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %29 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %28, i32 0, i32 0
  store i32 16, i32* %29, align 4
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %32 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @inet_pton(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %37 = call i64 @bpf_map_update_elem(i32 %35, %struct.bpf_lpm_trie_key* %36, i32* %7, i32 0)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  store i32 2, i32* %7, align 4
  %41 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %42 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %41, i32 0, i32 0
  store i32 24, i32* %42, align 4
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %45 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @inet_pton(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %50 = call i64 @bpf_map_update_elem(i32 %48, %struct.bpf_lpm_trie_key* %49, i32* %7, i32 0)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 3, i32* %7, align 4
  %54 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %55 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %54, i32 0, i32 0
  store i32 24, i32* %55, align 4
  %56 = load i32, i32* @AF_INET, align 4
  %57 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %58 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @inet_pton(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %63 = call i64 @bpf_map_update_elem(i32 %61, %struct.bpf_lpm_trie_key* %62, i32* %7, i32 0)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  store i32 5, i32* %7, align 4
  %67 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %68 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %67, i32 0, i32 0
  store i32 24, i32* %68, align 4
  %69 = load i32, i32* @AF_INET, align 4
  %70 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %71 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @inet_pton(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %76 = call i64 @bpf_map_update_elem(i32 %74, %struct.bpf_lpm_trie_key* %75, i32* %7, i32 0)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  store i32 4, i32* %7, align 4
  %80 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %81 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %80, i32 0, i32 0
  store i32 23, i32* %81, align 4
  %82 = load i32, i32* @AF_INET, align 4
  %83 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %84 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @inet_pton(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %89 = call i64 @bpf_map_update_elem(i32 %87, %struct.bpf_lpm_trie_key* %88, i32* %7, i32 0)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  store i32 -559038737, i32* %7, align 4
  %93 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %94 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %93, i32 0, i32 0
  store i32 64, i32* %94, align 4
  %95 = load i32, i32* @AF_INET6, align 4
  %96 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %97 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @inet_pton(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %102 = call i64 @bpf_map_update_elem(i32 %100, %struct.bpf_lpm_trie_key* %101, i32* %7, i32 0)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %107 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %106, i32 0, i32 0
  store i32 32, i32* %107, align 4
  %108 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %109 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %108, i32 0, i32 0
  store i32 128, i32* %109, align 4
  %110 = load i32, i32* @AF_INET, align 4
  %111 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %112 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @inet_pton(i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %117 = call i32 @bpf_map_lookup_elem(i32 %115, %struct.bpf_lpm_trie_key* %116, i32* %7)
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 3
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* @AF_INET, align 4
  %126 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %127 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @inet_pton(i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %132 = call i32 @bpf_map_lookup_elem(i32 %130, %struct.bpf_lpm_trie_key* %131, i32* %7)
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32, i32* @AF_INET6, align 4
  %141 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %142 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @inet_pton(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %147 = call i32 @bpf_map_lookup_elem(i32 %145, %struct.bpf_lpm_trie_key* %146, i32* %7)
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %151, -559038737
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* @AF_INET6, align 4
  %156 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %157 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @inet_pton(i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %162 = call i32 @bpf_map_lookup_elem(i32 %160, %struct.bpf_lpm_trie_key* %161, i32* %7)
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, -559038737
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32, i32* @AF_INET, align 4
  %171 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %172 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @inet_pton(i32 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %177 = call i32 @bpf_map_lookup_elem(i32 %175, %struct.bpf_lpm_trie_key* %176, i32* %7)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %183

179:                                              ; preds = %0
  %180 = load i64, i64* @errno, align 8
  %181 = load i64, i64* @ENOENT, align 8
  %182 = icmp eq i64 %180, %181
  br label %183

183:                                              ; preds = %179, %0
  %184 = phi i1 [ false, %0 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* @AF_INET, align 4
  %188 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %189 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @inet_pton(i32 %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %194 = call i32 @bpf_map_lookup_elem(i32 %192, %struct.bpf_lpm_trie_key* %193, i32* %7)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %200

196:                                              ; preds = %183
  %197 = load i64, i64* @errno, align 8
  %198 = load i64, i64* @ENOENT, align 8
  %199 = icmp eq i64 %197, %198
  br label %200

200:                                              ; preds = %196, %183
  %201 = phi i1 [ false, %183 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load i32, i32* @AF_INET6, align 4
  %205 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %206 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @inet_pton(i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %211 = call i32 @bpf_map_lookup_elem(i32 %209, %struct.bpf_lpm_trie_key* %210, i32* %7)
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %217

213:                                              ; preds = %200
  %214 = load i64, i64* @errno, align 8
  %215 = load i64, i64* @ENOENT, align 8
  %216 = icmp eq i64 %214, %215
  br label %217

217:                                              ; preds = %213, %200
  %218 = phi i1 [ false, %200 ], [ %216, %213 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @close(i32 %221)
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @close(i32 %223)
  ret void
}

declare dso_local %struct.bpf_lpm_trie_key* @alloca(i64) #1

declare dso_local i32 @bpf_create_map(i32, i64, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32) #1

declare dso_local i64 @bpf_map_update_elem(i32, %struct.bpf_lpm_trie_key*, i32*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, %struct.bpf_lpm_trie_key*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
