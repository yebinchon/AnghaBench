; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lpm_trie_key = type { i32, i32 }

@BPF_MAP_TYPE_LPM_TRIE = common dso_local global i32 0, align 4
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"192.168.0.0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"192.168.128.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"192.168.1.0\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"10.0.0.1\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"192.255.0.0\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"192.168.0.1\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"192.168.1.1\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"192.168.128.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_lpm_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lpm_delete() #0 {
  %1 = alloca %struct.bpf_lpm_trie_key*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 12, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.bpf_lpm_trie_key* @alloca(i64 %5)
  store %struct.bpf_lpm_trie_key* %6, %struct.bpf_lpm_trie_key** %1, align 8
  %7 = load i32, i32* @BPF_MAP_TYPE_LPM_TRIE, align 4
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %10 = call i32 @bpf_create_map(i32 %7, i64 %8, i32 4, i32 100, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i32 1, i32* %4, align 4
  %15 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %16 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %15, i32 0, i32 0
  store i32 16, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %19 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @inet_pton(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %24 = call i64 @bpf_map_update_elem(i32 %22, %struct.bpf_lpm_trie_key* %23, i32* %4, i32 0)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 2, i32* %4, align 4
  %28 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %29 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %28, i32 0, i32 0
  store i32 24, i32* %29, align 4
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %32 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @inet_pton(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %37 = call i64 @bpf_map_update_elem(i32 %35, %struct.bpf_lpm_trie_key* %36, i32* %4, i32 0)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  store i32 3, i32* %4, align 4
  %41 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %42 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %41, i32 0, i32 0
  store i32 24, i32* %42, align 4
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %45 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @inet_pton(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %50 = call i64 @bpf_map_update_elem(i32 %48, %struct.bpf_lpm_trie_key* %49, i32* %4, i32 0)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 4, i32* %4, align 4
  %54 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %55 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %54, i32 0, i32 0
  store i32 24, i32* %55, align 4
  %56 = load i32, i32* @AF_INET, align 4
  %57 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %58 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @inet_pton(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %63 = call i64 @bpf_map_update_elem(i32 %61, %struct.bpf_lpm_trie_key* %62, i32* %4, i32 0)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %68 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %67, i32 0, i32 0
  store i32 32, i32* %68, align 4
  %69 = load i32, i32* @AF_INET, align 4
  %70 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %71 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @inet_pton(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %76 = call i32 @bpf_map_lookup_elem(i32 %74, %struct.bpf_lpm_trie_key* %75, i32* %4)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %0
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @ENOENT, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %78, %0
  %83 = phi i1 [ false, %0 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %87 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %86, i32 0, i32 0
  store i32 30, i32* %87, align 4
  %88 = load i32, i32* @AF_INET, align 4
  %89 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %90 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @inet_pton(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %95 = call i32 @bpf_map_delete_elem(i32 %93, %struct.bpf_lpm_trie_key* %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @ENOENT, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %82
  %102 = phi i1 [ false, %82 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %106 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %105, i32 0, i32 0
  store i32 16, i32* %106, align 4
  %107 = load i32, i32* @AF_INET, align 4
  %108 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %109 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @inet_pton(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %114 = call i32 @bpf_map_delete_elem(i32 %112, %struct.bpf_lpm_trie_key* %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %101
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @ENOENT, align 8
  %119 = icmp eq i64 %117, %118
  br label %120

120:                                              ; preds = %116, %101
  %121 = phi i1 [ false, %101 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %125 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %124, i32 0, i32 0
  store i32 32, i32* %125, align 4
  %126 = load i32, i32* @AF_INET, align 4
  %127 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %128 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @inet_pton(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %133 = call i32 @bpf_map_lookup_elem(i32 %131, %struct.bpf_lpm_trie_key* %132, i32* %4)
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %142 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %141, i32 0, i32 0
  store i32 24, i32* %142, align 4
  %143 = load i32, i32* @AF_INET, align 4
  %144 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %145 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @inet_pton(i32 %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %3, align 4
  %149 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %150 = call i32 @bpf_map_delete_elem(i32 %148, %struct.bpf_lpm_trie_key* %149)
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %155 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %154, i32 0, i32 0
  store i32 32, i32* %155, align 4
  %156 = load i32, i32* @AF_INET, align 4
  %157 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %158 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @inet_pton(i32 %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %163 = call i32 @bpf_map_lookup_elem(i32 %161, %struct.bpf_lpm_trie_key* %162, i32* %4)
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %167, 1
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %172 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %171, i32 0, i32 0
  store i32 24, i32* %172, align 4
  %173 = load i32, i32* @AF_INET, align 4
  %174 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %175 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @inet_pton(i32 %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %3, align 4
  %179 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %180 = call i32 @bpf_map_delete_elem(i32 %178, %struct.bpf_lpm_trie_key* %179)
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %185 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %184, i32 0, i32 0
  store i32 32, i32* %185, align 4
  %186 = load i32, i32* @AF_INET, align 4
  %187 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %188 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @inet_pton(i32 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %193 = call i32 @bpf_map_lookup_elem(i32 %191, %struct.bpf_lpm_trie_key* %192, i32* %4)
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %4, align 4
  %198 = icmp eq i32 %197, 1
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %202 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %201, i32 0, i32 0
  store i32 16, i32* %202, align 4
  %203 = load i32, i32* @AF_INET, align 4
  %204 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %205 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @inet_pton(i32 %203, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %210 = call i32 @bpf_map_delete_elem(i32 %208, %struct.bpf_lpm_trie_key* %209)
  %211 = icmp eq i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %215 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %214, i32 0, i32 0
  store i32 32, i32* %215, align 4
  %216 = load i32, i32* @AF_INET, align 4
  %217 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %218 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @inet_pton(i32 %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %3, align 4
  %222 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %223 = call i32 @bpf_map_lookup_elem(i32 %221, %struct.bpf_lpm_trie_key* %222, i32* %4)
  %224 = icmp eq i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load i32, i32* %4, align 4
  %228 = icmp eq i32 %227, 3
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %232 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %231, i32 0, i32 0
  store i32 24, i32* %232, align 4
  %233 = load i32, i32* @AF_INET, align 4
  %234 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %235 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @inet_pton(i32 %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %3, align 4
  %239 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %240 = call i32 @bpf_map_delete_elem(i32 %238, %struct.bpf_lpm_trie_key* %239)
  %241 = icmp eq i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %245 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %244, i32 0, i32 0
  store i32 32, i32* %245, align 4
  %246 = load i32, i32* @AF_INET, align 4
  %247 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %248 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @inet_pton(i32 %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %3, align 4
  %252 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %253 = call i32 @bpf_map_lookup_elem(i32 %251, %struct.bpf_lpm_trie_key* %252, i32* %4)
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %259

255:                                              ; preds = %120
  %256 = load i64, i64* @errno, align 8
  %257 = load i64, i64* @ENOENT, align 8
  %258 = icmp eq i64 %256, %257
  br label %259

259:                                              ; preds = %255, %120
  %260 = phi i1 [ false, %120 ], [ %258, %255 ]
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load i32, i32* %3, align 4
  %264 = call i32 @close(i32 %263)
  ret void
}

declare dso_local %struct.bpf_lpm_trie_key* @alloca(i64) #1

declare dso_local i32 @bpf_create_map(i32, i64, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32) #1

declare dso_local i64 @bpf_map_update_elem(i32, %struct.bpf_lpm_trie_key*, i32*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, %struct.bpf_lpm_trie_key*, i32*) #1

declare dso_local i32 @bpf_map_delete_elem(i32, %struct.bpf_lpm_trie_key*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
