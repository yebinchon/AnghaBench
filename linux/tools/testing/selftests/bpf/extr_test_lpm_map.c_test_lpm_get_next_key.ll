; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_get_next_key.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lpm_trie_key = type { i32, i32* }

@BPF_MAP_TYPE_LPM_TRIE = common dso_local global i32 0, align 4
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"192.168.0.0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"192.168.128.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"192.168.1.0\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"192.168.1.128\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_lpm_get_next_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lpm_get_next_key() #0 {
  %1 = alloca %struct.bpf_lpm_trie_key*, align 8
  %2 = alloca %struct.bpf_lpm_trie_key*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i64 20, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.bpf_lpm_trie_key* @alloca(i64 %6)
  store %struct.bpf_lpm_trie_key* %7, %struct.bpf_lpm_trie_key** %1, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.bpf_lpm_trie_key* @alloca(i64 %8)
  store %struct.bpf_lpm_trie_key* %9, %struct.bpf_lpm_trie_key** %2, align 8
  %10 = load i32, i32* @BPF_MAP_TYPE_LPM_TRIE, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %13 = call i32 @bpf_create_map(i32 %10, i64 %11, i32 4, i32 100, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %20 = call i32 @bpf_map_get_next_key(i32 %18, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %0
  %27 = phi i1 [ false, %0 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %31 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %30, i32 0, i32 0
  store i32 16, i32* %31, align 8
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %34 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @inet_pton(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %39 = call i64 @bpf_map_update_elem(i32 %37, %struct.bpf_lpm_trie_key* %38, i32* %4, i32 0)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @memset(%struct.bpf_lpm_trie_key* %43, i32 0, i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %48 = call i32 @bpf_map_get_next_key(i32 %46, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %47)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %53 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %70

56:                                               ; preds = %26
  %57 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %58 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 192
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %65 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 168
  br label %70

70:                                               ; preds = %63, %56, %26
  %71 = phi i1 [ false, %56 ], [ false, %26 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %76 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %77 = call i32 @bpf_map_get_next_key(i32 %74, %struct.bpf_lpm_trie_key* %75, %struct.bpf_lpm_trie_key* %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @ENOENT, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %70
  %84 = phi i1 [ false, %70 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %88 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %87, i32 0, i32 0
  store i32 8, i32* %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %91 = call i32 @bpf_map_get_next_key(i32 %89, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %90)
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %96 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %113

99:                                               ; preds = %83
  %100 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %101 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 192
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %108 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 168
  br label %113

113:                                              ; preds = %106, %99, %83
  %114 = phi i1 [ false, %99 ], [ false, %83 ], [ %112, %106 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %118 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %117, i32 0, i32 0
  store i32 24, i32* %118, align 8
  %119 = load i32, i32* @AF_INET, align 4
  %120 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %121 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @inet_pton(i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %122)
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %126 = call i64 @bpf_map_update_elem(i32 %124, %struct.bpf_lpm_trie_key* %125, i32* %4, i32 0)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %131 = load i64, i64* %3, align 8
  %132 = call i32 @memset(%struct.bpf_lpm_trie_key* %130, i32 0, i64 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %135 = call i32 @bpf_map_get_next_key(i32 %133, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %134)
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %140 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 24
  br i1 %142, label %143, label %164

143:                                              ; preds = %113
  %144 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %145 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 192
  br i1 %149, label %150, label %164

150:                                              ; preds = %143
  %151 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %152 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 168
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %159 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 128
  br label %164

164:                                              ; preds = %157, %150, %143, %113
  %165 = phi i1 [ false, %150 ], [ false, %143 ], [ false, %113 ], [ %163, %157 ]
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %169 = load i64, i64* %3, align 8
  %170 = call i32 @memset(%struct.bpf_lpm_trie_key* %168, i32 0, i64 %169)
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %173 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %174 = call i32 @bpf_map_get_next_key(i32 %171, %struct.bpf_lpm_trie_key* %172, %struct.bpf_lpm_trie_key* %173)
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %179 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 16
  br i1 %181, label %182, label %196

182:                                              ; preds = %164
  %183 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %184 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 192
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %191 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 168
  br label %196

196:                                              ; preds = %189, %182, %164
  %197 = phi i1 [ false, %182 ], [ false, %164 ], [ %195, %189 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %201 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %202 = load i64, i64* %3, align 8
  %203 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %200, %struct.bpf_lpm_trie_key* %201, i64 %202)
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %206 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %207 = call i32 @bpf_map_get_next_key(i32 %204, %struct.bpf_lpm_trie_key* %205, %struct.bpf_lpm_trie_key* %206)
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %213

209:                                              ; preds = %196
  %210 = load i64, i64* @errno, align 8
  %211 = load i64, i64* @ENOENT, align 8
  %212 = icmp eq i64 %210, %211
  br label %213

213:                                              ; preds = %209, %196
  %214 = phi i1 [ false, %196 ], [ %212, %209 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %218 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %217, i32 0, i32 0
  store i32 24, i32* %218, align 8
  %219 = load i32, i32* @AF_INET, align 4
  %220 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %221 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @inet_pton(i32 %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %222)
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %226 = call i64 @bpf_map_update_elem(i32 %224, %struct.bpf_lpm_trie_key* %225, i32* %4, i32 0)
  %227 = icmp eq i64 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %231 = load i64, i64* %3, align 8
  %232 = call i32 @memset(%struct.bpf_lpm_trie_key* %230, i32 0, i64 %231)
  %233 = load i32, i32* %5, align 4
  %234 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %235 = call i32 @bpf_map_get_next_key(i32 %233, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %234)
  %236 = icmp eq i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %240 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 24
  br i1 %242, label %243, label %264

243:                                              ; preds = %213
  %244 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %245 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 192
  br i1 %249, label %250, label %264

250:                                              ; preds = %243
  %251 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %252 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 168
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %259 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 0
  br label %264

264:                                              ; preds = %257, %250, %243, %213
  %265 = phi i1 [ false, %250 ], [ false, %243 ], [ false, %213 ], [ %263, %257 ]
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %269 = load i64, i64* %3, align 8
  %270 = call i32 @memset(%struct.bpf_lpm_trie_key* %268, i32 0, i64 %269)
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %273 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %274 = call i32 @bpf_map_get_next_key(i32 %271, %struct.bpf_lpm_trie_key* %272, %struct.bpf_lpm_trie_key* %273)
  %275 = icmp eq i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %279 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 24
  br i1 %281, label %282, label %303

282:                                              ; preds = %264
  %283 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %284 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 192
  br i1 %288, label %289, label %303

289:                                              ; preds = %282
  %290 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %291 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 168
  br i1 %295, label %296, label %303

296:                                              ; preds = %289
  %297 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %298 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 128
  br label %303

303:                                              ; preds = %296, %289, %282, %264
  %304 = phi i1 [ false, %289 ], [ false, %282 ], [ false, %264 ], [ %302, %296 ]
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %308 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %309 = load i64, i64* %3, align 8
  %310 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %307, %struct.bpf_lpm_trie_key* %308, i64 %309)
  %311 = load i32, i32* %5, align 4
  %312 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %313 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %314 = call i32 @bpf_map_get_next_key(i32 %311, %struct.bpf_lpm_trie_key* %312, %struct.bpf_lpm_trie_key* %313)
  %315 = icmp eq i32 %314, 0
  %316 = zext i1 %315 to i32
  %317 = call i32 @assert(i32 %316)
  %318 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %319 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 16
  br i1 %321, label %322, label %336

322:                                              ; preds = %303
  %323 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %324 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 192
  br i1 %328, label %329, label %336

329:                                              ; preds = %322
  %330 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %331 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 168
  br label %336

336:                                              ; preds = %329, %322, %303
  %337 = phi i1 [ false, %322 ], [ false, %303 ], [ %335, %329 ]
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %341 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %342 = load i64, i64* %3, align 8
  %343 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %340, %struct.bpf_lpm_trie_key* %341, i64 %342)
  %344 = load i32, i32* %5, align 4
  %345 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %346 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %347 = call i32 @bpf_map_get_next_key(i32 %344, %struct.bpf_lpm_trie_key* %345, %struct.bpf_lpm_trie_key* %346)
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %353

349:                                              ; preds = %336
  %350 = load i64, i64* @errno, align 8
  %351 = load i64, i64* @ENOENT, align 8
  %352 = icmp eq i64 %350, %351
  br label %353

353:                                              ; preds = %349, %336
  %354 = phi i1 [ false, %336 ], [ %352, %349 ]
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  %357 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %358 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %357, i32 0, i32 0
  store i32 24, i32* %358, align 8
  %359 = load i32, i32* @AF_INET, align 4
  %360 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %361 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @inet_pton(i32 %359, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %362)
  %364 = load i32, i32* %5, align 4
  %365 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %366 = call i64 @bpf_map_update_elem(i32 %364, %struct.bpf_lpm_trie_key* %365, i32* %4, i32 0)
  %367 = icmp eq i64 %366, 0
  %368 = zext i1 %367 to i32
  %369 = call i32 @assert(i32 %368)
  %370 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %371 = load i64, i64* %3, align 8
  %372 = call i32 @memset(%struct.bpf_lpm_trie_key* %370, i32 0, i64 %371)
  %373 = load i32, i32* %5, align 4
  %374 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %375 = call i32 @bpf_map_get_next_key(i32 %373, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %374)
  %376 = icmp eq i32 %375, 0
  %377 = zext i1 %376 to i32
  %378 = call i32 @assert(i32 %377)
  %379 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %380 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp eq i32 %381, 24
  br i1 %382, label %383, label %404

383:                                              ; preds = %353
  %384 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %385 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 192
  br i1 %389, label %390, label %404

390:                                              ; preds = %383
  %391 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %392 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %391, i32 0, i32 1
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 168
  br i1 %396, label %397, label %404

397:                                              ; preds = %390
  %398 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %399 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 2
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 0
  br label %404

404:                                              ; preds = %397, %390, %383, %353
  %405 = phi i1 [ false, %390 ], [ false, %383 ], [ false, %353 ], [ %403, %397 ]
  %406 = zext i1 %405 to i32
  %407 = call i32 @assert(i32 %406)
  %408 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %409 = load i64, i64* %3, align 8
  %410 = call i32 @memset(%struct.bpf_lpm_trie_key* %408, i32 0, i64 %409)
  %411 = load i32, i32* %5, align 4
  %412 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %413 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %414 = call i32 @bpf_map_get_next_key(i32 %411, %struct.bpf_lpm_trie_key* %412, %struct.bpf_lpm_trie_key* %413)
  %415 = icmp eq i32 %414, 0
  %416 = zext i1 %415 to i32
  %417 = call i32 @assert(i32 %416)
  %418 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %419 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp eq i32 %420, 24
  br i1 %421, label %422, label %443

422:                                              ; preds = %404
  %423 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %424 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 192
  br i1 %428, label %429, label %443

429:                                              ; preds = %422
  %430 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %431 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = icmp eq i32 %434, 168
  br i1 %435, label %436, label %443

436:                                              ; preds = %429
  %437 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %438 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %437, i32 0, i32 1
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 2
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 1
  br label %443

443:                                              ; preds = %436, %429, %422, %404
  %444 = phi i1 [ false, %429 ], [ false, %422 ], [ false, %404 ], [ %442, %436 ]
  %445 = zext i1 %444 to i32
  %446 = call i32 @assert(i32 %445)
  %447 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %448 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %449 = load i64, i64* %3, align 8
  %450 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %447, %struct.bpf_lpm_trie_key* %448, i64 %449)
  %451 = load i32, i32* %5, align 4
  %452 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %453 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %454 = call i32 @bpf_map_get_next_key(i32 %451, %struct.bpf_lpm_trie_key* %452, %struct.bpf_lpm_trie_key* %453)
  %455 = icmp eq i32 %454, 0
  %456 = zext i1 %455 to i32
  %457 = call i32 @assert(i32 %456)
  %458 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %459 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = icmp eq i32 %460, 24
  br i1 %461, label %462, label %483

462:                                              ; preds = %443
  %463 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %464 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %463, i32 0, i32 1
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = icmp eq i32 %467, 192
  br i1 %468, label %469, label %483

469:                                              ; preds = %462
  %470 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %471 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 1
  %474 = load i32, i32* %473, align 4
  %475 = icmp eq i32 %474, 168
  br i1 %475, label %476, label %483

476:                                              ; preds = %469
  %477 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %478 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 2
  %481 = load i32, i32* %480, align 4
  %482 = icmp eq i32 %481, 128
  br label %483

483:                                              ; preds = %476, %469, %462, %443
  %484 = phi i1 [ false, %469 ], [ false, %462 ], [ false, %443 ], [ %482, %476 ]
  %485 = zext i1 %484 to i32
  %486 = call i32 @assert(i32 %485)
  %487 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %488 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %489 = load i64, i64* %3, align 8
  %490 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %487, %struct.bpf_lpm_trie_key* %488, i64 %489)
  %491 = load i32, i32* %5, align 4
  %492 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %493 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %494 = call i32 @bpf_map_get_next_key(i32 %491, %struct.bpf_lpm_trie_key* %492, %struct.bpf_lpm_trie_key* %493)
  %495 = icmp eq i32 %494, 0
  %496 = zext i1 %495 to i32
  %497 = call i32 @assert(i32 %496)
  %498 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %499 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = icmp eq i32 %500, 16
  br i1 %501, label %502, label %516

502:                                              ; preds = %483
  %503 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %504 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 0
  %507 = load i32, i32* %506, align 4
  %508 = icmp eq i32 %507, 192
  br i1 %508, label %509, label %516

509:                                              ; preds = %502
  %510 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %511 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %510, i32 0, i32 1
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 1
  %514 = load i32, i32* %513, align 4
  %515 = icmp eq i32 %514, 168
  br label %516

516:                                              ; preds = %509, %502, %483
  %517 = phi i1 [ false, %502 ], [ false, %483 ], [ %515, %509 ]
  %518 = zext i1 %517 to i32
  %519 = call i32 @assert(i32 %518)
  %520 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %521 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %522 = load i64, i64* %3, align 8
  %523 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %520, %struct.bpf_lpm_trie_key* %521, i64 %522)
  %524 = load i32, i32* %5, align 4
  %525 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %526 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %527 = call i32 @bpf_map_get_next_key(i32 %524, %struct.bpf_lpm_trie_key* %525, %struct.bpf_lpm_trie_key* %526)
  %528 = icmp eq i32 %527, -1
  br i1 %528, label %529, label %533

529:                                              ; preds = %516
  %530 = load i64, i64* @errno, align 8
  %531 = load i64, i64* @ENOENT, align 8
  %532 = icmp eq i64 %530, %531
  br label %533

533:                                              ; preds = %529, %516
  %534 = phi i1 [ false, %516 ], [ %532, %529 ]
  %535 = zext i1 %534 to i32
  %536 = call i32 @assert(i32 %535)
  %537 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %538 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %537, i32 0, i32 0
  store i32 28, i32* %538, align 8
  %539 = load i32, i32* @AF_INET, align 4
  %540 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %541 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %540, i32 0, i32 1
  %542 = load i32*, i32** %541, align 8
  %543 = call i32 @inet_pton(i32 %539, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %542)
  %544 = load i32, i32* %5, align 4
  %545 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %546 = call i64 @bpf_map_update_elem(i32 %544, %struct.bpf_lpm_trie_key* %545, i32* %4, i32 0)
  %547 = icmp eq i64 %546, 0
  %548 = zext i1 %547 to i32
  %549 = call i32 @assert(i32 %548)
  %550 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %551 = load i64, i64* %3, align 8
  %552 = call i32 @memset(%struct.bpf_lpm_trie_key* %550, i32 0, i64 %551)
  %553 = load i32, i32* %5, align 4
  %554 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %555 = call i32 @bpf_map_get_next_key(i32 %553, %struct.bpf_lpm_trie_key* null, %struct.bpf_lpm_trie_key* %554)
  %556 = icmp eq i32 %555, 0
  %557 = zext i1 %556 to i32
  %558 = call i32 @assert(i32 %557)
  %559 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %560 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = icmp eq i32 %561, 24
  br i1 %562, label %563, label %584

563:                                              ; preds = %533
  %564 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %565 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %564, i32 0, i32 1
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 192
  br i1 %569, label %570, label %584

570:                                              ; preds = %563
  %571 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %572 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %571, i32 0, i32 1
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 1
  %575 = load i32, i32* %574, align 4
  %576 = icmp eq i32 %575, 168
  br i1 %576, label %577, label %584

577:                                              ; preds = %570
  %578 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %579 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %578, i32 0, i32 1
  %580 = load i32*, i32** %579, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 2
  %582 = load i32, i32* %581, align 4
  %583 = icmp eq i32 %582, 0
  br label %584

584:                                              ; preds = %577, %570, %563, %533
  %585 = phi i1 [ false, %570 ], [ false, %563 ], [ false, %533 ], [ %583, %577 ]
  %586 = zext i1 %585 to i32
  %587 = call i32 @assert(i32 %586)
  %588 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %589 = load i64, i64* %3, align 8
  %590 = call i32 @memset(%struct.bpf_lpm_trie_key* %588, i32 0, i64 %589)
  %591 = load i32, i32* %5, align 4
  %592 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %593 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %594 = call i32 @bpf_map_get_next_key(i32 %591, %struct.bpf_lpm_trie_key* %592, %struct.bpf_lpm_trie_key* %593)
  %595 = icmp eq i32 %594, 0
  %596 = zext i1 %595 to i32
  %597 = call i32 @assert(i32 %596)
  %598 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %599 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = icmp eq i32 %600, 28
  br i1 %601, label %602, label %630

602:                                              ; preds = %584
  %603 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %604 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %603, i32 0, i32 1
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 0
  %607 = load i32, i32* %606, align 4
  %608 = icmp eq i32 %607, 192
  br i1 %608, label %609, label %630

609:                                              ; preds = %602
  %610 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %611 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %610, i32 0, i32 1
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 1
  %614 = load i32, i32* %613, align 4
  %615 = icmp eq i32 %614, 168
  br i1 %615, label %616, label %630

616:                                              ; preds = %609
  %617 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %618 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %617, i32 0, i32 1
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 2
  %621 = load i32, i32* %620, align 4
  %622 = icmp eq i32 %621, 1
  br i1 %622, label %623, label %630

623:                                              ; preds = %616
  %624 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %625 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %624, i32 0, i32 1
  %626 = load i32*, i32** %625, align 8
  %627 = getelementptr inbounds i32, i32* %626, i64 3
  %628 = load i32, i32* %627, align 4
  %629 = icmp eq i32 %628, 128
  br label %630

630:                                              ; preds = %623, %616, %609, %602, %584
  %631 = phi i1 [ false, %616 ], [ false, %609 ], [ false, %602 ], [ false, %584 ], [ %629, %623 ]
  %632 = zext i1 %631 to i32
  %633 = call i32 @assert(i32 %632)
  %634 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %635 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %636 = load i64, i64* %3, align 8
  %637 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %634, %struct.bpf_lpm_trie_key* %635, i64 %636)
  %638 = load i32, i32* %5, align 4
  %639 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %640 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %641 = call i32 @bpf_map_get_next_key(i32 %638, %struct.bpf_lpm_trie_key* %639, %struct.bpf_lpm_trie_key* %640)
  %642 = icmp eq i32 %641, 0
  %643 = zext i1 %642 to i32
  %644 = call i32 @assert(i32 %643)
  %645 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %646 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  %648 = icmp eq i32 %647, 24
  br i1 %648, label %649, label %670

649:                                              ; preds = %630
  %650 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %651 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %650, i32 0, i32 1
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 0
  %654 = load i32, i32* %653, align 4
  %655 = icmp eq i32 %654, 192
  br i1 %655, label %656, label %670

656:                                              ; preds = %649
  %657 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %658 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %657, i32 0, i32 1
  %659 = load i32*, i32** %658, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 1
  %661 = load i32, i32* %660, align 4
  %662 = icmp eq i32 %661, 168
  br i1 %662, label %663, label %670

663:                                              ; preds = %656
  %664 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %665 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %664, i32 0, i32 1
  %666 = load i32*, i32** %665, align 8
  %667 = getelementptr inbounds i32, i32* %666, i64 2
  %668 = load i32, i32* %667, align 4
  %669 = icmp eq i32 %668, 1
  br label %670

670:                                              ; preds = %663, %656, %649, %630
  %671 = phi i1 [ false, %656 ], [ false, %649 ], [ false, %630 ], [ %669, %663 ]
  %672 = zext i1 %671 to i32
  %673 = call i32 @assert(i32 %672)
  %674 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %675 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %676 = load i64, i64* %3, align 8
  %677 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %674, %struct.bpf_lpm_trie_key* %675, i64 %676)
  %678 = load i32, i32* %5, align 4
  %679 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %680 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %681 = call i32 @bpf_map_get_next_key(i32 %678, %struct.bpf_lpm_trie_key* %679, %struct.bpf_lpm_trie_key* %680)
  %682 = icmp eq i32 %681, 0
  %683 = zext i1 %682 to i32
  %684 = call i32 @assert(i32 %683)
  %685 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %686 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 8
  %688 = icmp eq i32 %687, 24
  br i1 %688, label %689, label %710

689:                                              ; preds = %670
  %690 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %691 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %690, i32 0, i32 1
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 0
  %694 = load i32, i32* %693, align 4
  %695 = icmp eq i32 %694, 192
  br i1 %695, label %696, label %710

696:                                              ; preds = %689
  %697 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %698 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %697, i32 0, i32 1
  %699 = load i32*, i32** %698, align 8
  %700 = getelementptr inbounds i32, i32* %699, i64 1
  %701 = load i32, i32* %700, align 4
  %702 = icmp eq i32 %701, 168
  br i1 %702, label %703, label %710

703:                                              ; preds = %696
  %704 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %705 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %704, i32 0, i32 1
  %706 = load i32*, i32** %705, align 8
  %707 = getelementptr inbounds i32, i32* %706, i64 2
  %708 = load i32, i32* %707, align 4
  %709 = icmp eq i32 %708, 128
  br label %710

710:                                              ; preds = %703, %696, %689, %670
  %711 = phi i1 [ false, %696 ], [ false, %689 ], [ false, %670 ], [ %709, %703 ]
  %712 = zext i1 %711 to i32
  %713 = call i32 @assert(i32 %712)
  %714 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %715 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %716 = load i64, i64* %3, align 8
  %717 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %714, %struct.bpf_lpm_trie_key* %715, i64 %716)
  %718 = load i32, i32* %5, align 4
  %719 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %720 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %721 = call i32 @bpf_map_get_next_key(i32 %718, %struct.bpf_lpm_trie_key* %719, %struct.bpf_lpm_trie_key* %720)
  %722 = icmp eq i32 %721, 0
  %723 = zext i1 %722 to i32
  %724 = call i32 @assert(i32 %723)
  %725 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %726 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 8
  %728 = icmp eq i32 %727, 16
  br i1 %728, label %729, label %743

729:                                              ; preds = %710
  %730 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %731 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %730, i32 0, i32 1
  %732 = load i32*, i32** %731, align 8
  %733 = getelementptr inbounds i32, i32* %732, i64 0
  %734 = load i32, i32* %733, align 4
  %735 = icmp eq i32 %734, 192
  br i1 %735, label %736, label %743

736:                                              ; preds = %729
  %737 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %738 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %737, i32 0, i32 1
  %739 = load i32*, i32** %738, align 8
  %740 = getelementptr inbounds i32, i32* %739, i64 1
  %741 = load i32, i32* %740, align 4
  %742 = icmp eq i32 %741, 168
  br label %743

743:                                              ; preds = %736, %729, %710
  %744 = phi i1 [ false, %729 ], [ false, %710 ], [ %742, %736 ]
  %745 = zext i1 %744 to i32
  %746 = call i32 @assert(i32 %745)
  %747 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %748 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %749 = load i64, i64* %3, align 8
  %750 = call i32 @memcpy(%struct.bpf_lpm_trie_key* %747, %struct.bpf_lpm_trie_key* %748, i64 %749)
  %751 = load i32, i32* %5, align 4
  %752 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %753 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %754 = call i32 @bpf_map_get_next_key(i32 %751, %struct.bpf_lpm_trie_key* %752, %struct.bpf_lpm_trie_key* %753)
  %755 = icmp eq i32 %754, -1
  br i1 %755, label %756, label %760

756:                                              ; preds = %743
  %757 = load i64, i64* @errno, align 8
  %758 = load i64, i64* @ENOENT, align 8
  %759 = icmp eq i64 %757, %758
  br label %760

760:                                              ; preds = %756, %743
  %761 = phi i1 [ false, %743 ], [ %759, %756 ]
  %762 = zext i1 %761 to i32
  %763 = call i32 @assert(i32 %762)
  %764 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %765 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %764, i32 0, i32 0
  store i32 22, i32* %765, align 8
  %766 = load i32, i32* @AF_INET, align 4
  %767 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %768 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %767, i32 0, i32 1
  %769 = load i32*, i32** %768, align 8
  %770 = call i32 @inet_pton(i32 %766, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %769)
  %771 = load i32, i32* %5, align 4
  %772 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %773 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %774 = call i32 @bpf_map_get_next_key(i32 %771, %struct.bpf_lpm_trie_key* %772, %struct.bpf_lpm_trie_key* %773)
  %775 = icmp eq i32 %774, 0
  %776 = zext i1 %775 to i32
  %777 = call i32 @assert(i32 %776)
  %778 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %779 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %778, i32 0, i32 0
  %780 = load i32, i32* %779, align 8
  %781 = icmp eq i32 %780, 24
  br i1 %781, label %782, label %803

782:                                              ; preds = %760
  %783 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %784 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %783, i32 0, i32 1
  %785 = load i32*, i32** %784, align 8
  %786 = getelementptr inbounds i32, i32* %785, i64 0
  %787 = load i32, i32* %786, align 4
  %788 = icmp eq i32 %787, 192
  br i1 %788, label %789, label %803

789:                                              ; preds = %782
  %790 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %791 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %790, i32 0, i32 1
  %792 = load i32*, i32** %791, align 8
  %793 = getelementptr inbounds i32, i32* %792, i64 1
  %794 = load i32, i32* %793, align 4
  %795 = icmp eq i32 %794, 168
  br i1 %795, label %796, label %803

796:                                              ; preds = %789
  %797 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %2, align 8
  %798 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %797, i32 0, i32 1
  %799 = load i32*, i32** %798, align 8
  %800 = getelementptr inbounds i32, i32* %799, i64 2
  %801 = load i32, i32* %800, align 4
  %802 = icmp eq i32 %801, 0
  br label %803

803:                                              ; preds = %796, %789, %782, %760
  %804 = phi i1 [ false, %789 ], [ false, %782 ], [ false, %760 ], [ %802, %796 ]
  %805 = zext i1 %804 to i32
  %806 = call i32 @assert(i32 %805)
  %807 = load i32, i32* %5, align 4
  %808 = call i32 @close(i32 %807)
  ret void
}

declare dso_local %struct.bpf_lpm_trie_key* @alloca(i64) #1

declare dso_local i32 @bpf_create_map(i32, i64, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_get_next_key(i32, %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key*) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i64 @bpf_map_update_elem(i32, %struct.bpf_lpm_trie_key*, i32*, i32) #1

declare dso_local i32 @memset(%struct.bpf_lpm_trie_key*, i32, i64) #1

declare dso_local i32 @memcpy(%struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
