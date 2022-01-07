; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@MAP_SHARED = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_4__* null, align 8
@p0 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MAX_NR_NODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MAP_SHARED, align 4
  %3 = call i64 @alloc_data(i32 168, i32 %2, i32 1, i32 0, i32 0, i32 0)
  %4 = inttoptr i64 %3 to i8*
  %5 = bitcast i8* %4 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** @g, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %8 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_3__* @p0 to i8*), i64 144, i1 false)
  %9 = call i32 (...) @numa_num_configured_cpus()
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 18
  store i32 %9, i32* %12, align 8
  %13 = call i64 (...) @numa_max_node()
  %14 = add nsw i64 %13, 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_NR_NODES, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br label %30

30:                                               ; preds = %24, %0
  %31 = phi i1 [ true, %0 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 17
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %39, %30
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 16
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 15
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 13
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i32 -1, i32* %1, align 4
  br label %264

68:                                               ; preds = %61, %55, %49
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 16
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 16
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @atof(i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i64 %80, i64* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  br label %91

91:                                               ; preds = %74, %68
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 15
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 15
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @atof(i64 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i64 %103, i64* %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @BUG_ON(i32 %112)
  br label %114

114:                                              ; preds = %97, %91
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 14
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %114
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 14
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @atof(i64 %124)
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @BUG_ON(i32 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %140, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @BUG_ON(i32 %146)
  br label %148

148:                                              ; preds = %120, %114
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 13
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 13
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @atof(i64 %158)
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 5
  store i64 %160, i64* %163, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp slt i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @BUG_ON(i32 %169)
  br label %171

171:                                              ; preds = %154, %148
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = icmp sle i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @BUG_ON(i32 %177)
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = icmp sle i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @BUG_ON(i32 %184)
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %189, %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 8
  store i32 %194, i32* %197, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = mul nsw i64 %201, 1024
  %203 = mul nsw i64 %202, 1024
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 9
  store i64 %203, i64* %206, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = mul nsw i64 %210, 1024
  %212 = mul nsw i64 %211, 1024
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 10
  store i64 %212, i64* %215, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = mul nsw i64 %219, 1024
  %221 = mul nsw i64 %220, 1024
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 11
  store i64 %221, i64* %224, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = mul nsw i64 %228, 1024
  %230 = mul nsw i64 %229, 1024
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 12
  store i64 %230, i64* %233, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 9
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @setup_shared_data(i64 %237)
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 3
  %243 = call i32 @init_global_mutex(i32* %242)
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 2
  %246 = call i32 @init_global_mutex(i32* %245)
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = call i32 @init_global_mutex(i32* %248)
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = call i32 @init_global_mutex(i32* %251)
  %253 = call i32 (...) @init_thread_data()
  %254 = call i32 @tprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %255 = call i64 (...) @parse_setup_cpu_list()
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %171
  %258 = call i64 (...) @parse_setup_node_list()
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %171
  store i32 -1, i32* %1, align 4
  br label %264

261:                                              ; preds = %257
  %262 = call i32 @tprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %263 = call i32 (...) @print_summary()
  store i32 0, i32* %1, align 4
  br label %264

264:                                              ; preds = %261, %260, %67
  %265 = load i32, i32* %1, align 4
  ret i32 %265
}

declare dso_local i64 @alloc_data(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @numa_num_configured_cpus(...) #1

declare dso_local i64 @numa_max_node(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @atof(i64) #1

declare dso_local i32 @setup_shared_data(i64) #1

declare dso_local i32 @init_global_mutex(i32*) #1

declare dso_local i32 @init_thread_data(...) #1

declare dso_local i32 @tprintf(i8*) #1

declare dso_local i64 @parse_setup_cpu_list(...) #1

declare dso_local i64 @parse_setup_node_list(...) #1

declare dso_local i32 @print_summary(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
