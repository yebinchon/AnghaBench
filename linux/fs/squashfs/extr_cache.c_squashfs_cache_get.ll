; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_cache_entry = type { i64, i64, i32, i64, i64, i32, i64, i32, i32 }
%struct.super_block = type { i32 }
%struct.squashfs_cache = type { i32, i32, i64, i32, i32, i32, %struct.squashfs_cache_entry*, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Got %s %d, start block %lld, refcount %d, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to read %s cache entry [%llx]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.squashfs_cache_entry* @squashfs_cache_get(%struct.super_block* %0, %struct.squashfs_cache* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.squashfs_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.squashfs_cache_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.squashfs_cache* %1, %struct.squashfs_cache** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %13 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %12, i32 0, i32 5
  %14 = call i32 @spin_lock(i32* %13)
  br label %15

15:                                               ; preds = %4, %61
  %16 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %17 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %47, %15
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %22 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %27 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %26, i32 0, i32 6
  %28 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %28, i64 %30
  %32 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %39 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %50

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %44 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %42, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %19

50:                                               ; preds = %36, %19
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %53 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %191

56:                                               ; preds = %50
  %57 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %58 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %63 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %67 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %66, i32 0, i32 5
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %70 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %73 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @wait_event(i32 %71, i32 %75)
  %77 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %78 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %77, i32 0, i32 5
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %81 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  br label %15

84:                                               ; preds = %56
  %85 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %86 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %112, %84
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %91 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %88
  %95 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %96 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %95, i32 0, i32 6
  %97 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %97, i64 %99
  %101 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %115

105:                                              ; preds = %94
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  %108 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %109 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = srem i32 %107, %110
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %88

115:                                              ; preds = %104, %88
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %119 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = srem i32 %117, %120
  %122 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %123 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %125 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %124, i32 0, i32 6
  %126 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %126, i64 %128
  store %struct.squashfs_cache_entry* %129, %struct.squashfs_cache_entry** %11, align 8
  %130 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %131 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %131, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %136 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %138 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %137, i32 0, i32 1
  store i64 1, i64* %138, align 8
  %139 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %140 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %142 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %141, i32 0, i32 6
  store i64 0, i64* %142, align 8
  %143 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %144 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %146 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %145, i32 0, i32 5
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load %struct.super_block*, %struct.super_block** %5, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %152 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %151, i32 0, i32 8
  %153 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %154 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @squashfs_read_data(%struct.super_block* %148, i64 %149, i32 %150, i32* %152, i32 %155)
  %157 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %158 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %157, i32 0, i32 4
  store i64 %156, i64* %158, align 8
  %159 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %160 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %159, i32 0, i32 5
  %161 = call i32 @spin_lock(i32* %160)
  %162 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %163 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %115
  %167 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %168 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %171 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %166, %115
  %173 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %174 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %173, i32 0, i32 2
  store i32 0, i32* %174, align 8
  %175 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %176 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %181 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %180, i32 0, i32 5
  %182 = call i32 @spin_unlock(i32* %181)
  %183 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %184 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %183, i32 0, i32 5
  %185 = call i32 @wake_up_all(i32* %184)
  br label %190

186:                                              ; preds = %172
  %187 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %188 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %187, i32 0, i32 5
  %189 = call i32 @spin_unlock(i32* %188)
  br label %190

190:                                              ; preds = %186, %179
  br label %239

191:                                              ; preds = %50
  %192 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %193 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %192, i32 0, i32 6
  %194 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %194, i64 %196
  store %struct.squashfs_cache_entry* %197, %struct.squashfs_cache_entry** %11, align 8
  %198 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %199 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %191
  %203 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %204 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, -1
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %202, %191
  %208 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %209 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %209, align 8
  %212 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %213 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %207
  %217 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %218 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %222 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %221, i32 0, i32 5
  %223 = call i32 @spin_unlock(i32* %222)
  %224 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %225 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %228 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i32 @wait_event(i32 %226, i32 %232)
  br label %238

234:                                              ; preds = %207
  %235 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %236 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %235, i32 0, i32 5
  %237 = call i32 @spin_unlock(i32* %236)
  br label %238

238:                                              ; preds = %234, %216
  br label %239

239:                                              ; preds = %238, %190
  %240 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %241 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %245 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %248 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %252 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %242, i32 %243, i64 %246, i32 %250, i64 %253)
  %255 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  %256 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %239
  %260 = load %struct.squashfs_cache*, %struct.squashfs_cache** %6, align 8
  %261 = getelementptr inbounds %struct.squashfs_cache, %struct.squashfs_cache* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load i64, i64* %7, align 8
  %264 = call i32 @ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %262, i64 %263)
  br label %265

265:                                              ; preds = %259, %239
  %266 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %11, align 8
  ret %struct.squashfs_cache_entry* %266
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @squashfs_read_data(%struct.super_block*, i64, i32, i32*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @ERROR(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
